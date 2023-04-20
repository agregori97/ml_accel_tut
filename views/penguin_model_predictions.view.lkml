# The name of this view in Looker is "Penguin Model Predictions"
view: penguin_model_predictions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-dcl-data.vsdstdoct13.Penguin_Model_predictions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Penguins Body Mass" in Explore.

  dimension: penguins_body_mass {
    type: number
    sql: ${TABLE}.penguins_body_mass ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_penguins_body_mass {
    type: sum
    sql: ${penguins_body_mass} ;;
  }

  measure: average_penguins_body_mass {
    type: average
    sql: ${penguins_body_mass} ;;
  }

  dimension: penguins_culmen_depth {
    type: number
    sql: ${TABLE}.penguins_culmen_depth ;;
  }

  dimension: penguins_culmen_length {
    type: number
    sql: ${TABLE}.penguins_culmen_length ;;
  }

  dimension: penguins_flipper_length {
    type: number
    sql: ${TABLE}.penguins_flipper_length ;;
  }

  dimension: penguins_island {
    type: string
    sql: ${TABLE}.penguins_island ;;
  }

  dimension: penguins_sex {
    type: string
    sql: ${TABLE}.penguins_sex ;;
  }

  dimension: penguins_species {
    type: string
    sql: ${TABLE}.penguins_species ;;
  }

  dimension: predicted_penguins_body_mass {
    type: number
    sql: ${TABLE}.predicted_penguins_body_mass ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
