view: partner_inbound_syncs_detailed {
  derived_table: {
    sql: SELECT * FROM auto_reports.detailed_daily_partner_inbound_sync_aggregates
    WHERE LENGTH(publisherorappid) = 5;;
    }
  suggestions: no

  # Standard Dimensions #

  dimension: date {
    type: date
    sql: date_parse(${TABLE}.date,'%Y%m%d') ;;
  }

  dimension: publisherorappid {
    type: string
    sql: ${TABLE}.publisherorappid ;;
  }

  dimension: bidderuuid {
    type: string
    sql: ${TABLE}.bidderuuid ;;
  }

  dimension: lidid {
    type: string
    sql: ${TABLE}.lidid ;;
  }

  dimension: region {
    type: string
    sql:  ${TABLE}.region ;;
  }

  # Measures #

  measure: count {
    type: sum
    sql: ${TABLE}.count;;
    value_format_name: decimal_0
  }

}
