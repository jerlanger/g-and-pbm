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
    link: {
      label: "Partner Syncs Explorer"
      url: "/dashboards-next/746?PublisherorAppID={{ value | url_encode }} "
    }
  }

  dimension: bidderuuid {
    type: string
    sql: ${TABLE}.bidderuuid ;;
    link: {
      label: "Partner Syncs Explorer"
      url: "/dashboards-next/746?BidderUUID={{ value | url_encode }} "
    }
  }

  dimension: lidid {
    type: string
    sql: ${TABLE}.lidid ;;
    link: {
      label: "Partner Syncs Explorer"
      url: "/dashboards-next/746?LIDID={{ value | url_encode }} "
    }
  }

  dimension: region {
    type: string
    sql:  ${TABLE}.region ;;
  }

  # Extra Dimensions #

  dimension: valid_bidderuuid {
    type: yesno
    sql: ${TABLE}.bidderuuid IS NOT NULL AND ${TABLE}.bidderuuid <> '';;
  }

  dimension: valid_lidid {
    type: yesno
    sql: ${TABLE}.lidid IS NOT NULL AND ${TABLE}.lidid <> '';;
  }


  # Measures #

  measure: count {
    type: sum
    sql: ${TABLE}.count;;
    value_format_name: decimal_0
  }

}
