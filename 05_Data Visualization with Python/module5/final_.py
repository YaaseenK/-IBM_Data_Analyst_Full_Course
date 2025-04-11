# Import required libraries
import pandas as pd
from dash import Dash, dcc, html, Input, Output
import plotly.express as px

# Load the dataset
data = pd.read_csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DV0101EN-SkillsNetwork/Data%20Files/historical_automobile_sales.csv') 

# Create the Dash app
app = Dash(__name__)

# App layout
app.layout = html.Div(children=[
    html.H1('Automobile Sales Dashboard', style={'textAlign': 'center', 'color': '#503D36', 'font-size': 30}),
    
    html.Div([
        html.Label("Select Year:"),
        dcc.Input(id='input-year', value=2010, type='number', style={'fontSize': 22})
    ], style={'padding': 20}),
    
    html.Div([
        dcc.Graph(id='yearly-sales-chart'),
        dcc.Graph(id='monthly-sales-chart'),
    ], style={'display': 'flex'}),
    
    html.Div([
        dcc.Graph(id='vehicle-type-bar-chart'),
        dcc.Graph(id='advertising-pie-chart'),
    ], style={'display': 'flex'})
])

# Callback to update all charts
@app.callback(
    Output('yearly-sales-chart', 'figure'),
    Output('monthly-sales-chart', 'figure'),
    Output('vehicle-type-bar-chart', 'figure'),
    Output('advertising-pie-chart', 'figure'),
    Input('input-year', 'value')
)
def update_charts(input_year):
    yearly_data = data[data['Year'] == int(input_year)]

    # Plot 1: Yearly average automobile sales
    years_data = data.groupby('Year')['Automobile_Sales'].mean().reset_index()
    chart1 = px.line(years_data, x='Year', y='Automobile_Sales', title='Average Automobile Sales by Year')

    # Plot 2: Total monthly automobile sales for selected year
    months_data = yearly_data.groupby('Month')['Automobile_Sales'].sum().reset_index()
    chart2 = px.line(months_data, x='Month', y='Automobile_Sales', title='Total Monthly Automobile Sales')

    # Plot 3: Average automobile sales by vehicle type in selected year
    type_data = yearly_data.groupby('Vehicle_Type')['Automobile_Sales'].mean().reset_index()
    chart3 = px.bar(type_data, x='Vehicle_Type', y='Automobile_Sales',
                    title=f'Average Vehicles Sold by Vehicle Type in {input_year}')

    # Plot 4: Total advertisement expenditure by vehicle type
    exp_data = yearly_data.groupby('Vehicle_Type')['Advertising_Expenditure'].sum().reset_index()
    chart4 = px.pie(exp_data, names='Vehicle_Type', values='Advertising_Expenditure',
                    title='Total Advertisement Expenditure by Vehicle Type')

    return chart1, chart2, chart3, chart4

# Run the app
if __name__ == '__main__':
    app.run(debug=True)
