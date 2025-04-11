# Import required libraries
import pandas as pd
from dash import Dash, dcc, html, Input, Output
import plotly.express as px

# Read the automobile dataset
data = pd.read_csv(
    "https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/historical_automobile_sales.csv"
)

# Initialize Dash app
app = Dash(__name__)
server = app.server  # For deployment if needed

# App layout
app.layout = html.Div(children=[
    html.H1("Automobile Sales Statistics Dashboard",
            style={'textAlign': 'center', 'color': '#503D36', 'font-size': 24}),

    # Dropdowns
    html.Div([
        html.Label("Select Report Type:"),
        dcc.Dropdown(
            id='dropdown-statistics',
            options=[
                {'label': 'Yearly Statistics', 'value': 'Yearly'},
                {'label': 'Recession Period Statistics', 'value': 'Recession'}
            ],
            value='Yearly',
            style={'width': '50%', 'fontSize': 18}
        )
    ], style={'padding': 10}),

    html.Div([
        html.Label("Select Year:"),
        dcc.Dropdown(
            id='select-year',
            options=[{'label': str(year), 'value': year} for year in sorted(data['Year'].unique())],
            value=2010,
            style={'width': '50%', 'fontSize': 18}
        )
    ], style={'padding': 10}),

    # Graph container
    html.Div(id='output-container', className='chart-grid', style={'display': 'flex', 'flexWrap': 'wrap'})
])

# Callback to disable/enable year dropdown
@app.callback(
    Output('select-year', 'disabled'),
    Input('dropdown-statistics', 'value')
)
def toggle_year_dropdown(report_type):
    return report_type == 'Recession'

# Main callback to update graphs
@app.callback(
    Output('output-container', 'children'),
    Input('dropdown-statistics', 'value'),
    Input('select-year', 'value')
)
def update_dashboard(report_type, selected_year):
    charts = []

    if report_type == 'Yearly':
        df_year = data[data['Year'] == int(selected_year)]

        # 1. Average sales by year
        yearly_avg = data.groupby('Year')['Automobile_Sales'].mean().reset_index()
        fig1 = px.line(yearly_avg, x='Year', y='Automobile_Sales', title='Average Automobile Sales by Year')

        # 2. Total monthly sales for selected year
        monthly_sales = df_year.groupby('Month')['Automobile_Sales'].sum().reset_index()
        fig2 = px.line(monthly_sales, x='Month', y='Automobile_Sales', title=f'Monthly Sales in {selected_year}')

        # 3. Average vehicle sales by type for selected year
        type_sales = df_year.groupby('Vehicle_Type')['Automobile_Sales'].mean().reset_index()
        fig3 = px.bar(type_sales, x='Vehicle_Type', y='Automobile_Sales',
                      title=f'Average Sales by Vehicle Type in {selected_year}')

        # 4. Total ad spend by vehicle type
        ad_spend = df_year.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
        fig4 = px.pie(ad_spend, names='Vehicle_Type', values='Advertising_Expenditure',
                      title='Ad Expenditure by Vehicle Type')

    else:
        df_recession = data[data['Recession'] == 1]

        # 1. Average sales by year during recession
        avg_sales = df_recession.groupby('Year')['Automobile_Sales'].mean().reset_index()
        fig1 = px.line(avg_sales, x='Year', y='Automobile_Sales',
                       title='Average Automobile Sales During Recession')

        # 2. Avg sales by vehicle type
        vehicle_avg = df_recession.groupby('Vehicle_Type')['Automobile_Sales'].mean().reset_index()
        fig2 = px.bar(vehicle_avg, x='Vehicle_Type', y='Automobile_Sales',
                      title='Average Sales by Vehicle Type During Recession')

        # 3. Total ad spend by vehicle type during recession
        ad_exp = df_recession.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
        fig3 = px.pie(ad_exp, names='Vehicle_Type', values='Advertising_Expenditure',
                      title='Ad Expenditure During Recession')

        # 4. Unemployment vs sales
        fig4 = px.bar(df_recession, x='unemployment_rate', y='Automobile_Sales', color='Vehicle_Type',
                      title='Unemployment Rate vs Automobile Sales')

    # Package all figures into chart layout
    for fig in [fig1, fig2, fig3, fig4]:
        charts.append(html.Div(dcc.Graph(figure=fig), style={'width': '50%'}))

    return charts

# Run app
if __name__ == '__main__':
    app.run(debug=True)
