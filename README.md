# forecasting-timeseries-demand  
The objective of this project is to explore and propose various alternatives for the inclusion of a new supplier for the transportation of refrigerators from the production plant to the distribution center that serves different points in the region.

To achieve this, various demand forecasting tools will be utilized to determine the best (most cost-effective) alternative. Additionally, it will indicate the quantity of trucks required for each quarter to transport the refrigerators throughout the duration of the contract year. The maximum and minimum quantity of trucks required for each quarter will also be specified since the difference between these values can provide qualitative insights into transportation costs (greater difference implies higher costs).

The analysis will commence with monthly data on refrigerator demand starting from March 2018. This time series will be aggregated and disaggregated to ensure consistency of information across various decision levels.

The analysis employs the following exponential smoothing methods:
- Simple Exponential Smoothing
- Additive Holt-Winters
- Multiplicative Holt-Winters

Subsequently, forecast intervals are compared, and an examination is conducted to determine the most convenient way to group months into quarters. This decision depends on whether seasonality should be retained or not. Ultimately, the option to eliminate seasonality is chosen, as it represents an advantage for the supplier, allowing for consistent service planning across all quarters.
