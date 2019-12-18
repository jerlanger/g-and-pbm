view: sellable_aggs_totalpairs_by_date {
  derived_table: {
    sql: SELECT event_date, SUM(algorithm_count) pairs_count
      FROM no_id_logs.sellable_pairs_aggregates
      GROUP BY 1
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: event {
    type: time
    sql: DATE_PARSE(${TABLE}.event_date,'%Y%m%d') ;;
  }

  measure: pairs_count {
    type: sum
    sql: ${TABLE}.pairs_count ;;
  }

  set: detail {
    fields: [event_date, pairs_count]
  }
}
