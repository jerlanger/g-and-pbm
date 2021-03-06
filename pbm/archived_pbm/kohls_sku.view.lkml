view: kohls_sku {
  sql_table_name: "default".kohls_sku
    ;;
  suggestions: no

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension_group: conversion_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.conv_timestamp ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }

  dimension_group: lc_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lc_timestamp ;;
    label: "LC Timestamp"
  }

  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }

  dimension: md5 {
    type: string
    sql: ${TABLE}.md5 ;;
    label: "MD5"
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
