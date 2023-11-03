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
-- Module      : Gogol.AnalyticsData
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accesses report data in Google Analytics.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference>
module Gogol.AnalyticsData
    (
    -- * Configuration
      analyticsDataService

    -- * OAuth Scopes
    , Analytics'FullControl
    , Analytics'Readonly

    -- * Resources

    -- ** analyticsdata.properties.batchRunPivotReports
    , AnalyticsDataPropertiesBatchRunPivotReportsResource
    , AnalyticsDataPropertiesBatchRunPivotReports (..)
    , newAnalyticsDataPropertiesBatchRunPivotReports

    -- ** analyticsdata.properties.batchRunReports
    , AnalyticsDataPropertiesBatchRunReportsResource
    , AnalyticsDataPropertiesBatchRunReports (..)
    , newAnalyticsDataPropertiesBatchRunReports

    -- ** analyticsdata.properties.checkCompatibility
    , AnalyticsDataPropertiesCheckCompatibilityResource
    , AnalyticsDataPropertiesCheckCompatibility (..)
    , newAnalyticsDataPropertiesCheckCompatibility

    -- ** analyticsdata.properties.getMetadata
    , AnalyticsDataPropertiesGetMetadataResource
    , AnalyticsDataPropertiesGetMetadata (..)
    , newAnalyticsDataPropertiesGetMetadata

    -- ** analyticsdata.properties.runPivotReport
    , AnalyticsDataPropertiesRunPivotReportResource
    , AnalyticsDataPropertiesRunPivotReport (..)
    , newAnalyticsDataPropertiesRunPivotReport

    -- ** analyticsdata.properties.runRealtimeReport
    , AnalyticsDataPropertiesRunRealtimeReportResource
    , AnalyticsDataPropertiesRunRealtimeReport (..)
    , newAnalyticsDataPropertiesRunRealtimeReport

    -- ** analyticsdata.properties.runReport
    , AnalyticsDataPropertiesRunReportResource
    , AnalyticsDataPropertiesRunReport (..)
    , newAnalyticsDataPropertiesRunReport

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** ActiveMetricRestriction
    , ActiveMetricRestriction (..)
    , newActiveMetricRestriction

    -- ** ActiveMetricRestriction_RestrictedMetricTypesItem
    , ActiveMetricRestriction_RestrictedMetricTypesItem (..)

    -- ** BatchRunPivotReportsRequest
    , BatchRunPivotReportsRequest (..)
    , newBatchRunPivotReportsRequest

    -- ** BatchRunPivotReportsResponse
    , BatchRunPivotReportsResponse (..)
    , newBatchRunPivotReportsResponse

    -- ** BatchRunReportsRequest
    , BatchRunReportsRequest (..)
    , newBatchRunReportsRequest

    -- ** BatchRunReportsResponse
    , BatchRunReportsResponse (..)
    , newBatchRunReportsResponse

    -- ** BetweenFilter
    , BetweenFilter (..)
    , newBetweenFilter

    -- ** CaseExpression
    , CaseExpression (..)
    , newCaseExpression

    -- ** CheckCompatibilityRequest
    , CheckCompatibilityRequest (..)
    , newCheckCompatibilityRequest

    -- ** CheckCompatibilityRequest_CompatibilityFilter
    , CheckCompatibilityRequest_CompatibilityFilter (..)

    -- ** CheckCompatibilityResponse
    , CheckCompatibilityResponse (..)
    , newCheckCompatibilityResponse

    -- ** Cohort
    , Cohort (..)
    , newCohort

    -- ** CohortReportSettings
    , CohortReportSettings (..)
    , newCohortReportSettings

    -- ** CohortSpec
    , CohortSpec (..)
    , newCohortSpec

    -- ** CohortsRange
    , CohortsRange (..)
    , newCohortsRange

    -- ** CohortsRange_Granularity
    , CohortsRange_Granularity (..)

    -- ** ConcatenateExpression
    , ConcatenateExpression (..)
    , newConcatenateExpression

    -- ** DateRange
    , DateRange (..)
    , newDateRange

    -- ** Dimension
    , Dimension (..)
    , newDimension

    -- ** DimensionCompatibility
    , DimensionCompatibility (..)
    , newDimensionCompatibility

    -- ** DimensionCompatibility_Compatibility
    , DimensionCompatibility_Compatibility (..)

    -- ** DimensionExpression
    , DimensionExpression (..)
    , newDimensionExpression

    -- ** DimensionHeader
    , DimensionHeader (..)
    , newDimensionHeader

    -- ** DimensionMetadata
    , DimensionMetadata (..)
    , newDimensionMetadata

    -- ** DimensionOrderBy
    , DimensionOrderBy (..)
    , newDimensionOrderBy

    -- ** DimensionOrderBy_OrderType
    , DimensionOrderBy_OrderType (..)

    -- ** DimensionValue
    , DimensionValue (..)
    , newDimensionValue

    -- ** Filter
    , Filter (..)
    , newFilter

    -- ** FilterExpression
    , FilterExpression (..)
    , newFilterExpression

    -- ** FilterExpressionList
    , FilterExpressionList (..)
    , newFilterExpressionList

    -- ** InListFilter
    , InListFilter (..)
    , newInListFilter

    -- ** Metadata
    , Metadata (..)
    , newMetadata

    -- ** Metric
    , Metric (..)
    , newMetric

    -- ** MetricCompatibility
    , MetricCompatibility (..)
    , newMetricCompatibility

    -- ** MetricCompatibility_Compatibility
    , MetricCompatibility_Compatibility (..)

    -- ** MetricHeader
    , MetricHeader (..)
    , newMetricHeader

    -- ** MetricHeader_Type
    , MetricHeader_Type (..)

    -- ** MetricMetadata
    , MetricMetadata (..)
    , newMetricMetadata

    -- ** MetricMetadata_BlockedReasonsItem
    , MetricMetadata_BlockedReasonsItem (..)

    -- ** MetricMetadata_Type
    , MetricMetadata_Type (..)

    -- ** MetricOrderBy
    , MetricOrderBy (..)
    , newMetricOrderBy

    -- ** MetricValue
    , MetricValue (..)
    , newMetricValue

    -- ** MinuteRange
    , MinuteRange (..)
    , newMinuteRange

    -- ** NumericFilter
    , NumericFilter (..)
    , newNumericFilter

    -- ** NumericFilter_Operation
    , NumericFilter_Operation (..)

    -- ** NumericValue
    , NumericValue (..)
    , newNumericValue

    -- ** OrderBy
    , OrderBy (..)
    , newOrderBy

    -- ** Pivot
    , Pivot (..)
    , newPivot

    -- ** Pivot_MetricAggregationsItem
    , Pivot_MetricAggregationsItem (..)

    -- ** PivotDimensionHeader
    , PivotDimensionHeader (..)
    , newPivotDimensionHeader

    -- ** PivotHeader
    , PivotHeader (..)
    , newPivotHeader

    -- ** PivotOrderBy
    , PivotOrderBy (..)
    , newPivotOrderBy

    -- ** PivotSelection
    , PivotSelection (..)
    , newPivotSelection

    -- ** PropertyQuota
    , PropertyQuota (..)
    , newPropertyQuota

    -- ** QuotaStatus
    , QuotaStatus (..)
    , newQuotaStatus

    -- ** ResponseMetaData
    , ResponseMetaData (..)
    , newResponseMetaData

    -- ** Row
    , Row (..)
    , newRow

    -- ** RunPivotReportRequest
    , RunPivotReportRequest (..)
    , newRunPivotReportRequest

    -- ** RunPivotReportResponse
    , RunPivotReportResponse (..)
    , newRunPivotReportResponse

    -- ** RunRealtimeReportRequest
    , RunRealtimeReportRequest (..)
    , newRunRealtimeReportRequest

    -- ** RunRealtimeReportRequest_MetricAggregationsItem
    , RunRealtimeReportRequest_MetricAggregationsItem (..)

    -- ** RunRealtimeReportResponse
    , RunRealtimeReportResponse (..)
    , newRunRealtimeReportResponse

    -- ** RunReportRequest
    , RunReportRequest (..)
    , newRunReportRequest

    -- ** RunReportRequest_MetricAggregationsItem
    , RunReportRequest_MetricAggregationsItem (..)

    -- ** RunReportResponse
    , RunReportResponse (..)
    , newRunReportResponse

    -- ** SchemaRestrictionResponse
    , SchemaRestrictionResponse (..)
    , newSchemaRestrictionResponse

    -- ** StringFilter
    , StringFilter (..)
    , newStringFilter

    -- ** StringFilter_MatchType
    , StringFilter_MatchType (..)
    ) where

import Gogol.AnalyticsData.Properties.BatchRunPivotReports
import Gogol.AnalyticsData.Properties.BatchRunReports
import Gogol.AnalyticsData.Properties.CheckCompatibility
import Gogol.AnalyticsData.Properties.GetMetadata
import Gogol.AnalyticsData.Properties.RunPivotReport
import Gogol.AnalyticsData.Properties.RunRealtimeReport
import Gogol.AnalyticsData.Properties.RunReport
import Gogol.AnalyticsData.Types
