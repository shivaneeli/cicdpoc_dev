- dashboard: customer_lifetime_value
  title: Customer Lifetime Value
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - name: User Distribution by Orders
    title: User Distribution by Orders
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [customer_life_time_value.user_count, customer_life_time_value.order_tier]
    fill_fields: [customer_life_time_value.order_tier]
    sorts: [customer_life_time_value.order_tier]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Average Customer Spend
    name: Average Customer Spend
    model: Sample_Usecases
    explore: order_items
    type: single_value
    fields: [customer_life_time_value.average_lifetime_revenue]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#.##"
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Customer Distribution by Revenue
    name: Customer Distribution by Revenue
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [customer_life_time_value.lifetime_revenue_tier, customer_life_time_value.user_count]
    fill_fields: [customer_life_time_value.lifetime_revenue_tier]
    sorts: [customer_life_time_value.lifetime_revenue_tier]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Monthly Revenue by Customer Groupings
    name: Monthly Revenue by Customer Groupings
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.age_group, order_items.created_month, order_items.total_gross_revenue]
    pivots: [users.age_group]
    fill_fields: [order_items.created_month, users.age_group]
    filters:
      order_items.created_year: 1 years ago for 1 years
    sorts: [users.age_group, order_items.created_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Customers by States
    name: Customers by States
    model: Sample_Usecases
    explore: order_items
    type: looker_wordcloud
    fields: [order_items.order_count, users.state]
    filters:
      users.created_month: 1 months
    sorts: [order_items.order_count desc]
    limit: 500
    color_application: undefined
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    map_latitude: 52.22610389683876
    map_longitude: -118.0594038963318
    map_zoom: 2
    map: auto
    map_projection: ''
    quantize_colors: false
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Product Categories for Repeat Customers
    name: Product Categories for Repeat Customers
    model: Sample_Usecases
    explore: order_items
    type: looker_grid
    fields: [customer_life_time_value.user_count, inventory_items.product_category]
    filters:
      customer_life_time_value.is_repeat: 'Yes'
    sorts: [customer_life_time_value.user_count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Product Brands for onetime customers
    name: Product Brands for onetime customers
    model: Sample_Usecases
    explore: order_items
    type: looker_grid
    fields: [customer_life_time_value.user_count, inventory_items.product_brand]
    filters:
      customer_life_time_value.is_repeat: 'No'
    sorts: [customer_life_time_value.user_count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Categories for Low repeat purchasers
    name: Categories for Low repeat purchasers
    model: Sample_Usecases
    explore: order_items
    type: looker_grid
    fields: [inventory_items.product_category, customer_life_time_value.user_count]
    filters:
      customer_life_time_value.is_repeat: 'Yes'
      customer_life_time_value.user_count: ''
    sorts: [customer_life_time_value.user_count]
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - title: Brands for Low repeat purchasers
    name: Brands for Low repeat purchasers
    model: Sample_Usecases
    explore: order_items
    type: looker_grid
    fields: [customer_life_time_value.user_count, inventory_items.product_brand]
    filters:
      customer_life_time_value.is_repeat: 'Yes'
      customer_life_time_value.user_count: ''
    sorts: [customer_life_time_value.user_count]
    limit: 1000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 12
    col: 16
    width: 8
    height: 6
  - title: Revenue % by Customer Signup Duration
    name: Revenue % by Customer Signup Duration
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.years_since_signup, order_items.total_gross_revenue]
    filters:
      order_items.created_month: 1 months
    sorts: [order_items.total_gross_revenue desc]
    limit: 500
    dynamic_fields: [{table_calculation: revenue, label: Revenue %, expression: "${order_items.total_gross_revenue}/sum(${order_items.total_gross_revenue})",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    series_types: {}
    hidden_fields: [order_items.total_gross_revenue]
    row: 18
    col: 0
    width: 8
    height: 6
  - title: "# of signups over time"
    name: "# of signups over time"
    model: Sample_Usecases
    explore: order_items
    type: looker_line
    fields: [users.created_month, users.count]
    fill_fields: [users.created_month]
    sorts: [users.created_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    row: 18
    col: 8
    width: 8
    height: 6
  - title: Velue of User Signup Over time
    name: Velue of User Signup Over time
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.months_since_signup, order_items.average_spend_per_customer]
    filters:
      users.months_since_signup: "<=12"
    sorts: [users.months_since_signup desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    series_types: {}
    row: 18
    col: 16
    width: 8
    height: 6
  - title: User Value Current Vs Last Year
    name: User Value Current Vs Last Year
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.months_since_signup, order_items.total_gross_revenue]
    filters:
      users.months_since_signup: "<=12"
    sorts: [users.months_since_signup desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    defaults_version: 1
    series_types: {}
    row: 24
    col: 0
    width: 8
    height: 6
  - title: New Customers by Traffic Over time
    name: New Customers by Traffic Over time
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.created_month, users.traffic_source, users.count]
    pivots: [users.traffic_source]
    fill_fields: [users.created_month]
    sorts: [users.traffic_source 0, users.created_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: user_count, label: User Count%, expression: "${users.count}\
          \ /sum(pivot_row(${users.count}))", value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [users.count]
    row: 24
    col: 8
    width: 8
    height: 6
  - title: New Customers by Traffic Over time
    name: New Customers by Traffic Over time (2)
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.traffic_source, users.count, users.created_year]
    pivots: [users.traffic_source]
    fill_fields: [users.created_year]
    sorts: [users.traffic_source 0, users.created_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: user_count, label: User Count%, expression: "${users.count}\
          \ /sum(pivot_row(${users.count}))", value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [users.count]
    row: 24
    col: 16
    width: 8
    height: 6
  - title: Past Customers % who are still purchasing
    name: Past Customers % who are still purchasing
    model: Sample_Usecases
    explore: order_items
    type: looker_column
    fields: [users.count, users.months_since_joined, usercounts_by_signup_duration.user_count]
    filters:
      order_items.created_month: 3 months
    sorts: [users.months_since_joined desc]
    limit: 500
    dynamic_fields: [{table_calculation: of_users, label: "% of users", expression: "${users.count}/${usercounts_by_signup_duration.user_count}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [users.count]
    row: 30
    col: 0
    width: 8
    height: 6
