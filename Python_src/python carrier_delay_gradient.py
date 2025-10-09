# Select top 10 carriers by delay rate for visualization
top_carriers = carrier_delays.head(10)
# Create a bar chart
plt.figure(figsize=(9, 6))
colors = [
    '#002147', 
    '#133466',
    '#264785',
    '#395AA4',
    '#4C6CC3',
    '#5F7EE2',
    '#7290FF',
    '#85A2FF',
    '#98B4FF',
    '#ABC6FF'  
]
top_carriers.plot(kind='bar', color= colors, label='Delay Rate (Darker = Higher)')
plt.title('Average Delay Rate by Airline (Top 10)', fontsize=16, fontweight='bold')
plt.xlabel('Airline', fontsize=12, fontweight='bold')
plt.ylabel('Proportion of Delayed Flights (≥15 min)', fontsize=12, fontweight='bold')
plt.xticks(rotation=45, ha='right', fontsize=11)
# Add overall average delay line
overall_avg_delay = fd['delay_rate'].mean()
plt.axhline(y=overall_avg_delay, color='red', linestyle='--', label='Overall Average Delay')
# Add text annotation for the average delay
plt.text(x=4.3, y=overall_avg_delay + 0.01, s=f'Avg: {overall_avg_delay:.2f}', 
         color='red', fontsize=9, fontweight='bold', 
         bbox=dict(facecolor='white', alpha=0.8, edgecolor='red'))
# Add delay rate values above each bar
for i, value in enumerate(top_carriers):
    plt.text(i, value + 0.013, f'{value:.2f}', ha='center', fontsize=10, color='black')
    
plt.legend()
plt.margins(x=0.3, y=0.1) 
plt.tight_layout()  
plt.savefig('/Users/user/Documents/projects/Airline Delays/airline_delays/carrier_delays.png', dpi=300, bbox_inches='tight')
plt.show()