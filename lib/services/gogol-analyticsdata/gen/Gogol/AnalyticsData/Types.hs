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
-- Module      : Gogol.AnalyticsData.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AnalyticsData.Types
    (
    -- * Configuration
      analyticsDataService

    -- * OAuth Scopes
    , Analytics'FullControl
    , Analytics'Readonly

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

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Internal.Product
import Gogol.AnalyticsData.Internal.Sum

-- | Default request referring to version @v1beta@ of the Google Analytics Data API. This contains the host and root path used as a starting point for constructing service requests.
analyticsDataService :: Core.ServiceConfig
analyticsDataService
  = Core.defaultService
      (Core.ServiceId "analyticsdata:v1beta")
      "analyticsdata.googleapis.com"

-- | View and manage your Google Analytics data
type Analytics'FullControl = "https://www.googleapis.com/auth/analytics"

-- | See and download your Google Analytics data
type Analytics'Readonly = "https://www.googleapis.com/auth/analytics.readonly"
