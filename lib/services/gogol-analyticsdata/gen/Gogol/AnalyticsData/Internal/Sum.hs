{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AnalyticsData.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AnalyticsData.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ActiveMetricRestriction_RestrictedMetricTypesItem
    ActiveMetricRestriction_RestrictedMetricTypesItem
      (
        ActiveMetricRestriction_RestrictedMetricTypesItem_RESTRICTEDMETRICTYPEUNSPECIFIED,
        ActiveMetricRestriction_RestrictedMetricTypesItem_COSTDATA,
        ActiveMetricRestriction_RestrictedMetricTypesItem_REVENUEDATA,
        ..
      ),

    -- * CheckCompatibilityRequest_CompatibilityFilter
    CheckCompatibilityRequest_CompatibilityFilter
      (
        CheckCompatibilityRequest_CompatibilityFilter_COMPATIBILITYUNSPECIFIED,
        CheckCompatibilityRequest_CompatibilityFilter_Compatible,
        CheckCompatibilityRequest_CompatibilityFilter_Incompatible,
        ..
      ),

    -- * CohortsRange_Granularity
    CohortsRange_Granularity
      (
        CohortsRange_Granularity_GRANULARITYUNSPECIFIED,
        CohortsRange_Granularity_Daily,
        CohortsRange_Granularity_Weekly,
        CohortsRange_Granularity_Monthly,
        ..
      ),

    -- * DimensionCompatibility_Compatibility
    DimensionCompatibility_Compatibility
      (
        DimensionCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED,
        DimensionCompatibility_Compatibility_Compatible,
        DimensionCompatibility_Compatibility_Incompatible,
        ..
      ),

    -- * DimensionOrderBy_OrderType
    DimensionOrderBy_OrderType
      (
        DimensionOrderBy_OrderType_ORDERTYPEUNSPECIFIED,
        DimensionOrderBy_OrderType_Alphanumeric,
        DimensionOrderBy_OrderType_CASEINSENSITIVEALPHANUMERIC,
        DimensionOrderBy_OrderType_Numeric,
        ..
      ),

    -- * MetricCompatibility_Compatibility
    MetricCompatibility_Compatibility
      (
        MetricCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED,
        MetricCompatibility_Compatibility_Compatible,
        MetricCompatibility_Compatibility_Incompatible,
        ..
      ),

    -- * MetricHeader_Type
    MetricHeader_Type
      (
        MetricHeader_Type_METRICTYPEUNSPECIFIED,
        MetricHeader_Type_TYPEINTEGER,
        MetricHeader_Type_TYPEFLOAT,
        MetricHeader_Type_TYPESECONDS,
        MetricHeader_Type_TYPEMILLISECONDS,
        MetricHeader_Type_TYPEMINUTES,
        MetricHeader_Type_TYPEHOURS,
        MetricHeader_Type_TYPESTANDARD,
        MetricHeader_Type_TYPECURRENCY,
        MetricHeader_Type_TYPEFEET,
        MetricHeader_Type_TYPEMILES,
        MetricHeader_Type_TYPEMETERS,
        MetricHeader_Type_TYPEKILOMETERS,
        ..
      ),

    -- * MetricMetadata_BlockedReasonsItem
    MetricMetadata_BlockedReasonsItem
      (
        MetricMetadata_BlockedReasonsItem_BLOCKEDREASONUNSPECIFIED,
        MetricMetadata_BlockedReasonsItem_NOREVENUEMETRICS,
        MetricMetadata_BlockedReasonsItem_NOCOSTMETRICS,
        ..
      ),

    -- * MetricMetadata_Type
    MetricMetadata_Type
      (
        MetricMetadata_Type_METRICTYPEUNSPECIFIED,
        MetricMetadata_Type_TYPEINTEGER,
        MetricMetadata_Type_TYPEFLOAT,
        MetricMetadata_Type_TYPESECONDS,
        MetricMetadata_Type_TYPEMILLISECONDS,
        MetricMetadata_Type_TYPEMINUTES,
        MetricMetadata_Type_TYPEHOURS,
        MetricMetadata_Type_TYPESTANDARD,
        MetricMetadata_Type_TYPECURRENCY,
        MetricMetadata_Type_TYPEFEET,
        MetricMetadata_Type_TYPEMILES,
        MetricMetadata_Type_TYPEMETERS,
        MetricMetadata_Type_TYPEKILOMETERS,
        ..
      ),

    -- * NumericFilter_Operation
    NumericFilter_Operation
      (
        NumericFilter_Operation_OPERATIONUNSPECIFIED,
        NumericFilter_Operation_Equal,
        NumericFilter_Operation_LESSTHAN,
        NumericFilter_Operation_LESSTHANOREQUAL,
        NumericFilter_Operation_GREATERTHAN,
        NumericFilter_Operation_GREATERTHANOREQUAL,
        ..
      ),

    -- * Pivot_MetricAggregationsItem
    Pivot_MetricAggregationsItem
      (
        Pivot_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED,
        Pivot_MetricAggregationsItem_Total,
        Pivot_MetricAggregationsItem_Minimum,
        Pivot_MetricAggregationsItem_Maximum,
        Pivot_MetricAggregationsItem_Count,
        ..
      ),

    -- * RunRealtimeReportRequest_MetricAggregationsItem
    RunRealtimeReportRequest_MetricAggregationsItem
      (
        RunRealtimeReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED,
        RunRealtimeReportRequest_MetricAggregationsItem_Total,
        RunRealtimeReportRequest_MetricAggregationsItem_Minimum,
        RunRealtimeReportRequest_MetricAggregationsItem_Maximum,
        RunRealtimeReportRequest_MetricAggregationsItem_Count,
        ..
      ),

    -- * RunReportRequest_MetricAggregationsItem
    RunReportRequest_MetricAggregationsItem
      (
        RunReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED,
        RunReportRequest_MetricAggregationsItem_Total,
        RunReportRequest_MetricAggregationsItem_Minimum,
        RunReportRequest_MetricAggregationsItem_Maximum,
        RunReportRequest_MetricAggregationsItem_Count,
        ..
      ),

    -- * StringFilter_MatchType
    StringFilter_MatchType
      (
        StringFilter_MatchType_MATCHTYPEUNSPECIFIED,
        StringFilter_MatchType_Exact,
        StringFilter_MatchType_BEGINSWITH,
        StringFilter_MatchType_ENDSWITH,
        StringFilter_MatchType_Contains,
        StringFilter_MatchType_FULLREGEXP,
        StringFilter_MatchType_PARTIALREGEXP,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

newtype ActiveMetricRestriction_RestrictedMetricTypesItem = ActiveMetricRestriction_RestrictedMetricTypesItem { fromActiveMetricRestriction_RestrictedMetricTypesItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified type.
pattern ActiveMetricRestriction_RestrictedMetricTypesItem_RESTRICTEDMETRICTYPEUNSPECIFIED :: ActiveMetricRestriction_RestrictedMetricTypesItem
pattern ActiveMetricRestriction_RestrictedMetricTypesItem_RESTRICTEDMETRICTYPEUNSPECIFIED = ActiveMetricRestriction_RestrictedMetricTypesItem "RESTRICTED_METRIC_TYPE_UNSPECIFIED"

-- | Cost metrics such as @adCost@.
pattern ActiveMetricRestriction_RestrictedMetricTypesItem_COSTDATA :: ActiveMetricRestriction_RestrictedMetricTypesItem
pattern ActiveMetricRestriction_RestrictedMetricTypesItem_COSTDATA = ActiveMetricRestriction_RestrictedMetricTypesItem "COST_DATA"

-- | Revenue metrics such as @purchaseRevenue@.
pattern ActiveMetricRestriction_RestrictedMetricTypesItem_REVENUEDATA :: ActiveMetricRestriction_RestrictedMetricTypesItem
pattern ActiveMetricRestriction_RestrictedMetricTypesItem_REVENUEDATA = ActiveMetricRestriction_RestrictedMetricTypesItem "REVENUE_DATA"

{-# COMPLETE
  ActiveMetricRestriction_RestrictedMetricTypesItem_RESTRICTEDMETRICTYPEUNSPECIFIED,
  ActiveMetricRestriction_RestrictedMetricTypesItem_COSTDATA,
  ActiveMetricRestriction_RestrictedMetricTypesItem_REVENUEDATA,
  ActiveMetricRestriction_RestrictedMetricTypesItem #-}

-- | Filters the dimensions and metrics in the response to just this compatibility. Commonly used as @”compatibilityFilter”: “COMPATIBLE”@ to only return compatible dimensions & metrics.
newtype CheckCompatibilityRequest_CompatibilityFilter = CheckCompatibilityRequest_CompatibilityFilter { fromCheckCompatibilityRequest_CompatibilityFilter :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified compatibility.
pattern CheckCompatibilityRequest_CompatibilityFilter_COMPATIBILITYUNSPECIFIED :: CheckCompatibilityRequest_CompatibilityFilter
pattern CheckCompatibilityRequest_CompatibilityFilter_COMPATIBILITYUNSPECIFIED = CheckCompatibilityRequest_CompatibilityFilter "COMPATIBILITY_UNSPECIFIED"

-- | The dimension or metric is compatible. This dimension or metric can be successfully added to a report.
pattern CheckCompatibilityRequest_CompatibilityFilter_Compatible :: CheckCompatibilityRequest_CompatibilityFilter
pattern CheckCompatibilityRequest_CompatibilityFilter_Compatible = CheckCompatibilityRequest_CompatibilityFilter "COMPATIBLE"

-- | The dimension or metric is incompatible. This dimension or metric cannot be successfully added to a report.
pattern CheckCompatibilityRequest_CompatibilityFilter_Incompatible :: CheckCompatibilityRequest_CompatibilityFilter
pattern CheckCompatibilityRequest_CompatibilityFilter_Incompatible = CheckCompatibilityRequest_CompatibilityFilter "INCOMPATIBLE"

{-# COMPLETE
  CheckCompatibilityRequest_CompatibilityFilter_COMPATIBILITYUNSPECIFIED,
  CheckCompatibilityRequest_CompatibilityFilter_Compatible,
  CheckCompatibilityRequest_CompatibilityFilter_Incompatible,
  CheckCompatibilityRequest_CompatibilityFilter #-}

-- | Required. The granularity used to interpret the @startOffset@ and @endOffset@ for the extended reporting date range for a cohort report.
newtype CohortsRange_Granularity = CohortsRange_Granularity { fromCohortsRange_Granularity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should never be specified.
pattern CohortsRange_Granularity_GRANULARITYUNSPECIFIED :: CohortsRange_Granularity
pattern CohortsRange_Granularity_GRANULARITYUNSPECIFIED = CohortsRange_Granularity "GRANULARITY_UNSPECIFIED"

-- | Daily granularity. Commonly used if the cohort\'s @dateRange@ is a single day and the request contains @cohortNthDay@.
pattern CohortsRange_Granularity_Daily :: CohortsRange_Granularity
pattern CohortsRange_Granularity_Daily = CohortsRange_Granularity "DAILY"

-- | Weekly granularity. Commonly used if the cohort\'s @dateRange@ is a week in duration (starting on Sunday and ending on Saturday) and the request contains @cohortNthWeek@.
pattern CohortsRange_Granularity_Weekly :: CohortsRange_Granularity
pattern CohortsRange_Granularity_Weekly = CohortsRange_Granularity "WEEKLY"

-- | Monthly granularity. Commonly used if the cohort\'s @dateRange@ is a month in duration and the request contains @cohortNthMonth@.
pattern CohortsRange_Granularity_Monthly :: CohortsRange_Granularity
pattern CohortsRange_Granularity_Monthly = CohortsRange_Granularity "MONTHLY"

{-# COMPLETE
  CohortsRange_Granularity_GRANULARITYUNSPECIFIED,
  CohortsRange_Granularity_Daily,
  CohortsRange_Granularity_Weekly,
  CohortsRange_Granularity_Monthly,
  CohortsRange_Granularity #-}

-- | The compatibility of this dimension. If the compatibility is COMPATIBLE, this dimension can be successfully added to the report.
newtype DimensionCompatibility_Compatibility = DimensionCompatibility_Compatibility { fromDimensionCompatibility_Compatibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified compatibility.
pattern DimensionCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED :: DimensionCompatibility_Compatibility
pattern DimensionCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED = DimensionCompatibility_Compatibility "COMPATIBILITY_UNSPECIFIED"

-- | The dimension or metric is compatible. This dimension or metric can be successfully added to a report.
pattern DimensionCompatibility_Compatibility_Compatible :: DimensionCompatibility_Compatibility
pattern DimensionCompatibility_Compatibility_Compatible = DimensionCompatibility_Compatibility "COMPATIBLE"

-- | The dimension or metric is incompatible. This dimension or metric cannot be successfully added to a report.
pattern DimensionCompatibility_Compatibility_Incompatible :: DimensionCompatibility_Compatibility
pattern DimensionCompatibility_Compatibility_Incompatible = DimensionCompatibility_Compatibility "INCOMPATIBLE"

{-# COMPLETE
  DimensionCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED,
  DimensionCompatibility_Compatibility_Compatible,
  DimensionCompatibility_Compatibility_Incompatible,
  DimensionCompatibility_Compatibility #-}

-- | Controls the rule for dimension value ordering.
newtype DimensionOrderBy_OrderType = DimensionOrderBy_OrderType { fromDimensionOrderBy_OrderType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern DimensionOrderBy_OrderType_ORDERTYPEUNSPECIFIED :: DimensionOrderBy_OrderType
pattern DimensionOrderBy_OrderType_ORDERTYPEUNSPECIFIED = DimensionOrderBy_OrderType "ORDER_TYPE_UNSPECIFIED"

-- | Alphanumeric sort by Unicode code point. For example, \"2\" \< \"A\" \< \"X\" \< \"b\" \< \"z\".
pattern DimensionOrderBy_OrderType_Alphanumeric :: DimensionOrderBy_OrderType
pattern DimensionOrderBy_OrderType_Alphanumeric = DimensionOrderBy_OrderType "ALPHANUMERIC"

-- | Case insensitive alphanumeric sort by lower case Unicode code point. For example, \"2\" \< \"A\" \< \"b\" \< \"X\" \< \"z\".
pattern DimensionOrderBy_OrderType_CASEINSENSITIVEALPHANUMERIC :: DimensionOrderBy_OrderType
pattern DimensionOrderBy_OrderType_CASEINSENSITIVEALPHANUMERIC = DimensionOrderBy_OrderType "CASE_INSENSITIVE_ALPHANUMERIC"

-- | Dimension values are converted to numbers before sorting. For example in NUMERIC sort, \"25\" \< \"100\", and in @ALPHANUMERIC@ sort, \"100\" \< \"25\". Non-numeric dimension values all have equal ordering value below all numeric values.
pattern DimensionOrderBy_OrderType_Numeric :: DimensionOrderBy_OrderType
pattern DimensionOrderBy_OrderType_Numeric = DimensionOrderBy_OrderType "NUMERIC"

{-# COMPLETE
  DimensionOrderBy_OrderType_ORDERTYPEUNSPECIFIED,
  DimensionOrderBy_OrderType_Alphanumeric,
  DimensionOrderBy_OrderType_CASEINSENSITIVEALPHANUMERIC,
  DimensionOrderBy_OrderType_Numeric,
  DimensionOrderBy_OrderType #-}

-- | The compatibility of this metric. If the compatibility is COMPATIBLE, this metric can be successfully added to the report.
newtype MetricCompatibility_Compatibility = MetricCompatibility_Compatibility { fromMetricCompatibility_Compatibility :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified compatibility.
pattern MetricCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED :: MetricCompatibility_Compatibility
pattern MetricCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED = MetricCompatibility_Compatibility "COMPATIBILITY_UNSPECIFIED"

-- | The dimension or metric is compatible. This dimension or metric can be successfully added to a report.
pattern MetricCompatibility_Compatibility_Compatible :: MetricCompatibility_Compatibility
pattern MetricCompatibility_Compatibility_Compatible = MetricCompatibility_Compatibility "COMPATIBLE"

-- | The dimension or metric is incompatible. This dimension or metric cannot be successfully added to a report.
pattern MetricCompatibility_Compatibility_Incompatible :: MetricCompatibility_Compatibility
pattern MetricCompatibility_Compatibility_Incompatible = MetricCompatibility_Compatibility "INCOMPATIBLE"

{-# COMPLETE
  MetricCompatibility_Compatibility_COMPATIBILITYUNSPECIFIED,
  MetricCompatibility_Compatibility_Compatible,
  MetricCompatibility_Compatibility_Incompatible,
  MetricCompatibility_Compatibility #-}

-- | The metric\'s data type.
newtype MetricHeader_Type = MetricHeader_Type { fromMetricHeader_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified type.
pattern MetricHeader_Type_METRICTYPEUNSPECIFIED :: MetricHeader_Type
pattern MetricHeader_Type_METRICTYPEUNSPECIFIED = MetricHeader_Type "METRIC_TYPE_UNSPECIFIED"

-- | Integer type.
pattern MetricHeader_Type_TYPEINTEGER :: MetricHeader_Type
pattern MetricHeader_Type_TYPEINTEGER = MetricHeader_Type "TYPE_INTEGER"

-- | Floating point type.
pattern MetricHeader_Type_TYPEFLOAT :: MetricHeader_Type
pattern MetricHeader_Type_TYPEFLOAT = MetricHeader_Type "TYPE_FLOAT"

-- | A duration of seconds; a special floating point type.
pattern MetricHeader_Type_TYPESECONDS :: MetricHeader_Type
pattern MetricHeader_Type_TYPESECONDS = MetricHeader_Type "TYPE_SECONDS"

-- | A duration in milliseconds; a special floating point type.
pattern MetricHeader_Type_TYPEMILLISECONDS :: MetricHeader_Type
pattern MetricHeader_Type_TYPEMILLISECONDS = MetricHeader_Type "TYPE_MILLISECONDS"

-- | A duration in minutes; a special floating point type.
pattern MetricHeader_Type_TYPEMINUTES :: MetricHeader_Type
pattern MetricHeader_Type_TYPEMINUTES = MetricHeader_Type "TYPE_MINUTES"

-- | A duration in hours; a special floating point type.
pattern MetricHeader_Type_TYPEHOURS :: MetricHeader_Type
pattern MetricHeader_Type_TYPEHOURS = MetricHeader_Type "TYPE_HOURS"

-- | A custom metric of standard type; a special floating point type.
pattern MetricHeader_Type_TYPESTANDARD :: MetricHeader_Type
pattern MetricHeader_Type_TYPESTANDARD = MetricHeader_Type "TYPE_STANDARD"

-- | An amount of money; a special floating point type.
pattern MetricHeader_Type_TYPECURRENCY :: MetricHeader_Type
pattern MetricHeader_Type_TYPECURRENCY = MetricHeader_Type "TYPE_CURRENCY"

-- | A length in feet; a special floating point type.
pattern MetricHeader_Type_TYPEFEET :: MetricHeader_Type
pattern MetricHeader_Type_TYPEFEET = MetricHeader_Type "TYPE_FEET"

-- | A length in miles; a special floating point type.
pattern MetricHeader_Type_TYPEMILES :: MetricHeader_Type
pattern MetricHeader_Type_TYPEMILES = MetricHeader_Type "TYPE_MILES"

-- | A length in meters; a special floating point type.
pattern MetricHeader_Type_TYPEMETERS :: MetricHeader_Type
pattern MetricHeader_Type_TYPEMETERS = MetricHeader_Type "TYPE_METERS"

-- | A length in kilometers; a special floating point type.
pattern MetricHeader_Type_TYPEKILOMETERS :: MetricHeader_Type
pattern MetricHeader_Type_TYPEKILOMETERS = MetricHeader_Type "TYPE_KILOMETERS"

{-# COMPLETE
  MetricHeader_Type_METRICTYPEUNSPECIFIED,
  MetricHeader_Type_TYPEINTEGER,
  MetricHeader_Type_TYPEFLOAT,
  MetricHeader_Type_TYPESECONDS,
  MetricHeader_Type_TYPEMILLISECONDS,
  MetricHeader_Type_TYPEMINUTES,
  MetricHeader_Type_TYPEHOURS,
  MetricHeader_Type_TYPESTANDARD,
  MetricHeader_Type_TYPECURRENCY,
  MetricHeader_Type_TYPEFEET,
  MetricHeader_Type_TYPEMILES,
  MetricHeader_Type_TYPEMETERS,
  MetricHeader_Type_TYPEKILOMETERS,
  MetricHeader_Type #-}

newtype MetricMetadata_BlockedReasonsItem = MetricMetadata_BlockedReasonsItem { fromMetricMetadata_BlockedReasonsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Will never be specified in API response.
pattern MetricMetadata_BlockedReasonsItem_BLOCKEDREASONUNSPECIFIED :: MetricMetadata_BlockedReasonsItem
pattern MetricMetadata_BlockedReasonsItem_BLOCKEDREASONUNSPECIFIED = MetricMetadata_BlockedReasonsItem "BLOCKED_REASON_UNSPECIFIED"

-- | If present, your access is blocked to revenue related metrics for this property, and this metric is revenue related.
pattern MetricMetadata_BlockedReasonsItem_NOREVENUEMETRICS :: MetricMetadata_BlockedReasonsItem
pattern MetricMetadata_BlockedReasonsItem_NOREVENUEMETRICS = MetricMetadata_BlockedReasonsItem "NO_REVENUE_METRICS"

-- | If present, your access is blocked to cost related metrics for this property, and this metric is cost related.
pattern MetricMetadata_BlockedReasonsItem_NOCOSTMETRICS :: MetricMetadata_BlockedReasonsItem
pattern MetricMetadata_BlockedReasonsItem_NOCOSTMETRICS = MetricMetadata_BlockedReasonsItem "NO_COST_METRICS"

{-# COMPLETE
  MetricMetadata_BlockedReasonsItem_BLOCKEDREASONUNSPECIFIED,
  MetricMetadata_BlockedReasonsItem_NOREVENUEMETRICS,
  MetricMetadata_BlockedReasonsItem_NOCOSTMETRICS,
  MetricMetadata_BlockedReasonsItem #-}

-- | The type of this metric.
newtype MetricMetadata_Type = MetricMetadata_Type { fromMetricMetadata_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified type.
pattern MetricMetadata_Type_METRICTYPEUNSPECIFIED :: MetricMetadata_Type
pattern MetricMetadata_Type_METRICTYPEUNSPECIFIED = MetricMetadata_Type "METRIC_TYPE_UNSPECIFIED"

-- | Integer type.
pattern MetricMetadata_Type_TYPEINTEGER :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEINTEGER = MetricMetadata_Type "TYPE_INTEGER"

-- | Floating point type.
pattern MetricMetadata_Type_TYPEFLOAT :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEFLOAT = MetricMetadata_Type "TYPE_FLOAT"

-- | A duration of seconds; a special floating point type.
pattern MetricMetadata_Type_TYPESECONDS :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPESECONDS = MetricMetadata_Type "TYPE_SECONDS"

-- | A duration in milliseconds; a special floating point type.
pattern MetricMetadata_Type_TYPEMILLISECONDS :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEMILLISECONDS = MetricMetadata_Type "TYPE_MILLISECONDS"

-- | A duration in minutes; a special floating point type.
pattern MetricMetadata_Type_TYPEMINUTES :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEMINUTES = MetricMetadata_Type "TYPE_MINUTES"

-- | A duration in hours; a special floating point type.
pattern MetricMetadata_Type_TYPEHOURS :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEHOURS = MetricMetadata_Type "TYPE_HOURS"

-- | A custom metric of standard type; a special floating point type.
pattern MetricMetadata_Type_TYPESTANDARD :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPESTANDARD = MetricMetadata_Type "TYPE_STANDARD"

-- | An amount of money; a special floating point type.
pattern MetricMetadata_Type_TYPECURRENCY :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPECURRENCY = MetricMetadata_Type "TYPE_CURRENCY"

-- | A length in feet; a special floating point type.
pattern MetricMetadata_Type_TYPEFEET :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEFEET = MetricMetadata_Type "TYPE_FEET"

-- | A length in miles; a special floating point type.
pattern MetricMetadata_Type_TYPEMILES :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEMILES = MetricMetadata_Type "TYPE_MILES"

-- | A length in meters; a special floating point type.
pattern MetricMetadata_Type_TYPEMETERS :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEMETERS = MetricMetadata_Type "TYPE_METERS"

-- | A length in kilometers; a special floating point type.
pattern MetricMetadata_Type_TYPEKILOMETERS :: MetricMetadata_Type
pattern MetricMetadata_Type_TYPEKILOMETERS = MetricMetadata_Type "TYPE_KILOMETERS"

{-# COMPLETE
  MetricMetadata_Type_METRICTYPEUNSPECIFIED,
  MetricMetadata_Type_TYPEINTEGER,
  MetricMetadata_Type_TYPEFLOAT,
  MetricMetadata_Type_TYPESECONDS,
  MetricMetadata_Type_TYPEMILLISECONDS,
  MetricMetadata_Type_TYPEMINUTES,
  MetricMetadata_Type_TYPEHOURS,
  MetricMetadata_Type_TYPESTANDARD,
  MetricMetadata_Type_TYPECURRENCY,
  MetricMetadata_Type_TYPEFEET,
  MetricMetadata_Type_TYPEMILES,
  MetricMetadata_Type_TYPEMETERS,
  MetricMetadata_Type_TYPEKILOMETERS,
  MetricMetadata_Type #-}

-- | The operation type for this filter.
newtype NumericFilter_Operation = NumericFilter_Operation { fromNumericFilter_Operation :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern NumericFilter_Operation_OPERATIONUNSPECIFIED :: NumericFilter_Operation
pattern NumericFilter_Operation_OPERATIONUNSPECIFIED = NumericFilter_Operation "OPERATION_UNSPECIFIED"

-- | Equal
pattern NumericFilter_Operation_Equal :: NumericFilter_Operation
pattern NumericFilter_Operation_Equal = NumericFilter_Operation "EQUAL"

-- | Less than
pattern NumericFilter_Operation_LESSTHAN :: NumericFilter_Operation
pattern NumericFilter_Operation_LESSTHAN = NumericFilter_Operation "LESS_THAN"

-- | Less than or equal
pattern NumericFilter_Operation_LESSTHANOREQUAL :: NumericFilter_Operation
pattern NumericFilter_Operation_LESSTHANOREQUAL = NumericFilter_Operation "LESS_THAN_OR_EQUAL"

-- | Greater than
pattern NumericFilter_Operation_GREATERTHAN :: NumericFilter_Operation
pattern NumericFilter_Operation_GREATERTHAN = NumericFilter_Operation "GREATER_THAN"

-- | Greater than or equal
pattern NumericFilter_Operation_GREATERTHANOREQUAL :: NumericFilter_Operation
pattern NumericFilter_Operation_GREATERTHANOREQUAL = NumericFilter_Operation "GREATER_THAN_OR_EQUAL"

{-# COMPLETE
  NumericFilter_Operation_OPERATIONUNSPECIFIED,
  NumericFilter_Operation_Equal,
  NumericFilter_Operation_LESSTHAN,
  NumericFilter_Operation_LESSTHANOREQUAL,
  NumericFilter_Operation_GREATERTHAN,
  NumericFilter_Operation_GREATERTHANOREQUAL,
  NumericFilter_Operation #-}

newtype Pivot_MetricAggregationsItem = Pivot_MetricAggregationsItem { fromPivot_MetricAggregationsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified operator.
pattern Pivot_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED :: Pivot_MetricAggregationsItem
pattern Pivot_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED = Pivot_MetricAggregationsItem "METRIC_AGGREGATION_UNSPECIFIED"

-- | SUM operator.
pattern Pivot_MetricAggregationsItem_Total :: Pivot_MetricAggregationsItem
pattern Pivot_MetricAggregationsItem_Total = Pivot_MetricAggregationsItem "TOTAL"

-- | Minimum operator.
pattern Pivot_MetricAggregationsItem_Minimum :: Pivot_MetricAggregationsItem
pattern Pivot_MetricAggregationsItem_Minimum = Pivot_MetricAggregationsItem "MINIMUM"

-- | Maximum operator.
pattern Pivot_MetricAggregationsItem_Maximum :: Pivot_MetricAggregationsItem
pattern Pivot_MetricAggregationsItem_Maximum = Pivot_MetricAggregationsItem "MAXIMUM"

-- | Count operator.
pattern Pivot_MetricAggregationsItem_Count :: Pivot_MetricAggregationsItem
pattern Pivot_MetricAggregationsItem_Count = Pivot_MetricAggregationsItem "COUNT"

{-# COMPLETE
  Pivot_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED,
  Pivot_MetricAggregationsItem_Total,
  Pivot_MetricAggregationsItem_Minimum,
  Pivot_MetricAggregationsItem_Maximum,
  Pivot_MetricAggregationsItem_Count,
  Pivot_MetricAggregationsItem #-}

newtype RunRealtimeReportRequest_MetricAggregationsItem = RunRealtimeReportRequest_MetricAggregationsItem { fromRunRealtimeReportRequest_MetricAggregationsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified operator.
pattern RunRealtimeReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED :: RunRealtimeReportRequest_MetricAggregationsItem
pattern RunRealtimeReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED = RunRealtimeReportRequest_MetricAggregationsItem "METRIC_AGGREGATION_UNSPECIFIED"

-- | SUM operator.
pattern RunRealtimeReportRequest_MetricAggregationsItem_Total :: RunRealtimeReportRequest_MetricAggregationsItem
pattern RunRealtimeReportRequest_MetricAggregationsItem_Total = RunRealtimeReportRequest_MetricAggregationsItem "TOTAL"

-- | Minimum operator.
pattern RunRealtimeReportRequest_MetricAggregationsItem_Minimum :: RunRealtimeReportRequest_MetricAggregationsItem
pattern RunRealtimeReportRequest_MetricAggregationsItem_Minimum = RunRealtimeReportRequest_MetricAggregationsItem "MINIMUM"

-- | Maximum operator.
pattern RunRealtimeReportRequest_MetricAggregationsItem_Maximum :: RunRealtimeReportRequest_MetricAggregationsItem
pattern RunRealtimeReportRequest_MetricAggregationsItem_Maximum = RunRealtimeReportRequest_MetricAggregationsItem "MAXIMUM"

-- | Count operator.
pattern RunRealtimeReportRequest_MetricAggregationsItem_Count :: RunRealtimeReportRequest_MetricAggregationsItem
pattern RunRealtimeReportRequest_MetricAggregationsItem_Count = RunRealtimeReportRequest_MetricAggregationsItem "COUNT"

{-# COMPLETE
  RunRealtimeReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED,
  RunRealtimeReportRequest_MetricAggregationsItem_Total,
  RunRealtimeReportRequest_MetricAggregationsItem_Minimum,
  RunRealtimeReportRequest_MetricAggregationsItem_Maximum,
  RunRealtimeReportRequest_MetricAggregationsItem_Count,
  RunRealtimeReportRequest_MetricAggregationsItem #-}

newtype RunReportRequest_MetricAggregationsItem = RunReportRequest_MetricAggregationsItem { fromRunReportRequest_MetricAggregationsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified operator.
pattern RunReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED :: RunReportRequest_MetricAggregationsItem
pattern RunReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED = RunReportRequest_MetricAggregationsItem "METRIC_AGGREGATION_UNSPECIFIED"

-- | SUM operator.
pattern RunReportRequest_MetricAggregationsItem_Total :: RunReportRequest_MetricAggregationsItem
pattern RunReportRequest_MetricAggregationsItem_Total = RunReportRequest_MetricAggregationsItem "TOTAL"

-- | Minimum operator.
pattern RunReportRequest_MetricAggregationsItem_Minimum :: RunReportRequest_MetricAggregationsItem
pattern RunReportRequest_MetricAggregationsItem_Minimum = RunReportRequest_MetricAggregationsItem "MINIMUM"

-- | Maximum operator.
pattern RunReportRequest_MetricAggregationsItem_Maximum :: RunReportRequest_MetricAggregationsItem
pattern RunReportRequest_MetricAggregationsItem_Maximum = RunReportRequest_MetricAggregationsItem "MAXIMUM"

-- | Count operator.
pattern RunReportRequest_MetricAggregationsItem_Count :: RunReportRequest_MetricAggregationsItem
pattern RunReportRequest_MetricAggregationsItem_Count = RunReportRequest_MetricAggregationsItem "COUNT"

{-# COMPLETE
  RunReportRequest_MetricAggregationsItem_METRICAGGREGATIONUNSPECIFIED,
  RunReportRequest_MetricAggregationsItem_Total,
  RunReportRequest_MetricAggregationsItem_Minimum,
  RunReportRequest_MetricAggregationsItem_Maximum,
  RunReportRequest_MetricAggregationsItem_Count,
  RunReportRequest_MetricAggregationsItem #-}

-- | The match type for this filter.
newtype StringFilter_MatchType = StringFilter_MatchType { fromStringFilter_MatchType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern StringFilter_MatchType_MATCHTYPEUNSPECIFIED :: StringFilter_MatchType
pattern StringFilter_MatchType_MATCHTYPEUNSPECIFIED = StringFilter_MatchType "MATCH_TYPE_UNSPECIFIED"

-- | Exact match of the string value.
pattern StringFilter_MatchType_Exact :: StringFilter_MatchType
pattern StringFilter_MatchType_Exact = StringFilter_MatchType "EXACT"

-- | Begins with the string value.
pattern StringFilter_MatchType_BEGINSWITH :: StringFilter_MatchType
pattern StringFilter_MatchType_BEGINSWITH = StringFilter_MatchType "BEGINS_WITH"

-- | Ends with the string value.
pattern StringFilter_MatchType_ENDSWITH :: StringFilter_MatchType
pattern StringFilter_MatchType_ENDSWITH = StringFilter_MatchType "ENDS_WITH"

-- | Contains the string value.
pattern StringFilter_MatchType_Contains :: StringFilter_MatchType
pattern StringFilter_MatchType_Contains = StringFilter_MatchType "CONTAINS"

-- | Full match for the regular expression with the string value.
pattern StringFilter_MatchType_FULLREGEXP :: StringFilter_MatchType
pattern StringFilter_MatchType_FULLREGEXP = StringFilter_MatchType "FULL_REGEXP"

-- | Partial match for the regular expression with the string value.
pattern StringFilter_MatchType_PARTIALREGEXP :: StringFilter_MatchType
pattern StringFilter_MatchType_PARTIALREGEXP = StringFilter_MatchType "PARTIAL_REGEXP"

{-# COMPLETE
  StringFilter_MatchType_MATCHTYPEUNSPECIFIED,
  StringFilter_MatchType_Exact,
  StringFilter_MatchType_BEGINSWITH,
  StringFilter_MatchType_ENDSWITH,
  StringFilter_MatchType_Contains,
  StringFilter_MatchType_FULLREGEXP,
  StringFilter_MatchType_PARTIALREGEXP,
  StringFilter_MatchType #-}
