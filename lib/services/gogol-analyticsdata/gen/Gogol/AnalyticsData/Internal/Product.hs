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
-- Module      : Gogol.AnalyticsData.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AnalyticsData.Internal.Product
  (

    -- * ActiveMetricRestriction
    ActiveMetricRestriction (..),
    newActiveMetricRestriction,

    -- * BatchRunPivotReportsRequest
    BatchRunPivotReportsRequest (..),
    newBatchRunPivotReportsRequest,

    -- * BatchRunPivotReportsResponse
    BatchRunPivotReportsResponse (..),
    newBatchRunPivotReportsResponse,

    -- * BatchRunReportsRequest
    BatchRunReportsRequest (..),
    newBatchRunReportsRequest,

    -- * BatchRunReportsResponse
    BatchRunReportsResponse (..),
    newBatchRunReportsResponse,

    -- * BetweenFilter
    BetweenFilter (..),
    newBetweenFilter,

    -- * CaseExpression
    CaseExpression (..),
    newCaseExpression,

    -- * CheckCompatibilityRequest
    CheckCompatibilityRequest (..),
    newCheckCompatibilityRequest,

    -- * CheckCompatibilityResponse
    CheckCompatibilityResponse (..),
    newCheckCompatibilityResponse,

    -- * Cohort
    Cohort (..),
    newCohort,

    -- * CohortReportSettings
    CohortReportSettings (..),
    newCohortReportSettings,

    -- * CohortSpec
    CohortSpec (..),
    newCohortSpec,

    -- * CohortsRange
    CohortsRange (..),
    newCohortsRange,

    -- * ConcatenateExpression
    ConcatenateExpression (..),
    newConcatenateExpression,

    -- * DateRange
    DateRange (..),
    newDateRange,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * DimensionCompatibility
    DimensionCompatibility (..),
    newDimensionCompatibility,

    -- * DimensionExpression
    DimensionExpression (..),
    newDimensionExpression,

    -- * DimensionHeader
    DimensionHeader (..),
    newDimensionHeader,

    -- * DimensionMetadata
    DimensionMetadata (..),
    newDimensionMetadata,

    -- * DimensionOrderBy
    DimensionOrderBy (..),
    newDimensionOrderBy,

    -- * DimensionValue
    DimensionValue (..),
    newDimensionValue,

    -- * Filter
    Filter (..),
    newFilter,

    -- * FilterExpression
    FilterExpression (..),
    newFilterExpression,

    -- * FilterExpressionList
    FilterExpressionList (..),
    newFilterExpressionList,

    -- * InListFilter
    InListFilter (..),
    newInListFilter,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * Metric
    Metric (..),
    newMetric,

    -- * MetricCompatibility
    MetricCompatibility (..),
    newMetricCompatibility,

    -- * MetricHeader
    MetricHeader (..),
    newMetricHeader,

    -- * MetricMetadata
    MetricMetadata (..),
    newMetricMetadata,

    -- * MetricOrderBy
    MetricOrderBy (..),
    newMetricOrderBy,

    -- * MetricValue
    MetricValue (..),
    newMetricValue,

    -- * MinuteRange
    MinuteRange (..),
    newMinuteRange,

    -- * NumericFilter
    NumericFilter (..),
    newNumericFilter,

    -- * NumericValue
    NumericValue (..),
    newNumericValue,

    -- * OrderBy
    OrderBy (..),
    newOrderBy,

    -- * Pivot
    Pivot (..),
    newPivot,

    -- * PivotDimensionHeader
    PivotDimensionHeader (..),
    newPivotDimensionHeader,

    -- * PivotHeader
    PivotHeader (..),
    newPivotHeader,

    -- * PivotOrderBy
    PivotOrderBy (..),
    newPivotOrderBy,

    -- * PivotSelection
    PivotSelection (..),
    newPivotSelection,

    -- * PropertyQuota
    PropertyQuota (..),
    newPropertyQuota,

    -- * QuotaStatus
    QuotaStatus (..),
    newQuotaStatus,

    -- * ResponseMetaData
    ResponseMetaData (..),
    newResponseMetaData,

    -- * Row
    Row (..),
    newRow,

    -- * RunPivotReportRequest
    RunPivotReportRequest (..),
    newRunPivotReportRequest,

    -- * RunPivotReportResponse
    RunPivotReportResponse (..),
    newRunPivotReportResponse,

    -- * RunRealtimeReportRequest
    RunRealtimeReportRequest (..),
    newRunRealtimeReportRequest,

    -- * RunRealtimeReportResponse
    RunRealtimeReportResponse (..),
    newRunRealtimeReportResponse,

    -- * RunReportRequest
    RunReportRequest (..),
    newRunReportRequest,

    -- * RunReportResponse
    RunReportResponse (..),
    newRunReportResponse,

    -- * SchemaRestrictionResponse
    SchemaRestrictionResponse (..),
    newSchemaRestrictionResponse,

    -- * StringFilter
    StringFilter (..),
    newStringFilter,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Internal.Sum

-- | A metric actively restricted in creating the report.
--
-- /See:/ 'newActiveMetricRestriction' smart constructor.
data ActiveMetricRestriction = ActiveMetricRestriction
    {
      -- | The name of the restricted metric.
      metricName :: (Core.Maybe Core.Text)
      -- | The reason for this metric\'s restriction.
    , restrictedMetricTypes :: (Core.Maybe [ActiveMetricRestriction_RestrictedMetricTypesItem])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActiveMetricRestriction' with the minimum fields required to make a request.
newActiveMetricRestriction 
    ::  ActiveMetricRestriction
newActiveMetricRestriction =
  ActiveMetricRestriction
    {metricName = Core.Nothing, restrictedMetricTypes = Core.Nothing}

instance Core.FromJSON ActiveMetricRestriction where
        parseJSON
          = Core.withObject "ActiveMetricRestriction"
              (\ o ->
                 ActiveMetricRestriction Core.<$>
                   (o Core..:? "metricName") Core.<*>
                     (o Core..:? "restrictedMetricTypes"))

instance Core.ToJSON ActiveMetricRestriction where
        toJSON ActiveMetricRestriction{..}
          = Core.object
              (Core.catMaybes
                 [("metricName" Core..=) Core.<$> metricName,
                  ("restrictedMetricTypes" Core..=) Core.<$>
                    restrictedMetricTypes])


-- | The batch request containing multiple pivot report requests.
--
-- /See:/ 'newBatchRunPivotReportsRequest' smart constructor.
newtype BatchRunPivotReportsRequest = BatchRunPivotReportsRequest
    {
      -- | Individual requests. Each request has a separate pivot report response. Each batch request is allowed up to 5 requests.
      requests :: (Core.Maybe [RunPivotReportRequest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchRunPivotReportsRequest' with the minimum fields required to make a request.
newBatchRunPivotReportsRequest 
    ::  BatchRunPivotReportsRequest
newBatchRunPivotReportsRequest =
  BatchRunPivotReportsRequest {requests = Core.Nothing}

instance Core.FromJSON BatchRunPivotReportsRequest
         where
        parseJSON
          = Core.withObject "BatchRunPivotReportsRequest"
              (\ o ->
                 BatchRunPivotReportsRequest Core.<$>
                   (o Core..:? "requests"))

instance Core.ToJSON BatchRunPivotReportsRequest
         where
        toJSON BatchRunPivotReportsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("requests" Core..=) Core.<$> requests])


-- | The batch response containing multiple pivot reports.
--
-- /See:/ 'newBatchRunPivotReportsResponse' smart constructor.
data BatchRunPivotReportsResponse = BatchRunPivotReportsResponse
    {
      -- | Identifies what kind of resource this message is. This @kind@ is always the fixed string \"analyticsData#batchRunPivotReports\". Useful to distinguish between response types in JSON.
      kind :: (Core.Maybe Core.Text)
      -- | Individual responses. Each response has a separate pivot report request.
    , pivotReports :: (Core.Maybe [RunPivotReportResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchRunPivotReportsResponse' with the minimum fields required to make a request.
newBatchRunPivotReportsResponse 
    ::  BatchRunPivotReportsResponse
newBatchRunPivotReportsResponse =
  BatchRunPivotReportsResponse
    {kind = Core.Nothing, pivotReports = Core.Nothing}

instance Core.FromJSON BatchRunPivotReportsResponse
         where
        parseJSON
          = Core.withObject "BatchRunPivotReportsResponse"
              (\ o ->
                 BatchRunPivotReportsResponse Core.<$>
                   (o Core..:? "kind") Core.<*>
                     (o Core..:? "pivotReports"))

instance Core.ToJSON BatchRunPivotReportsResponse
         where
        toJSON BatchRunPivotReportsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("pivotReports" Core..=) Core.<$> pivotReports])


-- | The batch request containing multiple report requests.
--
-- /See:/ 'newBatchRunReportsRequest' smart constructor.
newtype BatchRunReportsRequest = BatchRunReportsRequest
    {
      -- | Individual requests. Each request has a separate report response. Each batch request is allowed up to 5 requests.
      requests :: (Core.Maybe [RunReportRequest])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchRunReportsRequest' with the minimum fields required to make a request.
newBatchRunReportsRequest 
    ::  BatchRunReportsRequest
newBatchRunReportsRequest = BatchRunReportsRequest {requests = Core.Nothing}

instance Core.FromJSON BatchRunReportsRequest where
        parseJSON
          = Core.withObject "BatchRunReportsRequest"
              (\ o ->
                 BatchRunReportsRequest Core.<$>
                   (o Core..:? "requests"))

instance Core.ToJSON BatchRunReportsRequest where
        toJSON BatchRunReportsRequest{..}
          = Core.object
              (Core.catMaybes
                 [("requests" Core..=) Core.<$> requests])


-- | The batch response containing multiple reports.
--
-- /See:/ 'newBatchRunReportsResponse' smart constructor.
data BatchRunReportsResponse = BatchRunReportsResponse
    {
      -- | Identifies what kind of resource this message is. This @kind@ is always the fixed string \"analyticsData#batchRunReports\". Useful to distinguish between response types in JSON.
      kind :: (Core.Maybe Core.Text)
      -- | Individual responses. Each response has a separate report request.
    , reports :: (Core.Maybe [RunReportResponse])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchRunReportsResponse' with the minimum fields required to make a request.
newBatchRunReportsResponse 
    ::  BatchRunReportsResponse
newBatchRunReportsResponse =
  BatchRunReportsResponse {kind = Core.Nothing, reports = Core.Nothing}

instance Core.FromJSON BatchRunReportsResponse where
        parseJSON
          = Core.withObject "BatchRunReportsResponse"
              (\ o ->
                 BatchRunReportsResponse Core.<$>
                   (o Core..:? "kind") Core.<*> (o Core..:? "reports"))

instance Core.ToJSON BatchRunReportsResponse where
        toJSON BatchRunReportsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("kind" Core..=) Core.<$> kind,
                  ("reports" Core..=) Core.<$> reports])


-- | To express that the result needs to be between two numbers (inclusive).
--
-- /See:/ 'newBetweenFilter' smart constructor.
data BetweenFilter = BetweenFilter
    {
      -- | Begins with this number.
      fromValue :: (Core.Maybe NumericValue)
      -- | Ends with this number.
    , toValue :: (Core.Maybe NumericValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BetweenFilter' with the minimum fields required to make a request.
newBetweenFilter 
    ::  BetweenFilter
newBetweenFilter =
  BetweenFilter {fromValue = Core.Nothing, toValue = Core.Nothing}

instance Core.FromJSON BetweenFilter where
        parseJSON
          = Core.withObject "BetweenFilter"
              (\ o ->
                 BetweenFilter Core.<$>
                   (o Core..:? "fromValue") Core.<*>
                     (o Core..:? "toValue"))

instance Core.ToJSON BetweenFilter where
        toJSON BetweenFilter{..}
          = Core.object
              (Core.catMaybes
                 [("fromValue" Core..=) Core.<$> fromValue,
                  ("toValue" Core..=) Core.<$> toValue])


-- | Used to convert a dimension value to a single case.
--
-- /See:/ 'newCaseExpression' smart constructor.
newtype CaseExpression = CaseExpression
    {
      -- | Name of a dimension. The name must refer back to a name in dimensions field of the request.
      dimensionName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CaseExpression' with the minimum fields required to make a request.
newCaseExpression 
    ::  CaseExpression
newCaseExpression = CaseExpression {dimensionName = Core.Nothing}

instance Core.FromJSON CaseExpression where
        parseJSON
          = Core.withObject "CaseExpression"
              (\ o ->
                 CaseExpression Core.<$> (o Core..:? "dimensionName"))

instance Core.ToJSON CaseExpression where
        toJSON CaseExpression{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionName" Core..=) Core.<$> dimensionName])


-- | The request for compatibility information for a report\'s dimensions and metrics. Check compatibility provides a preview of the compatibility of a report; fields shared with the @runReport@ request should be the same values as in your @runReport@ request.
--
-- /See:/ 'newCheckCompatibilityRequest' smart constructor.
data CheckCompatibilityRequest = CheckCompatibilityRequest
    {
      -- | Filters the dimensions and metrics in the response to just this compatibility. Commonly used as @”compatibilityFilter”: “COMPATIBLE”@ to only return compatible dimensions & metrics.
      compatibilityFilter :: (Core.Maybe CheckCompatibilityRequest_CompatibilityFilter)
      -- | The filter clause of dimensions. @dimensionFilter@ should be the same value as in your @runReport@ request.
    , dimensionFilter :: (Core.Maybe FilterExpression)
      -- | The dimensions in this report. @dimensions@ should be the same value as in your @runReport@ request.
    , dimensions :: (Core.Maybe [Dimension])
      -- | The filter clause of metrics. @metricFilter@ should be the same value as in your @runReport@ request
    , metricFilter :: (Core.Maybe FilterExpression)
      -- | The metrics in this report. @metrics@ should be the same value as in your @runReport@ request.
    , metrics :: (Core.Maybe [Metric])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckCompatibilityRequest' with the minimum fields required to make a request.
newCheckCompatibilityRequest 
    ::  CheckCompatibilityRequest
newCheckCompatibilityRequest =
  CheckCompatibilityRequest
    { compatibilityFilter = Core.Nothing
    , dimensionFilter = Core.Nothing
    , dimensions = Core.Nothing
    , metricFilter = Core.Nothing
    , metrics = Core.Nothing
    }

instance Core.FromJSON CheckCompatibilityRequest
         where
        parseJSON
          = Core.withObject "CheckCompatibilityRequest"
              (\ o ->
                 CheckCompatibilityRequest Core.<$>
                   (o Core..:? "compatibilityFilter") Core.<*>
                     (o Core..:? "dimensionFilter")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "metricFilter")
                     Core.<*> (o Core..:? "metrics"))

instance Core.ToJSON CheckCompatibilityRequest where
        toJSON CheckCompatibilityRequest{..}
          = Core.object
              (Core.catMaybes
                 [("compatibilityFilter" Core..=) Core.<$>
                    compatibilityFilter,
                  ("dimensionFilter" Core..=) Core.<$> dimensionFilter,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("metricFilter" Core..=) Core.<$> metricFilter,
                  ("metrics" Core..=) Core.<$> metrics])


-- | The compatibility response with the compatibility of each dimension & metric.
--
-- /See:/ 'newCheckCompatibilityResponse' smart constructor.
data CheckCompatibilityResponse = CheckCompatibilityResponse
    {
      -- | The compatibility of each dimension.
      dimensionCompatibilities :: (Core.Maybe [DimensionCompatibility])
      -- | The compatibility of each metric.
    , metricCompatibilities :: (Core.Maybe [MetricCompatibility])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckCompatibilityResponse' with the minimum fields required to make a request.
newCheckCompatibilityResponse 
    ::  CheckCompatibilityResponse
newCheckCompatibilityResponse =
  CheckCompatibilityResponse
    { dimensionCompatibilities = Core.Nothing
    , metricCompatibilities = Core.Nothing
    }

instance Core.FromJSON CheckCompatibilityResponse
         where
        parseJSON
          = Core.withObject "CheckCompatibilityResponse"
              (\ o ->
                 CheckCompatibilityResponse Core.<$>
                   (o Core..:? "dimensionCompatibilities") Core.<*>
                     (o Core..:? "metricCompatibilities"))

instance Core.ToJSON CheckCompatibilityResponse where
        toJSON CheckCompatibilityResponse{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionCompatibilities" Core..=) Core.<$>
                    dimensionCompatibilities,
                  ("metricCompatibilities" Core..=) Core.<$>
                    metricCompatibilities])


-- | Defines a cohort selection criteria. A cohort is a group of users who share a common characteristic. For example, users with the same @firstSessionDate@ belong to the same cohort.
--
-- /See:/ 'newCohort' smart constructor.
data Cohort = Cohort
    {
      -- | The cohort selects users whose first touch date is between start date and end date defined in the @dateRange@. This @dateRange@ does not specify the full date range of event data that is present in a cohort report. In a cohort report, this @dateRange@ is extended by the granularity and offset present in the @cohortsRange@; event data for the extended reporting date range is present in a cohort report. In a cohort request, this @dateRange@ is required and the @dateRanges@ in the @RunReportRequest@ or @RunPivotReportRequest@ must be unspecified. This @dateRange@ should generally be aligned with the cohort\'s granularity. If @CohortsRange@ uses daily granularity, this @dateRange@ can be a single day. If @CohortsRange@ uses weekly granularity, this @dateRange@ can be aligned to a week boundary, starting at Sunday and ending Saturday. If @CohortsRange@ uses monthly granularity, this @dateRange@ can be aligned to a month, starting at the first and ending on the last day of the month.
      dateRange :: (Core.Maybe DateRange)
      -- | Dimension used by the cohort. Required and only supports @firstSessionDate@.
    , dimension :: (Core.Maybe Core.Text)
      -- | Assigns a name to this cohort. The dimension @cohort@ is valued to this name in a report response. If set, cannot begin with @cohort_@ or @RESERVED_@. If not set, cohorts are named by their zero based index @cohort_0@, @cohort_1@, etc.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Cohort' with the minimum fields required to make a request.
newCohort 
    ::  Cohort
newCohort =
  Cohort
    {dateRange = Core.Nothing, dimension = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Cohort where
        parseJSON
          = Core.withObject "Cohort"
              (\ o ->
                 Cohort Core.<$>
                   (o Core..:? "dateRange") Core.<*>
                     (o Core..:? "dimension")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Cohort where
        toJSON Cohort{..}
          = Core.object
              (Core.catMaybes
                 [("dateRange" Core..=) Core.<$> dateRange,
                  ("dimension" Core..=) Core.<$> dimension,
                  ("name" Core..=) Core.<$> name])


-- | Optional settings of a cohort report.
--
-- /See:/ 'newCohortReportSettings' smart constructor.
newtype CohortReportSettings = CohortReportSettings
    {
      -- | If true, accumulates the result from first touch day to the end day. Not supported in @RunReportRequest@.
      accumulate :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CohortReportSettings' with the minimum fields required to make a request.
newCohortReportSettings 
    ::  CohortReportSettings
newCohortReportSettings = CohortReportSettings {accumulate = Core.Nothing}

instance Core.FromJSON CohortReportSettings where
        parseJSON
          = Core.withObject "CohortReportSettings"
              (\ o ->
                 CohortReportSettings Core.<$>
                   (o Core..:? "accumulate"))

instance Core.ToJSON CohortReportSettings where
        toJSON CohortReportSettings{..}
          = Core.object
              (Core.catMaybes
                 [("accumulate" Core..=) Core.<$> accumulate])


-- | The specification of cohorts for a cohort report. Cohort reports create a time series of user retention for the cohort. For example, you could select the cohort of users that were acquired in the first week of September and follow that cohort for the next six weeks. Selecting the users acquired in the first week of September cohort is specified in the @cohort@ object. Following that cohort for the next six weeks is specified in the @cohortsRange@ object. For examples, see <https://developers.google.com/analytics/devguides/reporting/data/v1/advanced#cohort_report_examples Cohort Report Examples>. The report response could show a weekly time series where say your app has retained 60% of this cohort after three weeks and 25% of this cohort after six weeks. These two percentages can be calculated by the metric @cohortActiveUsers\/cohortTotalUsers@ and will be separate rows in the report.
--
-- /See:/ 'newCohortSpec' smart constructor.
data CohortSpec = CohortSpec
    {
      -- | Optional settings for a cohort report.
      cohortReportSettings :: (Core.Maybe CohortReportSettings)
      -- | Defines the selection criteria to group users into cohorts. Most cohort reports define only a single cohort. If multiple cohorts are specified, each cohort can be recognized in the report by their name.
    , cohorts :: (Core.Maybe [Cohort])
      -- | Cohort reports follow cohorts over an extended reporting date range. This range specifies an offset duration to follow the cohorts over.
    , cohortsRange :: (Core.Maybe CohortsRange)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CohortSpec' with the minimum fields required to make a request.
newCohortSpec 
    ::  CohortSpec
newCohortSpec =
  CohortSpec
    { cohortReportSettings = Core.Nothing
    , cohorts = Core.Nothing
    , cohortsRange = Core.Nothing
    }

instance Core.FromJSON CohortSpec where
        parseJSON
          = Core.withObject "CohortSpec"
              (\ o ->
                 CohortSpec Core.<$>
                   (o Core..:? "cohortReportSettings") Core.<*>
                     (o Core..:? "cohorts")
                     Core.<*> (o Core..:? "cohortsRange"))

instance Core.ToJSON CohortSpec where
        toJSON CohortSpec{..}
          = Core.object
              (Core.catMaybes
                 [("cohortReportSettings" Core..=) Core.<$>
                    cohortReportSettings,
                  ("cohorts" Core..=) Core.<$> cohorts,
                  ("cohortsRange" Core..=) Core.<$> cohortsRange])


-- | Configures the extended reporting date range for a cohort report. Specifies an offset duration to follow the cohorts over.
--
-- /See:/ 'newCohortsRange' smart constructor.
data CohortsRange = CohortsRange
    {
      -- | Required. @endOffset@ specifies the end date of the extended reporting date range for a cohort report. @endOffset@ can be any positive integer but is commonly set to 5 to 10 so that reports contain data on the cohort for the next several granularity time periods. If @granularity@ is @DAILY@, the @endDate@ of the extended reporting date range is @endDate@ of the cohort plus @endOffset@ days. If @granularity@ is @WEEKLY@, the @endDate@ of the extended reporting date range is @endDate@ of the cohort plus @endOffset * 7@ days. If @granularity@ is @MONTHLY@, the @endDate@ of the extended reporting date range is @endDate@ of the cohort plus @endOffset * 30@ days.
      endOffset :: (Core.Maybe Core.Int32)
      -- | Required. The granularity used to interpret the @startOffset@ and @endOffset@ for the extended reporting date range for a cohort report.
    , granularity :: (Core.Maybe CohortsRange_Granularity)
      -- | @startOffset@ specifies the start date of the extended reporting date range for a cohort report. @startOffset@ is commonly set to 0 so that reports contain data from the acquisition of the cohort forward. If @granularity@ is @DAILY@, the @startDate@ of the extended reporting date range is @startDate@ of the cohort plus @startOffset@ days. If @granularity@ is @WEEKLY@, the @startDate@ of the extended reporting date range is @startDate@ of the cohort plus @startOffset * 7@ days. If @granularity@ is @MONTHLY@, the @startDate@ of the extended reporting date range is @startDate@ of the cohort plus @startOffset * 30@ days.
    , startOffset :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CohortsRange' with the minimum fields required to make a request.
newCohortsRange 
    ::  CohortsRange
newCohortsRange =
  CohortsRange
    { endOffset = Core.Nothing
    , granularity = Core.Nothing
    , startOffset = Core.Nothing
    }

instance Core.FromJSON CohortsRange where
        parseJSON
          = Core.withObject "CohortsRange"
              (\ o ->
                 CohortsRange Core.<$>
                   (o Core..:? "endOffset") Core.<*>
                     (o Core..:? "granularity")
                     Core.<*> (o Core..:? "startOffset"))

instance Core.ToJSON CohortsRange where
        toJSON CohortsRange{..}
          = Core.object
              (Core.catMaybes
                 [("endOffset" Core..=) Core.<$> endOffset,
                  ("granularity" Core..=) Core.<$> granularity,
                  ("startOffset" Core..=) Core.<$> startOffset])


-- | Used to combine dimension values to a single dimension.
--
-- /See:/ 'newConcatenateExpression' smart constructor.
data ConcatenateExpression = ConcatenateExpression
    {
      -- | The delimiter placed between dimension names. Delimiters are often single characters such as \"|\" or \",\" but can be longer strings. If a dimension value contains the delimiter, both will be present in response with no distinction. For example if dimension 1 value = \"US,FR\", dimension 2 value = \"JP\", and delimiter = \",\", then the response will contain \"US,FR,JP\".
      delimiter :: (Core.Maybe Core.Text)
      -- | Names of dimensions. The names must refer back to names in the dimensions field of the request.
    , dimensionNames :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConcatenateExpression' with the minimum fields required to make a request.
newConcatenateExpression 
    ::  ConcatenateExpression
newConcatenateExpression =
  ConcatenateExpression
    {delimiter = Core.Nothing, dimensionNames = Core.Nothing}

instance Core.FromJSON ConcatenateExpression where
        parseJSON
          = Core.withObject "ConcatenateExpression"
              (\ o ->
                 ConcatenateExpression Core.<$>
                   (o Core..:? "delimiter") Core.<*>
                     (o Core..:? "dimensionNames"))

instance Core.ToJSON ConcatenateExpression where
        toJSON ConcatenateExpression{..}
          = Core.object
              (Core.catMaybes
                 [("delimiter" Core..=) Core.<$> delimiter,
                  ("dimensionNames" Core..=) Core.<$> dimensionNames])


-- | A contiguous set of days: startDate, startDate + 1, ..., endDate. Requests are allowed up to 4 date ranges.
--
-- /See:/ 'newDateRange' smart constructor.
data DateRange = DateRange
    {
      -- | The inclusive end date for the query in the format @YYYY-MM-DD@. Cannot be before @start_date@. The format @NdaysAgo@, @yesterday@, or @today@ is also accepted, and in that case, the date is inferred based on the property\'s reporting time zone.
      endDate :: (Core.Maybe Core.Text)
      -- | Assigns a name to this date range. The dimension @dateRange@ is valued to this name in a report response. If set, cannot begin with @date_range_@ or @RESERVED_@. If not set, date ranges are named by their zero based index in the request: @date_range_0@, @date_range_1@, etc.
    , name :: (Core.Maybe Core.Text)
      -- | The inclusive start date for the query in the format @YYYY-MM-DD@. Cannot be after @end_date@. The format @NdaysAgo@, @yesterday@, or @today@ is also accepted, and in that case, the date is inferred based on the property\'s reporting time zone.
    , startDate :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DateRange' with the minimum fields required to make a request.
newDateRange 
    ::  DateRange
newDateRange =
  DateRange
    {endDate = Core.Nothing, name = Core.Nothing, startDate = Core.Nothing}

instance Core.FromJSON DateRange where
        parseJSON
          = Core.withObject "DateRange"
              (\ o ->
                 DateRange Core.<$>
                   (o Core..:? "endDate") Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "startDate"))

instance Core.ToJSON DateRange where
        toJSON DateRange{..}
          = Core.object
              (Core.catMaybes
                 [("endDate" Core..=) Core.<$> endDate,
                  ("name" Core..=) Core.<$> name,
                  ("startDate" Core..=) Core.<$> startDate])


-- | Dimensions are attributes of your data. For example, the dimension city indicates the city from which an event originates. Dimension values in report responses are strings; for example, the city could be \"Paris\" or \"New York\". Requests are allowed up to 9 dimensions.
--
-- /See:/ 'newDimension' smart constructor.
data Dimension = Dimension
    {
      -- | One dimension can be the result of an expression of multiple dimensions. For example, dimension \"country, city\": concatenate(country, \", \", city).
      dimensionExpression :: (Core.Maybe DimensionExpression)
      -- | The name of the dimension. See the <https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#dimensions API Dimensions> for the list of dimension names. If @dimensionExpression@ is specified, @name@ can be any string that you would like within the allowed character set. For example if a @dimensionExpression@ concatenates @country@ and @city@, you could call that dimension @countryAndCity@. Dimension names that you choose must match the regular expression @^[a-zA-Z0-9_]$@. Dimensions are referenced by @name@ in @dimensionFilter@, @orderBys@, @dimensionExpression@, and @pivots@.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Dimension' with the minimum fields required to make a request.
newDimension 
    ::  Dimension
newDimension =
  Dimension {dimensionExpression = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Dimension where
        parseJSON
          = Core.withObject "Dimension"
              (\ o ->
                 Dimension Core.<$>
                   (o Core..:? "dimensionExpression") Core.<*>
                     (o Core..:? "name"))

instance Core.ToJSON Dimension where
        toJSON Dimension{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionExpression" Core..=) Core.<$>
                    dimensionExpression,
                  ("name" Core..=) Core.<$> name])


-- | The compatibility for a single dimension.
--
-- /See:/ 'newDimensionCompatibility' smart constructor.
data DimensionCompatibility = DimensionCompatibility
    {
      -- | The compatibility of this dimension. If the compatibility is COMPATIBLE, this dimension can be successfully added to the report.
      compatibility :: (Core.Maybe DimensionCompatibility_Compatibility)
      -- | The dimension metadata contains the API name for this compatibility information. The dimension metadata also contains other helpful information like the UI name and description.
    , dimensionMetadata :: (Core.Maybe DimensionMetadata)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionCompatibility' with the minimum fields required to make a request.
newDimensionCompatibility 
    ::  DimensionCompatibility
newDimensionCompatibility =
  DimensionCompatibility
    {compatibility = Core.Nothing, dimensionMetadata = Core.Nothing}

instance Core.FromJSON DimensionCompatibility where
        parseJSON
          = Core.withObject "DimensionCompatibility"
              (\ o ->
                 DimensionCompatibility Core.<$>
                   (o Core..:? "compatibility") Core.<*>
                     (o Core..:? "dimensionMetadata"))

instance Core.ToJSON DimensionCompatibility where
        toJSON DimensionCompatibility{..}
          = Core.object
              (Core.catMaybes
                 [("compatibility" Core..=) Core.<$> compatibility,
                  ("dimensionMetadata" Core..=) Core.<$>
                    dimensionMetadata])


-- | Used to express a dimension which is the result of a formula of multiple dimensions. Example usages: 1) lower_case(dimension) 2) concatenate(dimension1, symbol, dimension2).
--
-- /See:/ 'newDimensionExpression' smart constructor.
data DimensionExpression = DimensionExpression
    {
      -- | Used to combine dimension values to a single dimension. For example, dimension \"country, city\": concatenate(country, \", \", city).
      concatenate :: (Core.Maybe ConcatenateExpression)
      -- | Used to convert a dimension value to lower case.
    , lowerCase :: (Core.Maybe CaseExpression)
      -- | Used to convert a dimension value to upper case.
    , upperCase :: (Core.Maybe CaseExpression)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionExpression' with the minimum fields required to make a request.
newDimensionExpression 
    ::  DimensionExpression
newDimensionExpression =
  DimensionExpression
    { concatenate = Core.Nothing
    , lowerCase = Core.Nothing
    , upperCase = Core.Nothing
    }

instance Core.FromJSON DimensionExpression where
        parseJSON
          = Core.withObject "DimensionExpression"
              (\ o ->
                 DimensionExpression Core.<$>
                   (o Core..:? "concatenate") Core.<*>
                     (o Core..:? "lowerCase")
                     Core.<*> (o Core..:? "upperCase"))

instance Core.ToJSON DimensionExpression where
        toJSON DimensionExpression{..}
          = Core.object
              (Core.catMaybes
                 [("concatenate" Core..=) Core.<$> concatenate,
                  ("lowerCase" Core..=) Core.<$> lowerCase,
                  ("upperCase" Core..=) Core.<$> upperCase])


-- | Describes a dimension column in the report. Dimensions requested in a report produce column entries within rows and DimensionHeaders. However, dimensions used exclusively within filters or expressions do not produce columns in a report; correspondingly, those dimensions do not produce headers.
--
-- /See:/ 'newDimensionHeader' smart constructor.
newtype DimensionHeader = DimensionHeader
    {
      -- | The dimension\'s name.
      name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionHeader' with the minimum fields required to make a request.
newDimensionHeader 
    ::  DimensionHeader
newDimensionHeader = DimensionHeader {name = Core.Nothing}

instance Core.FromJSON DimensionHeader where
        parseJSON
          = Core.withObject "DimensionHeader"
              (\ o -> DimensionHeader Core.<$> (o Core..:? "name"))

instance Core.ToJSON DimensionHeader where
        toJSON DimensionHeader{..}
          = Core.object
              (Core.catMaybes [("name" Core..=) Core.<$> name])


-- | Explains a dimension.
--
-- /See:/ 'newDimensionMetadata' smart constructor.
data DimensionMetadata = DimensionMetadata
    {
      -- | This dimension\'s name. Useable in <#Dimension Dimension>\'s @name@. For example, @eventName@.
      apiName :: (Core.Maybe Core.Text)
      -- | The display name of the category that this dimension belongs to. Similar dimensions and metrics are categorized together.
    , category :: (Core.Maybe Core.Text)
      -- | True if the dimension is a custom dimension for this property.
    , customDefinition :: (Core.Maybe Core.Bool)
      -- | Still usable but deprecated names for this dimension. If populated, this dimension is available by either @apiName@ or one of @deprecatedApiNames@ for a period of time. After the deprecation period, the dimension will be available only by @apiName@.
    , deprecatedApiNames :: (Core.Maybe [Core.Text])
      -- | Description of how this dimension is used and calculated.
    , description :: (Core.Maybe Core.Text)
      -- | This dimension\'s name within the Google Analytics user interface. For example, @Event name@.
    , uiName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionMetadata' with the minimum fields required to make a request.
newDimensionMetadata 
    ::  DimensionMetadata
newDimensionMetadata =
  DimensionMetadata
    { apiName = Core.Nothing
    , category = Core.Nothing
    , customDefinition = Core.Nothing
    , deprecatedApiNames = Core.Nothing
    , description = Core.Nothing
    , uiName = Core.Nothing
    }

instance Core.FromJSON DimensionMetadata where
        parseJSON
          = Core.withObject "DimensionMetadata"
              (\ o ->
                 DimensionMetadata Core.<$>
                   (o Core..:? "apiName") Core.<*>
                     (o Core..:? "category")
                     Core.<*> (o Core..:? "customDefinition")
                     Core.<*> (o Core..:? "deprecatedApiNames")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "uiName"))

instance Core.ToJSON DimensionMetadata where
        toJSON DimensionMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("apiName" Core..=) Core.<$> apiName,
                  ("category" Core..=) Core.<$> category,
                  ("customDefinition" Core..=) Core.<$>
                    customDefinition,
                  ("deprecatedApiNames" Core..=) Core.<$>
                    deprecatedApiNames,
                  ("description" Core..=) Core.<$> description,
                  ("uiName" Core..=) Core.<$> uiName])


-- | Sorts by dimension values.
--
-- /See:/ 'newDimensionOrderBy' smart constructor.
data DimensionOrderBy = DimensionOrderBy
    {
      -- | A dimension name in the request to order by.
      dimensionName :: (Core.Maybe Core.Text)
      -- | Controls the rule for dimension value ordering.
    , orderType :: (Core.Maybe DimensionOrderBy_OrderType)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionOrderBy' with the minimum fields required to make a request.
newDimensionOrderBy 
    ::  DimensionOrderBy
newDimensionOrderBy =
  DimensionOrderBy {dimensionName = Core.Nothing, orderType = Core.Nothing}

instance Core.FromJSON DimensionOrderBy where
        parseJSON
          = Core.withObject "DimensionOrderBy"
              (\ o ->
                 DimensionOrderBy Core.<$>
                   (o Core..:? "dimensionName") Core.<*>
                     (o Core..:? "orderType"))

instance Core.ToJSON DimensionOrderBy where
        toJSON DimensionOrderBy{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionName" Core..=) Core.<$> dimensionName,
                  ("orderType" Core..=) Core.<$> orderType])


-- | The value of a dimension.
--
-- /See:/ 'newDimensionValue' smart constructor.
newtype DimensionValue = DimensionValue
    {
      -- | Value as a string if the dimension type is a string.
      value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DimensionValue' with the minimum fields required to make a request.
newDimensionValue 
    ::  DimensionValue
newDimensionValue = DimensionValue {value = Core.Nothing}

instance Core.FromJSON DimensionValue where
        parseJSON
          = Core.withObject "DimensionValue"
              (\ o -> DimensionValue Core.<$> (o Core..:? "value"))

instance Core.ToJSON DimensionValue where
        toJSON DimensionValue{..}
          = Core.object
              (Core.catMaybes [("value" Core..=) Core.<$> value])


-- | An expression to filter dimension or metric values.
--
-- /See:/ 'newFilter' smart constructor.
data Filter = Filter
    {
      -- | A filter for two values.
      betweenFilter :: (Core.Maybe BetweenFilter)
      -- | The dimension name or metric name. In most methods, dimensions & metrics can be used for the first time in this field. However in a RunPivotReportRequest, this field must be additionally specified by name in the RunPivotReportRequest\'s dimensions or metrics.
    , fieldName :: (Core.Maybe Core.Text)
      -- | A filter for in list values.
    , inListFilter :: (Core.Maybe InListFilter)
      -- | A filter for numeric or date values.
    , numericFilter :: (Core.Maybe NumericFilter)
      -- | Strings related filter.
    , stringFilter :: (Core.Maybe StringFilter)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Filter' with the minimum fields required to make a request.
newFilter 
    ::  Filter
newFilter =
  Filter
    { betweenFilter = Core.Nothing
    , fieldName = Core.Nothing
    , inListFilter = Core.Nothing
    , numericFilter = Core.Nothing
    , stringFilter = Core.Nothing
    }

instance Core.FromJSON Filter where
        parseJSON
          = Core.withObject "Filter"
              (\ o ->
                 Filter Core.<$>
                   (o Core..:? "betweenFilter") Core.<*>
                     (o Core..:? "fieldName")
                     Core.<*> (o Core..:? "inListFilter")
                     Core.<*> (o Core..:? "numericFilter")
                     Core.<*> (o Core..:? "stringFilter"))

instance Core.ToJSON Filter where
        toJSON Filter{..}
          = Core.object
              (Core.catMaybes
                 [("betweenFilter" Core..=) Core.<$> betweenFilter,
                  ("fieldName" Core..=) Core.<$> fieldName,
                  ("inListFilter" Core..=) Core.<$> inListFilter,
                  ("numericFilter" Core..=) Core.<$> numericFilter,
                  ("stringFilter" Core..=) Core.<$> stringFilter])


-- | To express dimension or metric filters. The fields in the same FilterExpression need to be either all dimensions or all metrics.
--
-- /See:/ 'newFilterExpression' smart constructor.
data FilterExpression = FilterExpression
    {
      -- | The FilterExpressions in and_group have an AND relationship.
      andGroup :: (Core.Maybe FilterExpressionList)
      -- | A primitive filter. In the same FilterExpression, all of the filter\'s field names need to be either all dimensions or all metrics.
    , filter :: (Core.Maybe Filter)
      -- | The FilterExpression is NOT of not_expression.
    , notExpression :: (Core.Maybe FilterExpression)
      -- | The FilterExpressions in or_group have an OR relationship.
    , orGroup :: (Core.Maybe FilterExpressionList)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterExpression' with the minimum fields required to make a request.
newFilterExpression 
    ::  FilterExpression
newFilterExpression =
  FilterExpression
    { andGroup = Core.Nothing
    , filter = Core.Nothing
    , notExpression = Core.Nothing
    , orGroup = Core.Nothing
    }

instance Core.FromJSON FilterExpression where
        parseJSON
          = Core.withObject "FilterExpression"
              (\ o ->
                 FilterExpression Core.<$>
                   (o Core..:? "andGroup") Core.<*>
                     (o Core..:? "filter")
                     Core.<*> (o Core..:? "notExpression")
                     Core.<*> (o Core..:? "orGroup"))

instance Core.ToJSON FilterExpression where
        toJSON FilterExpression{..}
          = Core.object
              (Core.catMaybes
                 [("andGroup" Core..=) Core.<$> andGroup,
                  ("filter" Core..=) Core.<$> filter,
                  ("notExpression" Core..=) Core.<$> notExpression,
                  ("orGroup" Core..=) Core.<$> orGroup])


-- | A list of filter expressions.
--
-- /See:/ 'newFilterExpressionList' smart constructor.
newtype FilterExpressionList = FilterExpressionList
    {
      -- | A list of filter expressions.
      expressions :: (Core.Maybe [FilterExpression])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FilterExpressionList' with the minimum fields required to make a request.
newFilterExpressionList 
    ::  FilterExpressionList
newFilterExpressionList = FilterExpressionList {expressions = Core.Nothing}

instance Core.FromJSON FilterExpressionList where
        parseJSON
          = Core.withObject "FilterExpressionList"
              (\ o ->
                 FilterExpressionList Core.<$>
                   (o Core..:? "expressions"))

instance Core.ToJSON FilterExpressionList where
        toJSON FilterExpressionList{..}
          = Core.object
              (Core.catMaybes
                 [("expressions" Core..=) Core.<$> expressions])


-- | The result needs to be in a list of string values.
--
-- /See:/ 'newInListFilter' smart constructor.
data InListFilter = InListFilter
    {
      -- | If true, the string value is case sensitive.
      caseSensitive :: (Core.Maybe Core.Bool)
      -- | The list of string values. Must be non-empty.
    , values :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InListFilter' with the minimum fields required to make a request.
newInListFilter 
    ::  InListFilter
newInListFilter =
  InListFilter {caseSensitive = Core.Nothing, values = Core.Nothing}

instance Core.FromJSON InListFilter where
        parseJSON
          = Core.withObject "InListFilter"
              (\ o ->
                 InListFilter Core.<$>
                   (o Core..:? "caseSensitive") Core.<*>
                     (o Core..:? "values"))

instance Core.ToJSON InListFilter where
        toJSON InListFilter{..}
          = Core.object
              (Core.catMaybes
                 [("caseSensitive" Core..=) Core.<$> caseSensitive,
                  ("values" Core..=) Core.<$> values])


-- | The dimensions and metrics currently accepted in reporting methods.
--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
    {
      -- | The dimension descriptions.
      dimensions :: (Core.Maybe [DimensionMetadata])
      -- | The metric descriptions.
    , metrics :: (Core.Maybe [MetricMetadata])
      -- | Resource name of this metadata.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata 
    ::  Metadata
newMetadata =
  Metadata
    {dimensions = Core.Nothing, metrics = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Metadata where
        parseJSON
          = Core.withObject "Metadata"
              (\ o ->
                 Metadata Core.<$>
                   (o Core..:? "dimensions") Core.<*>
                     (o Core..:? "metrics")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Metadata where
        toJSON Metadata{..}
          = Core.object
              (Core.catMaybes
                 [("dimensions" Core..=) Core.<$> dimensions,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("name" Core..=) Core.<$> name])


-- | The quantitative measurements of a report. For example, the metric @eventCount@ is the total number of events. Requests are allowed up to 10 metrics.
--
-- /See:/ 'newMetric' smart constructor.
data Metric = Metric
    {
      -- | A mathematical expression for derived metrics. For example, the metric Event count per user is @eventCount\/totalUsers@.
      expression :: (Core.Maybe Core.Text)
      -- | Indicates if a metric is invisible in the report response. If a metric is invisible, the metric will not produce a column in the response, but can be used in @metricFilter@, @orderBys@, or a metric @expression@.
    , invisible :: (Core.Maybe Core.Bool)
      -- | The name of the metric. See the <https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#metrics API Metrics> for the list of metric names. If @expression@ is specified, @name@ can be any string that you would like within the allowed character set. For example if @expression@ is @screenPageViews\/sessions@, you could call that metric\'s name = @viewsPerSession@. Metric names that you choose must match the regular expression @^[a-zA-Z0-9_]$@. Metrics are referenced by @name@ in @metricFilter@, @orderBys@, and metric @expression@.
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metric' with the minimum fields required to make a request.
newMetric 
    ::  Metric
newMetric =
  Metric
    {expression = Core.Nothing, invisible = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON Metric where
        parseJSON
          = Core.withObject "Metric"
              (\ o ->
                 Metric Core.<$>
                   (o Core..:? "expression") Core.<*>
                     (o Core..:? "invisible")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Metric where
        toJSON Metric{..}
          = Core.object
              (Core.catMaybes
                 [("expression" Core..=) Core.<$> expression,
                  ("invisible" Core..=) Core.<$> invisible,
                  ("name" Core..=) Core.<$> name])


-- | The compatibility for a single metric.
--
-- /See:/ 'newMetricCompatibility' smart constructor.
data MetricCompatibility = MetricCompatibility
    {
      -- | The compatibility of this metric. If the compatibility is COMPATIBLE, this metric can be successfully added to the report.
      compatibility :: (Core.Maybe MetricCompatibility_Compatibility)
      -- | The metric metadata contains the API name for this compatibility information. The metric metadata also contains other helpful information like the UI name and description.
    , metricMetadata :: (Core.Maybe MetricMetadata)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricCompatibility' with the minimum fields required to make a request.
newMetricCompatibility 
    ::  MetricCompatibility
newMetricCompatibility =
  MetricCompatibility
    {compatibility = Core.Nothing, metricMetadata = Core.Nothing}

instance Core.FromJSON MetricCompatibility where
        parseJSON
          = Core.withObject "MetricCompatibility"
              (\ o ->
                 MetricCompatibility Core.<$>
                   (o Core..:? "compatibility") Core.<*>
                     (o Core..:? "metricMetadata"))

instance Core.ToJSON MetricCompatibility where
        toJSON MetricCompatibility{..}
          = Core.object
              (Core.catMaybes
                 [("compatibility" Core..=) Core.<$> compatibility,
                  ("metricMetadata" Core..=) Core.<$> metricMetadata])


-- | Describes a metric column in the report. Visible metrics requested in a report produce column entries within rows and MetricHeaders. However, metrics used exclusively within filters or expressions do not produce columns in a report; correspondingly, those metrics do not produce headers.
--
-- /See:/ 'newMetricHeader' smart constructor.
data MetricHeader = MetricHeader
    {
      -- | The metric\'s name.
      name :: (Core.Maybe Core.Text)
      -- | The metric\'s data type.
    , type' :: (Core.Maybe MetricHeader_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricHeader' with the minimum fields required to make a request.
newMetricHeader 
    ::  MetricHeader
newMetricHeader = MetricHeader {name = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON MetricHeader where
        parseJSON
          = Core.withObject "MetricHeader"
              (\ o ->
                 MetricHeader Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "type"))

instance Core.ToJSON MetricHeader where
        toJSON MetricHeader{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type'])


-- | Explains a metric.
--
-- /See:/ 'newMetricMetadata' smart constructor.
data MetricMetadata = MetricMetadata
    {
      -- | A metric name. Useable in <#Metric Metric>\'s @name@. For example, @eventCount@.
      apiName :: (Core.Maybe Core.Text)
      -- | If reasons are specified, your access is blocked to this metric for this property. API requests from you to this property for this metric will succeed; however, the report will contain only zeros for this metric. API requests with metric filters on blocked metrics will fail. If reasons are empty, you have access to this metric. To learn more, see <https://support.google.com/analytics/answer/10851388 Access and data-restriction management>.
    , blockedReasons :: (Core.Maybe [MetricMetadata_BlockedReasonsItem])
      -- | The display name of the category that this metrics belongs to. Similar dimensions and metrics are categorized together.
    , category :: (Core.Maybe Core.Text)
      -- | True if the metric is a custom metric for this property.
    , customDefinition :: (Core.Maybe Core.Bool)
      -- | Still usable but deprecated names for this metric. If populated, this metric is available by either @apiName@ or one of @deprecatedApiNames@ for a period of time. After the deprecation period, the metric will be available only by @apiName@.
    , deprecatedApiNames :: (Core.Maybe [Core.Text])
      -- | Description of how this metric is used and calculated.
    , description :: (Core.Maybe Core.Text)
      -- | The mathematical expression for this derived metric. Can be used in <#Metric Metric>\'s @expression@ field for equivalent reports. Most metrics are not expressions, and for non-expressions, this field is empty.
    , expression :: (Core.Maybe Core.Text)
      -- | The type of this metric.
    , type' :: (Core.Maybe MetricMetadata_Type)
      -- | This metric\'s name within the Google Analytics user interface. For example, @Event count@.
    , uiName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricMetadata' with the minimum fields required to make a request.
newMetricMetadata 
    ::  MetricMetadata
newMetricMetadata =
  MetricMetadata
    { apiName = Core.Nothing
    , blockedReasons = Core.Nothing
    , category = Core.Nothing
    , customDefinition = Core.Nothing
    , deprecatedApiNames = Core.Nothing
    , description = Core.Nothing
    , expression = Core.Nothing
    , type' = Core.Nothing
    , uiName = Core.Nothing
    }

instance Core.FromJSON MetricMetadata where
        parseJSON
          = Core.withObject "MetricMetadata"
              (\ o ->
                 MetricMetadata Core.<$>
                   (o Core..:? "apiName") Core.<*>
                     (o Core..:? "blockedReasons")
                     Core.<*> (o Core..:? "category")
                     Core.<*> (o Core..:? "customDefinition")
                     Core.<*> (o Core..:? "deprecatedApiNames")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "expression")
                     Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "uiName"))

instance Core.ToJSON MetricMetadata where
        toJSON MetricMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("apiName" Core..=) Core.<$> apiName,
                  ("blockedReasons" Core..=) Core.<$> blockedReasons,
                  ("category" Core..=) Core.<$> category,
                  ("customDefinition" Core..=) Core.<$>
                    customDefinition,
                  ("deprecatedApiNames" Core..=) Core.<$>
                    deprecatedApiNames,
                  ("description" Core..=) Core.<$> description,
                  ("expression" Core..=) Core.<$> expression,
                  ("type" Core..=) Core.<$> type',
                  ("uiName" Core..=) Core.<$> uiName])


-- | Sorts by metric values.
--
-- /See:/ 'newMetricOrderBy' smart constructor.
newtype MetricOrderBy = MetricOrderBy
    {
      -- | A metric name in the request to order by.
      metricName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricOrderBy' with the minimum fields required to make a request.
newMetricOrderBy 
    ::  MetricOrderBy
newMetricOrderBy = MetricOrderBy {metricName = Core.Nothing}

instance Core.FromJSON MetricOrderBy where
        parseJSON
          = Core.withObject "MetricOrderBy"
              (\ o ->
                 MetricOrderBy Core.<$> (o Core..:? "metricName"))

instance Core.ToJSON MetricOrderBy where
        toJSON MetricOrderBy{..}
          = Core.object
              (Core.catMaybes
                 [("metricName" Core..=) Core.<$> metricName])


-- | The value of a metric.
--
-- /See:/ 'newMetricValue' smart constructor.
newtype MetricValue = MetricValue
    {
      -- | Measurement value. See MetricHeader for type.
      value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetricValue' with the minimum fields required to make a request.
newMetricValue 
    ::  MetricValue
newMetricValue = MetricValue {value = Core.Nothing}

instance Core.FromJSON MetricValue where
        parseJSON
          = Core.withObject "MetricValue"
              (\ o -> MetricValue Core.<$> (o Core..:? "value"))

instance Core.ToJSON MetricValue where
        toJSON MetricValue{..}
          = Core.object
              (Core.catMaybes [("value" Core..=) Core.<$> value])


-- | A contiguous set of minutes: startMinutesAgo, startMinutesAgo + 1, ..., endMinutesAgo. Requests are allowed up to 2 minute ranges.
--
-- /See:/ 'newMinuteRange' smart constructor.
data MinuteRange = MinuteRange
    {
      -- | The inclusive end minute for the query as a number of minutes before now. Cannot be before @startMinutesAgo@. For example, @\"endMinutesAgo\": 15@ specifies the report should include event data from prior to 15 minutes ago. If unspecified, @endMinutesAgo@ is defaulted to 0. Standard Analytics properties can request any minute in the last 30 minutes of event data (@endMinutesAgo \<= 29@), and 360 Analytics properties can request any minute in the last 60 minutes of event data (@endMinutesAgo \<= 59@).
      endMinutesAgo :: (Core.Maybe Core.Int32)
      -- | Assigns a name to this minute range. The dimension @dateRange@ is valued to this name in a report response. If set, cannot begin with @date_range_@ or @RESERVED_@. If not set, minute ranges are named by their zero based index in the request: @date_range_0@, @date_range_1@, etc.
    , name :: (Core.Maybe Core.Text)
      -- | The inclusive start minute for the query as a number of minutes before now. For example, @\"startMinutesAgo\": 29@ specifies the report should include event data from 29 minutes ago and after. Cannot be after @endMinutesAgo@. If unspecified, @startMinutesAgo@ is defaulted to 29. Standard Analytics properties can request up to the last 30 minutes of event data (@startMinutesAgo \<= 29@), and 360 Analytics properties can request up to the last 60 minutes of event data (@startMinutesAgo \<= 59@).
    , startMinutesAgo :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MinuteRange' with the minimum fields required to make a request.
newMinuteRange 
    ::  MinuteRange
newMinuteRange =
  MinuteRange
    { endMinutesAgo = Core.Nothing
    , name = Core.Nothing
    , startMinutesAgo = Core.Nothing
    }

instance Core.FromJSON MinuteRange where
        parseJSON
          = Core.withObject "MinuteRange"
              (\ o ->
                 MinuteRange Core.<$>
                   (o Core..:? "endMinutesAgo") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "startMinutesAgo"))

instance Core.ToJSON MinuteRange where
        toJSON MinuteRange{..}
          = Core.object
              (Core.catMaybes
                 [("endMinutesAgo" Core..=) Core.<$> endMinutesAgo,
                  ("name" Core..=) Core.<$> name,
                  ("startMinutesAgo" Core..=) Core.<$>
                    startMinutesAgo])


-- | Filters for numeric or date values.
--
-- /See:/ 'newNumericFilter' smart constructor.
data NumericFilter = NumericFilter
    {
      -- | The operation type for this filter.
      operation :: (Core.Maybe NumericFilter_Operation)
      -- | A numeric value or a date value.
    , value :: (Core.Maybe NumericValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NumericFilter' with the minimum fields required to make a request.
newNumericFilter 
    ::  NumericFilter
newNumericFilter =
  NumericFilter {operation = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON NumericFilter where
        parseJSON
          = Core.withObject "NumericFilter"
              (\ o ->
                 NumericFilter Core.<$>
                   (o Core..:? "operation") Core.<*>
                     (o Core..:? "value"))

instance Core.ToJSON NumericFilter where
        toJSON NumericFilter{..}
          = Core.object
              (Core.catMaybes
                 [("operation" Core..=) Core.<$> operation,
                  ("value" Core..=) Core.<$> value])


-- | To represent a number.
--
-- /See:/ 'newNumericValue' smart constructor.
data NumericValue = NumericValue
    {
      -- | Double value
      doubleValue :: (Core.Maybe Core.Double)
      -- | Integer value
    , int64Value :: (Core.Maybe Core.Int64)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NumericValue' with the minimum fields required to make a request.
newNumericValue 
    ::  NumericValue
newNumericValue =
  NumericValue {doubleValue = Core.Nothing, int64Value = Core.Nothing}

instance Core.FromJSON NumericValue where
        parseJSON
          = Core.withObject "NumericValue"
              (\ o ->
                 NumericValue Core.<$>
                   (o Core..:? "doubleValue") Core.<*>
                     (o Core..:? "int64Value" Core.<&>
                        Core.fmap Core.fromAsText))

instance Core.ToJSON NumericValue where
        toJSON NumericValue{..}
          = Core.object
              (Core.catMaybes
                 [("doubleValue" Core..=) Core.<$> doubleValue,
                  ("int64Value" Core..=) Core.. Core.AsText Core.<$>
                    int64Value])


-- | Order bys define how rows will be sorted in the response. For example, ordering rows by descending event count is one ordering, and ordering rows by the event name string is a different ordering.
--
-- /See:/ 'newOrderBy' smart constructor.
data OrderBy = OrderBy
    {
      -- | If true, sorts by descending order.
      desc :: (Core.Maybe Core.Bool)
      -- | Sorts results by a dimension\'s values.
    , dimension :: (Core.Maybe DimensionOrderBy)
      -- | Sorts results by a metric\'s values.
    , metric :: (Core.Maybe MetricOrderBy)
      -- | Sorts results by a metric\'s values within a pivot column group.
    , pivot :: (Core.Maybe PivotOrderBy)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OrderBy' with the minimum fields required to make a request.
newOrderBy 
    ::  OrderBy
newOrderBy =
  OrderBy
    { desc = Core.Nothing
    , dimension = Core.Nothing
    , metric = Core.Nothing
    , pivot = Core.Nothing
    }

instance Core.FromJSON OrderBy where
        parseJSON
          = Core.withObject "OrderBy"
              (\ o ->
                 OrderBy Core.<$>
                   (o Core..:? "desc") Core.<*> (o Core..:? "dimension")
                     Core.<*> (o Core..:? "metric")
                     Core.<*> (o Core..:? "pivot"))

instance Core.ToJSON OrderBy where
        toJSON OrderBy{..}
          = Core.object
              (Core.catMaybes
                 [("desc" Core..=) Core.<$> desc,
                  ("dimension" Core..=) Core.<$> dimension,
                  ("metric" Core..=) Core.<$> metric,
                  ("pivot" Core..=) Core.<$> pivot])


-- | Describes the visible dimension columns and rows in the report response.
--
-- /See:/ 'newPivot' smart constructor.
data Pivot = Pivot
    {
      -- | Dimension names for visible columns in the report response. Including \"dateRange\" produces a date range column; for each row in the response, dimension values in the date range column will indicate the corresponding date range from the request.
      fieldNames :: (Core.Maybe [Core.Text])
      -- | The number of unique combinations of dimension values to return in this pivot. The @limit@ parameter is required. A @limit@ of 10,000 is common for single pivot requests. The product of the @limit@ for each @pivot@ in a @RunPivotReportRequest@ must not exceed 250,000. For example, a two pivot request with @limit: 1000@ in each pivot will fail because the product is @1,000,000@.
    , limit :: (Core.Maybe Core.Int64)
      -- | Aggregate the metrics by dimensions in this pivot using the specified metric_aggregations.
    , metricAggregations :: (Core.Maybe [Pivot_MetricAggregationsItem])
      -- | The row count of the start row. The first row is counted as row 0.
    , offset :: (Core.Maybe Core.Int64)
      -- | Specifies how dimensions are ordered in the pivot. In the first Pivot, the OrderBys determine Row and PivotDimensionHeader ordering; in subsequent Pivots, the OrderBys determine only PivotDimensionHeader ordering. Dimensions specified in these OrderBys must be a subset of Pivot.field_names.
    , orderBys :: (Core.Maybe [OrderBy])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pivot' with the minimum fields required to make a request.
newPivot 
    ::  Pivot
newPivot =
  Pivot
    { fieldNames = Core.Nothing
    , limit = Core.Nothing
    , metricAggregations = Core.Nothing
    , offset = Core.Nothing
    , orderBys = Core.Nothing
    }

instance Core.FromJSON Pivot where
        parseJSON
          = Core.withObject "Pivot"
              (\ o ->
                 Pivot Core.<$>
                   (o Core..:? "fieldNames") Core.<*>
                     (o Core..:? "limit" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "metricAggregations")
                     Core.<*>
                     (o Core..:? "offset" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "orderBys"))

instance Core.ToJSON Pivot where
        toJSON Pivot{..}
          = Core.object
              (Core.catMaybes
                 [("fieldNames" Core..=) Core.<$> fieldNames,
                  ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
                  ("metricAggregations" Core..=) Core.<$>
                    metricAggregations,
                  ("offset" Core..=) Core.. Core.AsText Core.<$>
                    offset,
                  ("orderBys" Core..=) Core.<$> orderBys])


-- | Summarizes dimension values from a row for this pivot.
--
-- /See:/ 'newPivotDimensionHeader' smart constructor.
newtype PivotDimensionHeader = PivotDimensionHeader
    {
      -- | Values of multiple dimensions in a pivot.
      dimensionValues :: (Core.Maybe [DimensionValue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotDimensionHeader' with the minimum fields required to make a request.
newPivotDimensionHeader 
    ::  PivotDimensionHeader
newPivotDimensionHeader = PivotDimensionHeader {dimensionValues = Core.Nothing}

instance Core.FromJSON PivotDimensionHeader where
        parseJSON
          = Core.withObject "PivotDimensionHeader"
              (\ o ->
                 PivotDimensionHeader Core.<$>
                   (o Core..:? "dimensionValues"))

instance Core.ToJSON PivotDimensionHeader where
        toJSON PivotDimensionHeader{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionValues" Core..=) Core.<$>
                    dimensionValues])


-- | Dimensions\' values in a single pivot.
--
-- /See:/ 'newPivotHeader' smart constructor.
data PivotHeader = PivotHeader
    {
      -- | The size is the same as the cardinality of the corresponding dimension combinations.
      pivotDimensionHeaders :: (Core.Maybe [PivotDimensionHeader])
      -- | The cardinality of the pivot. The total number of rows for this pivot\'s fields regardless of how the parameters @offset@ and @limit@ are specified in the request.
    , rowCount :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotHeader' with the minimum fields required to make a request.
newPivotHeader 
    ::  PivotHeader
newPivotHeader =
  PivotHeader {pivotDimensionHeaders = Core.Nothing, rowCount = Core.Nothing}

instance Core.FromJSON PivotHeader where
        parseJSON
          = Core.withObject "PivotHeader"
              (\ o ->
                 PivotHeader Core.<$>
                   (o Core..:? "pivotDimensionHeaders") Core.<*>
                     (o Core..:? "rowCount"))

instance Core.ToJSON PivotHeader where
        toJSON PivotHeader{..}
          = Core.object
              (Core.catMaybes
                 [("pivotDimensionHeaders" Core..=) Core.<$>
                    pivotDimensionHeaders,
                  ("rowCount" Core..=) Core.<$> rowCount])


-- | Sorts by a pivot column group.
--
-- /See:/ 'newPivotOrderBy' smart constructor.
data PivotOrderBy = PivotOrderBy
    {
      -- | In the response to order by, order rows by this column. Must be a metric name from the request.
      metricName :: (Core.Maybe Core.Text)
      -- | Used to select a dimension name and value pivot. If multiple pivot selections are given, the sort occurs on rows where all pivot selection dimension name and value pairs match the row\'s dimension name and value pair.
    , pivotSelections :: (Core.Maybe [PivotSelection])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotOrderBy' with the minimum fields required to make a request.
newPivotOrderBy 
    ::  PivotOrderBy
newPivotOrderBy =
  PivotOrderBy {metricName = Core.Nothing, pivotSelections = Core.Nothing}

instance Core.FromJSON PivotOrderBy where
        parseJSON
          = Core.withObject "PivotOrderBy"
              (\ o ->
                 PivotOrderBy Core.<$>
                   (o Core..:? "metricName") Core.<*>
                     (o Core..:? "pivotSelections"))

instance Core.ToJSON PivotOrderBy where
        toJSON PivotOrderBy{..}
          = Core.object
              (Core.catMaybes
                 [("metricName" Core..=) Core.<$> metricName,
                  ("pivotSelections" Core..=) Core.<$>
                    pivotSelections])


-- | A pair of dimension names and values. Rows with this dimension pivot pair are ordered by the metric\'s value. For example if pivots = {{\"browser\", \"Chrome\"}} and metric_name = \"Sessions\", then the rows will be sorted based on Sessions in Chrome. ---------|----------|----------------|----------|---------------- | Chrome | Chrome | Safari | Safari ---------|----------|----------------|----------|---------------- Country | Sessions | Pages\/Sessions | Sessions | Pages\/Sessions ---------|----------|----------------|----------|---------------- US | 2 | 2 | 3 | 1 ---------|----------|----------------|----------|---------------- Canada | 3 | 1 | 4 | 1 ---------|----------|----------------|----------|----------------
--
-- /See:/ 'newPivotSelection' smart constructor.
data PivotSelection = PivotSelection
    {
      -- | Must be a dimension name from the request.
      dimensionName :: (Core.Maybe Core.Text)
      -- | Order by only when the named dimension is this value.
    , dimensionValue :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PivotSelection' with the minimum fields required to make a request.
newPivotSelection 
    ::  PivotSelection
newPivotSelection =
  PivotSelection {dimensionName = Core.Nothing, dimensionValue = Core.Nothing}

instance Core.FromJSON PivotSelection where
        parseJSON
          = Core.withObject "PivotSelection"
              (\ o ->
                 PivotSelection Core.<$>
                   (o Core..:? "dimensionName") Core.<*>
                     (o Core..:? "dimensionValue"))

instance Core.ToJSON PivotSelection where
        toJSON PivotSelection{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionName" Core..=) Core.<$> dimensionName,
                  ("dimensionValue" Core..=) Core.<$> dimensionValue])


-- | Current state of all quotas for this Analytics Property. If any quota for a property is exhausted, all requests to that property will return Resource Exhausted errors.
--
-- /See:/ 'newPropertyQuota' smart constructor.
data PropertyQuota = PropertyQuota
    {
      -- | Standard Analytics Properties can send up to 10 concurrent requests; Analytics 360 Properties can use up to 50 concurrent requests.
      concurrentRequests :: (Core.Maybe QuotaStatus)
      -- | Analytics Properties can send up to 120 requests with potentially thresholded dimensions per hour. In a batch request, each report request is individually counted for this quota if the request contains potentially thresholded dimensions.
    , potentiallyThresholdedRequestsPerHour :: (Core.Maybe QuotaStatus)
      -- | Standard Analytics Properties and cloud project pairs can have up to 10 server errors per hour; Analytics 360 Properties and cloud project pairs can have up to 50 server errors per hour.
    , serverErrorsPerProjectPerHour :: (Core.Maybe QuotaStatus)
      -- | Standard Analytics Properties can use up to 25,000 tokens per day; Analytics 360 Properties can use 250,000 tokens per day. Most requests consume fewer than 10 tokens.
    , tokensPerDay :: (Core.Maybe QuotaStatus)
      -- | Standard Analytics Properties can use up to 5,000 tokens per hour; Analytics 360 Properties can use 50,000 tokens per hour. An API request consumes a single number of tokens, and that number is deducted from all of the hourly, daily, and per project hourly quotas.
    , tokensPerHour :: (Core.Maybe QuotaStatus)
      -- | Analytics Properties can use up to 25% of their tokens per project per hour. This amounts to standard Analytics Properties can use up to 1,250 tokens per project per hour, and Analytics 360 Properties can use 12,500 tokens per project per hour. An API request consumes a single number of tokens, and that number is deducted from all of the hourly, daily, and per project hourly quotas.
    , tokensPerProjectPerHour :: (Core.Maybe QuotaStatus)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PropertyQuota' with the minimum fields required to make a request.
newPropertyQuota 
    ::  PropertyQuota
newPropertyQuota =
  PropertyQuota
    { concurrentRequests = Core.Nothing
    , potentiallyThresholdedRequestsPerHour = Core.Nothing
    , serverErrorsPerProjectPerHour = Core.Nothing
    , tokensPerDay = Core.Nothing
    , tokensPerHour = Core.Nothing
    , tokensPerProjectPerHour = Core.Nothing
    }

instance Core.FromJSON PropertyQuota where
        parseJSON
          = Core.withObject "PropertyQuota"
              (\ o ->
                 PropertyQuota Core.<$>
                   (o Core..:? "concurrentRequests") Core.<*>
                     (o Core..:? "potentiallyThresholdedRequestsPerHour")
                     Core.<*> (o Core..:? "serverErrorsPerProjectPerHour")
                     Core.<*> (o Core..:? "tokensPerDay")
                     Core.<*> (o Core..:? "tokensPerHour")
                     Core.<*> (o Core..:? "tokensPerProjectPerHour"))

instance Core.ToJSON PropertyQuota where
        toJSON PropertyQuota{..}
          = Core.object
              (Core.catMaybes
                 [("concurrentRequests" Core..=) Core.<$>
                    concurrentRequests,
                  ("potentiallyThresholdedRequestsPerHour" Core..=)
                    Core.<$> potentiallyThresholdedRequestsPerHour,
                  ("serverErrorsPerProjectPerHour" Core..=) Core.<$>
                    serverErrorsPerProjectPerHour,
                  ("tokensPerDay" Core..=) Core.<$> tokensPerDay,
                  ("tokensPerHour" Core..=) Core.<$> tokensPerHour,
                  ("tokensPerProjectPerHour" Core..=) Core.<$>
                    tokensPerProjectPerHour])


-- | Current state for a particular quota group.
--
-- /See:/ 'newQuotaStatus' smart constructor.
data QuotaStatus = QuotaStatus
    {
      -- | Quota consumed by this request.
      consumed :: (Core.Maybe Core.Int32)
      -- | Quota remaining after this request.
    , remaining :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QuotaStatus' with the minimum fields required to make a request.
newQuotaStatus 
    ::  QuotaStatus
newQuotaStatus = QuotaStatus {consumed = Core.Nothing, remaining = Core.Nothing}

instance Core.FromJSON QuotaStatus where
        parseJSON
          = Core.withObject "QuotaStatus"
              (\ o ->
                 QuotaStatus Core.<$>
                   (o Core..:? "consumed") Core.<*>
                     (o Core..:? "remaining"))

instance Core.ToJSON QuotaStatus where
        toJSON QuotaStatus{..}
          = Core.object
              (Core.catMaybes
                 [("consumed" Core..=) Core.<$> consumed,
                  ("remaining" Core..=) Core.<$> remaining])


-- | Response\'s metadata carrying additional information about the report content.
--
-- /See:/ 'newResponseMetaData' smart constructor.
data ResponseMetaData = ResponseMetaData
    {
      -- | The currency code used in this report. Intended to be used in formatting currency metrics like @purchaseRevenue@ for visualization. If currency/code was specified in the request, this response parameter will echo the request parameter; otherwise, this response parameter is the property\'s current currency/code. Currency codes are string encodings of currency types from the ISO 4217 standard (https:\/\/en.wikipedia.org\/wiki\/ISO_4217); for example \"USD\", \"EUR\", \"JPY\". To learn more, see https:\/\/support.google.com\/analytics\/answer\/9796179.
      currencyCode :: (Core.Maybe Core.Text)
      -- | If true, indicates some buckets of dimension combinations are rolled into \"(other)\" row. This can happen for high cardinality reports. The metadata parameter dataLossFromOtherRow is populated based on the aggregated data table used in the report. The parameter will be accurately populated regardless of the filters and limits in the report. For example, the (other) row could be dropped from the report because the request contains a filter on sessionSource = google. This parameter will still be populated if data loss from other row was present in the input aggregate data used to generate this report. To learn more, see <https://support.google.com/analytics/answer/13208658#reports About the (other) row and data sampling>.
    , dataLossFromOtherRow :: (Core.Maybe Core.Bool)
      -- | If empty reason is specified, the report is empty for this reason.
    , emptyReason :: (Core.Maybe Core.Text)
      -- | Describes the schema restrictions actively enforced in creating this report. To learn more, see <https://support.google.com/analytics/answer/10851388 Access and data-restriction management>.
    , schemaRestrictionResponse :: (Core.Maybe SchemaRestrictionResponse)
      -- | If @subjectToThresholding@ is true, this report is subject to thresholding and only returns data that meets the minimum aggregation thresholds. It is possible for a request to be subject to thresholding thresholding and no data is absent from the report, and this happens when all data is above the thresholds. To learn more, see <https://support.google.com/analytics/answer/9383630 Data thresholds> and <https://support.google.com/analytics/answer/2799357 About Demographics and Interests>.
    , subjectToThresholding :: (Core.Maybe Core.Bool)
      -- | The property\'s current timezone. Intended to be used to interpret time-based dimensions like @hour@ and @minute@. Formatted as strings from the IANA Time Zone database (https:\/\/www.iana.org\/time-zones); for example \"America\/New_York\" or \"Asia\/Tokyo\".
    , timeZone :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResponseMetaData' with the minimum fields required to make a request.
newResponseMetaData 
    ::  ResponseMetaData
newResponseMetaData =
  ResponseMetaData
    { currencyCode = Core.Nothing
    , dataLossFromOtherRow = Core.Nothing
    , emptyReason = Core.Nothing
    , schemaRestrictionResponse = Core.Nothing
    , subjectToThresholding = Core.Nothing
    , timeZone = Core.Nothing
    }

instance Core.FromJSON ResponseMetaData where
        parseJSON
          = Core.withObject "ResponseMetaData"
              (\ o ->
                 ResponseMetaData Core.<$>
                   (o Core..:? "currencyCode") Core.<*>
                     (o Core..:? "dataLossFromOtherRow")
                     Core.<*> (o Core..:? "emptyReason")
                     Core.<*> (o Core..:? "schemaRestrictionResponse")
                     Core.<*> (o Core..:? "subjectToThresholding")
                     Core.<*> (o Core..:? "timeZone"))

instance Core.ToJSON ResponseMetaData where
        toJSON ResponseMetaData{..}
          = Core.object
              (Core.catMaybes
                 [("currencyCode" Core..=) Core.<$> currencyCode,
                  ("dataLossFromOtherRow" Core..=) Core.<$>
                    dataLossFromOtherRow,
                  ("emptyReason" Core..=) Core.<$> emptyReason,
                  ("schemaRestrictionResponse" Core..=) Core.<$>
                    schemaRestrictionResponse,
                  ("subjectToThresholding" Core..=) Core.<$>
                    subjectToThresholding,
                  ("timeZone" Core..=) Core.<$> timeZone])


-- | Report data for each row. For example if RunReportRequest contains: @none \"dimensions\": [ { \"name\": \"eventName\" }, { \"name\": \"countryId\" } ], \"metrics\": [ { \"name\": \"eventCount\" } ]@ One row with \'in/app/purchase\' as the eventName, \'JP\' as the countryId, and 15 as the eventCount, would be: @none \"dimensionValues\": [ { \"value\": \"in_app_purchase\" }, { \"value\": \"JP\" } ], \"metricValues\": [ { \"value\": \"15\" } ]@
--
-- /See:/ 'newRow' smart constructor.
data Row = Row
    {
      -- | List of requested dimension values. In a PivotReport, dimension_values are only listed for dimensions included in a pivot.
      dimensionValues :: (Core.Maybe [DimensionValue])
      -- | List of requested visible metric values.
    , metricValues :: (Core.Maybe [MetricValue])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Row' with the minimum fields required to make a request.
newRow 
    ::  Row
newRow = Row {dimensionValues = Core.Nothing, metricValues = Core.Nothing}

instance Core.FromJSON Row where
        parseJSON
          = Core.withObject "Row"
              (\ o ->
                 Row Core.<$>
                   (o Core..:? "dimensionValues") Core.<*>
                     (o Core..:? "metricValues"))

instance Core.ToJSON Row where
        toJSON Row{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionValues" Core..=) Core.<$>
                    dimensionValues,
                  ("metricValues" Core..=) Core.<$> metricValues])


-- | The request to generate a pivot report.
--
-- /See:/ 'newRunPivotReportRequest' smart constructor.
data RunPivotReportRequest = RunPivotReportRequest
    {
      -- | Cohort group associated with this request. If there is a cohort group in the request the \'cohort\' dimension must be present.
      cohortSpec :: (Core.Maybe CohortSpec)
      -- | A currency code in ISO4217 format, such as \"AED\", \"USD\", \"JPY\". If the field is empty, the report uses the property\'s default currency.
    , currencyCode :: (Core.Maybe Core.Text)
      -- | The date range to retrieve event data for the report. If multiple date ranges are specified, event data from each date range is used in the report. A special dimension with field name \"dateRange\" can be included in a Pivot\'s field names; if included, the report compares between date ranges. In a cohort request, this @dateRanges@ must be unspecified.
    , dateRanges :: (Core.Maybe [DateRange])
      -- | The filter clause of dimensions. Dimensions must be requested to be used in this filter. Metrics cannot be used in this filter.
    , dimensionFilter :: (Core.Maybe FilterExpression)
      -- | The dimensions requested. All defined dimensions must be used by one of the following: dimension/expression, dimension/filter, pivots, order_bys.
    , dimensions :: (Core.Maybe [Dimension])
      -- | If false or unspecified, each row with all metrics equal to 0 will not be returned. If true, these rows will be returned if they are not separately removed by a filter. Regardless of this @keep_empty_rows@ setting, only data recorded by the Google Analytics (GA4) property can be displayed in a report. For example if a property never logs a @purchase@ event, then a query for the @eventName@ dimension and @eventCount@ metric will not have a row eventName: \"purchase\" and eventCount: 0.
    , keepEmptyRows :: (Core.Maybe Core.Bool)
      -- | The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Metrics must be requested to be used in this filter. Dimensions cannot be used in this filter.
    , metricFilter :: (Core.Maybe FilterExpression)
      -- | The metrics requested, at least one metric needs to be specified. All defined metrics must be used by one of the following: metric/expression, metric/filter, order_bys.
    , metrics :: (Core.Maybe [Metric])
      -- | Describes the visual format of the report\'s dimensions in columns or rows. The union of the fieldNames (dimension names) in all pivots must be a subset of dimension names defined in Dimensions. No two pivots can share a dimension. A dimension is only visible if it appears in a pivot.
    , pivots :: (Core.Maybe [Pivot])
      -- | A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties\/1234
    , property :: (Core.Maybe Core.Text)
      -- | Toggles whether to return the current state of this Analytics Property\'s quota. Quota is returned in <#PropertyQuota PropertyQuota>.
    , returnPropertyQuota :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunPivotReportRequest' with the minimum fields required to make a request.
newRunPivotReportRequest 
    ::  RunPivotReportRequest
newRunPivotReportRequest =
  RunPivotReportRequest
    { cohortSpec = Core.Nothing
    , currencyCode = Core.Nothing
    , dateRanges = Core.Nothing
    , dimensionFilter = Core.Nothing
    , dimensions = Core.Nothing
    , keepEmptyRows = Core.Nothing
    , metricFilter = Core.Nothing
    , metrics = Core.Nothing
    , pivots = Core.Nothing
    , property = Core.Nothing
    , returnPropertyQuota = Core.Nothing
    }

instance Core.FromJSON RunPivotReportRequest where
        parseJSON
          = Core.withObject "RunPivotReportRequest"
              (\ o ->
                 RunPivotReportRequest Core.<$>
                   (o Core..:? "cohortSpec") Core.<*>
                     (o Core..:? "currencyCode")
                     Core.<*> (o Core..:? "dateRanges")
                     Core.<*> (o Core..:? "dimensionFilter")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "keepEmptyRows")
                     Core.<*> (o Core..:? "metricFilter")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*> (o Core..:? "pivots")
                     Core.<*> (o Core..:? "property")
                     Core.<*> (o Core..:? "returnPropertyQuota"))

instance Core.ToJSON RunPivotReportRequest where
        toJSON RunPivotReportRequest{..}
          = Core.object
              (Core.catMaybes
                 [("cohortSpec" Core..=) Core.<$> cohortSpec,
                  ("currencyCode" Core..=) Core.<$> currencyCode,
                  ("dateRanges" Core..=) Core.<$> dateRanges,
                  ("dimensionFilter" Core..=) Core.<$> dimensionFilter,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("keepEmptyRows" Core..=) Core.<$> keepEmptyRows,
                  ("metricFilter" Core..=) Core.<$> metricFilter,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("pivots" Core..=) Core.<$> pivots,
                  ("property" Core..=) Core.<$> property,
                  ("returnPropertyQuota" Core..=) Core.<$>
                    returnPropertyQuota])


-- | The response pivot report table corresponding to a pivot request.
--
-- /See:/ 'newRunPivotReportResponse' smart constructor.
data RunPivotReportResponse = RunPivotReportResponse
    {
      -- | Aggregation of metric values. Can be totals, minimums, or maximums. The returned aggregations are controlled by the metric/aggregations in the pivot. The type of aggregation returned in each row is shown by the dimension/values which are set to \"RESERVED_\".
      aggregates :: (Core.Maybe [Row])
      -- | Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matches the dimensions present in rows.
    , dimensionHeaders :: (Core.Maybe [DimensionHeader])
      -- | Identifies what kind of resource this message is. This @kind@ is always the fixed string \"analyticsData#runPivotReport\". Useful to distinguish between response types in JSON.
    , kind :: (Core.Maybe Core.Text)
      -- | Metadata for the report.
    , metadata :: (Core.Maybe ResponseMetaData)
      -- | Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the metrics present in rows.
    , metricHeaders :: (Core.Maybe [MetricHeader])
      -- | Summarizes the columns and rows created by a pivot. Each pivot in the request produces one header in the response. If we have a request like this: \"pivots\": [{ \"fieldNames\": [\"country\", \"city\"] }, { \"fieldNames\": \"eventName\" }] We will have the following @pivotHeaders@ in the response: \"pivotHeaders\" : [{ \"dimensionHeaders\": [{ \"dimensionValues\": [ { \"value\": \"United Kingdom\" }, { \"value\": \"London\" } ] }, { \"dimensionValues\": [ { \"value\": \"Japan\" }, { \"value\": \"Osaka\" } ] }] }, { \"dimensionHeaders\": [{ \"dimensionValues\": [{ \"value\": \"session_start\" }] }, { \"dimensionValues\": [{ \"value\": \"scroll\" }] }] }]
    , pivotHeaders :: (Core.Maybe [PivotHeader])
      -- | This Analytics Property\'s quota state including this request.
    , propertyQuota :: (Core.Maybe PropertyQuota)
      -- | Rows of dimension value combinations and metric values in the report.
    , rows :: (Core.Maybe [Row])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunPivotReportResponse' with the minimum fields required to make a request.
newRunPivotReportResponse 
    ::  RunPivotReportResponse
newRunPivotReportResponse =
  RunPivotReportResponse
    { aggregates = Core.Nothing
    , dimensionHeaders = Core.Nothing
    , kind = Core.Nothing
    , metadata = Core.Nothing
    , metricHeaders = Core.Nothing
    , pivotHeaders = Core.Nothing
    , propertyQuota = Core.Nothing
    , rows = Core.Nothing
    }

instance Core.FromJSON RunPivotReportResponse where
        parseJSON
          = Core.withObject "RunPivotReportResponse"
              (\ o ->
                 RunPivotReportResponse Core.<$>
                   (o Core..:? "aggregates") Core.<*>
                     (o Core..:? "dimensionHeaders")
                     Core.<*> (o Core..:? "kind")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "metricHeaders")
                     Core.<*> (o Core..:? "pivotHeaders")
                     Core.<*> (o Core..:? "propertyQuota")
                     Core.<*> (o Core..:? "rows"))

instance Core.ToJSON RunPivotReportResponse where
        toJSON RunPivotReportResponse{..}
          = Core.object
              (Core.catMaybes
                 [("aggregates" Core..=) Core.<$> aggregates,
                  ("dimensionHeaders" Core..=) Core.<$>
                    dimensionHeaders,
                  ("kind" Core..=) Core.<$> kind,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("metricHeaders" Core..=) Core.<$> metricHeaders,
                  ("pivotHeaders" Core..=) Core.<$> pivotHeaders,
                  ("propertyQuota" Core..=) Core.<$> propertyQuota,
                  ("rows" Core..=) Core.<$> rows])


-- | The request to generate a realtime report.
--
-- /See:/ 'newRunRealtimeReportRequest' smart constructor.
data RunRealtimeReportRequest = RunRealtimeReportRequest
    {
      -- | The filter clause of dimensions. Metrics cannot be used in this filter.
      dimensionFilter :: (Core.Maybe FilterExpression)
      -- | The dimensions requested and displayed.
    , dimensions :: (Core.Maybe [Dimension])
      -- | The number of rows to return. If unspecified, 10,000 rows are returned. The API returns a maximum of 250,000 rows per request, no matter how many you ask for. @limit@ must be positive. The API can also return fewer rows than the requested @limit@, if there aren\'t as many dimension values as the @limit@. For instance, there are fewer than 300 possible values for the dimension @country@, so when reporting on only @country@, you can\'t get more than 300 rows, even if you set @limit@ to a higher value.
    , limit :: (Core.Maybe Core.Int64)
      -- | Aggregation of metrics. Aggregated metric values will be shown in rows where the dimension/values are set to \"RESERVED/(MetricAggregation)\".
    , metricAggregations :: (Core.Maybe [RunRealtimeReportRequest_MetricAggregationsItem])
      -- | The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Dimensions cannot be used in this filter.
    , metricFilter :: (Core.Maybe FilterExpression)
      -- | The metrics requested and displayed.
    , metrics :: (Core.Maybe [Metric])
      -- | The minute ranges of event data to read. If unspecified, one minute range for the last 30 minutes will be used. If multiple minute ranges are requested, each response row will contain a zero based minute range index. If two minute ranges overlap, the event data for the overlapping minutes is included in the response rows for both minute ranges.
    , minuteRanges :: (Core.Maybe [MinuteRange])
      -- | Specifies how rows are ordered in the response.
    , orderBys :: (Core.Maybe [OrderBy])
      -- | Toggles whether to return the current state of this Analytics Property\'s Realtime quota. Quota is returned in <#PropertyQuota PropertyQuota>.
    , returnPropertyQuota :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunRealtimeReportRequest' with the minimum fields required to make a request.
newRunRealtimeReportRequest 
    ::  RunRealtimeReportRequest
newRunRealtimeReportRequest =
  RunRealtimeReportRequest
    { dimensionFilter = Core.Nothing
    , dimensions = Core.Nothing
    , limit = Core.Nothing
    , metricAggregations = Core.Nothing
    , metricFilter = Core.Nothing
    , metrics = Core.Nothing
    , minuteRanges = Core.Nothing
    , orderBys = Core.Nothing
    , returnPropertyQuota = Core.Nothing
    }

instance Core.FromJSON RunRealtimeReportRequest where
        parseJSON
          = Core.withObject "RunRealtimeReportRequest"
              (\ o ->
                 RunRealtimeReportRequest Core.<$>
                   (o Core..:? "dimensionFilter") Core.<*>
                     (o Core..:? "dimensions")
                     Core.<*>
                     (o Core..:? "limit" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "metricAggregations")
                     Core.<*> (o Core..:? "metricFilter")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*> (o Core..:? "minuteRanges")
                     Core.<*> (o Core..:? "orderBys")
                     Core.<*> (o Core..:? "returnPropertyQuota"))

instance Core.ToJSON RunRealtimeReportRequest where
        toJSON RunRealtimeReportRequest{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionFilter" Core..=) Core.<$>
                    dimensionFilter,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
                  ("metricAggregations" Core..=) Core.<$>
                    metricAggregations,
                  ("metricFilter" Core..=) Core.<$> metricFilter,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("minuteRanges" Core..=) Core.<$> minuteRanges,
                  ("orderBys" Core..=) Core.<$> orderBys,
                  ("returnPropertyQuota" Core..=) Core.<$>
                    returnPropertyQuota])


-- | The response realtime report table corresponding to a request.
--
-- /See:/ 'newRunRealtimeReportResponse' smart constructor.
data RunRealtimeReportResponse = RunRealtimeReportResponse
    {
      -- | Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matches the dimensions present in rows.
      dimensionHeaders :: (Core.Maybe [DimensionHeader])
      -- | Identifies what kind of resource this message is. This @kind@ is always the fixed string \"analyticsData#runRealtimeReport\". Useful to distinguish between response types in JSON.
    , kind :: (Core.Maybe Core.Text)
      -- | If requested, the maximum values of metrics.
    , maximums :: (Core.Maybe [Row])
      -- | Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the metrics present in rows.
    , metricHeaders :: (Core.Maybe [MetricHeader])
      -- | If requested, the minimum values of metrics.
    , minimums :: (Core.Maybe [Row])
      -- | This Analytics Property\'s Realtime quota state including this request.
    , propertyQuota :: (Core.Maybe PropertyQuota)
      -- | The total number of rows in the query result. @rowCount@ is independent of the number of rows returned in the response and the @limit@ request parameter. For example if a query returns 175 rows and includes @limit@ of 50 in the API request, the response will contain @rowCount@ of 175 but only 50 rows.
    , rowCount :: (Core.Maybe Core.Int32)
      -- | Rows of dimension value combinations and metric values in the report.
    , rows :: (Core.Maybe [Row])
      -- | If requested, the totaled values of metrics.
    , totals :: (Core.Maybe [Row])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunRealtimeReportResponse' with the minimum fields required to make a request.
newRunRealtimeReportResponse 
    ::  RunRealtimeReportResponse
newRunRealtimeReportResponse =
  RunRealtimeReportResponse
    { dimensionHeaders = Core.Nothing
    , kind = Core.Nothing
    , maximums = Core.Nothing
    , metricHeaders = Core.Nothing
    , minimums = Core.Nothing
    , propertyQuota = Core.Nothing
    , rowCount = Core.Nothing
    , rows = Core.Nothing
    , totals = Core.Nothing
    }

instance Core.FromJSON RunRealtimeReportResponse
         where
        parseJSON
          = Core.withObject "RunRealtimeReportResponse"
              (\ o ->
                 RunRealtimeReportResponse Core.<$>
                   (o Core..:? "dimensionHeaders") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "maximums")
                     Core.<*> (o Core..:? "metricHeaders")
                     Core.<*> (o Core..:? "minimums")
                     Core.<*> (o Core..:? "propertyQuota")
                     Core.<*> (o Core..:? "rowCount")
                     Core.<*> (o Core..:? "rows")
                     Core.<*> (o Core..:? "totals"))

instance Core.ToJSON RunRealtimeReportResponse where
        toJSON RunRealtimeReportResponse{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionHeaders" Core..=) Core.<$>
                    dimensionHeaders,
                  ("kind" Core..=) Core.<$> kind,
                  ("maximums" Core..=) Core.<$> maximums,
                  ("metricHeaders" Core..=) Core.<$> metricHeaders,
                  ("minimums" Core..=) Core.<$> minimums,
                  ("propertyQuota" Core..=) Core.<$> propertyQuota,
                  ("rowCount" Core..=) Core.<$> rowCount,
                  ("rows" Core..=) Core.<$> rows,
                  ("totals" Core..=) Core.<$> totals])


-- | The request to generate a report.
--
-- /See:/ 'newRunReportRequest' smart constructor.
data RunReportRequest = RunReportRequest
    {
      -- | Cohort group associated with this request. If there is a cohort group in the request the \'cohort\' dimension must be present.
      cohortSpec :: (Core.Maybe CohortSpec)
      -- | A currency code in ISO4217 format, such as \"AED\", \"USD\", \"JPY\". If the field is empty, the report uses the property\'s default currency.
    , currencyCode :: (Core.Maybe Core.Text)
      -- | Date ranges of data to read. If multiple date ranges are requested, each response row will contain a zero based date range index. If two date ranges overlap, the event data for the overlapping days is included in the response rows for both date ranges. In a cohort request, this @dateRanges@ must be unspecified.
    , dateRanges :: (Core.Maybe [DateRange])
      -- | Dimension filters let you ask for only specific dimension values in the report. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/basics#dimension_filters Fundamentals of Dimension Filters> for examples. Metrics cannot be used in this filter.
    , dimensionFilter :: (Core.Maybe FilterExpression)
      -- | The dimensions requested and displayed.
    , dimensions :: (Core.Maybe [Dimension])
      -- | If false or unspecified, each row with all metrics equal to 0 will not be returned. If true, these rows will be returned if they are not separately removed by a filter. Regardless of this @keep_empty_rows@ setting, only data recorded by the Google Analytics (GA4) property can be displayed in a report. For example if a property never logs a @purchase@ event, then a query for the @eventName@ dimension and @eventCount@ metric will not have a row eventName: \"purchase\" and eventCount: 0.
    , keepEmptyRows :: (Core.Maybe Core.Bool)
      -- | The number of rows to return. If unspecified, 10,000 rows are returned. The API returns a maximum of 250,000 rows per request, no matter how many you ask for. @limit@ must be positive. The API can also return fewer rows than the requested @limit@, if there aren\'t as many dimension values as the @limit@. For instance, there are fewer than 300 possible values for the dimension @country@, so when reporting on only @country@, you can\'t get more than 300 rows, even if you set @limit@ to a higher value. To learn more about this pagination parameter, see <https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination Pagination>.
    , limit :: (Core.Maybe Core.Int64)
      -- | Aggregation of metrics. Aggregated metric values will be shown in rows where the dimension/values are set to \"RESERVED/(MetricAggregation)\".
    , metricAggregations :: (Core.Maybe [RunReportRequest_MetricAggregationsItem])
      -- | The filter clause of metrics. Applied after aggregating the report\'s rows, similar to SQL having-clause. Dimensions cannot be used in this filter.
    , metricFilter :: (Core.Maybe FilterExpression)
      -- | The metrics requested and displayed.
    , metrics :: (Core.Maybe [Metric])
      -- | The row count of the start row. The first row is counted as row 0. When paging, the first request does not specify offset; or equivalently, sets offset to 0; the first request returns the first @limit@ of rows. The second request sets offset to the @limit@ of the first request; the second request returns the second @limit@ of rows. To learn more about this pagination parameter, see <https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination Pagination>.
    , offset :: (Core.Maybe Core.Int64)
      -- | Specifies how rows are ordered in the response.
    , orderBys :: (Core.Maybe [OrderBy])
      -- | A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties\/1234
    , property :: (Core.Maybe Core.Text)
      -- | Toggles whether to return the current state of this Analytics Property\'s quota. Quota is returned in <#PropertyQuota PropertyQuota>.
    , returnPropertyQuota :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunReportRequest' with the minimum fields required to make a request.
newRunReportRequest 
    ::  RunReportRequest
newRunReportRequest =
  RunReportRequest
    { cohortSpec = Core.Nothing
    , currencyCode = Core.Nothing
    , dateRanges = Core.Nothing
    , dimensionFilter = Core.Nothing
    , dimensions = Core.Nothing
    , keepEmptyRows = Core.Nothing
    , limit = Core.Nothing
    , metricAggregations = Core.Nothing
    , metricFilter = Core.Nothing
    , metrics = Core.Nothing
    , offset = Core.Nothing
    , orderBys = Core.Nothing
    , property = Core.Nothing
    , returnPropertyQuota = Core.Nothing
    }

instance Core.FromJSON RunReportRequest where
        parseJSON
          = Core.withObject "RunReportRequest"
              (\ o ->
                 RunReportRequest Core.<$>
                   (o Core..:? "cohortSpec") Core.<*>
                     (o Core..:? "currencyCode")
                     Core.<*> (o Core..:? "dateRanges")
                     Core.<*> (o Core..:? "dimensionFilter")
                     Core.<*> (o Core..:? "dimensions")
                     Core.<*> (o Core..:? "keepEmptyRows")
                     Core.<*>
                     (o Core..:? "limit" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "metricAggregations")
                     Core.<*> (o Core..:? "metricFilter")
                     Core.<*> (o Core..:? "metrics")
                     Core.<*>
                     (o Core..:? "offset" Core.<&>
                        Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "orderBys")
                     Core.<*> (o Core..:? "property")
                     Core.<*> (o Core..:? "returnPropertyQuota"))

instance Core.ToJSON RunReportRequest where
        toJSON RunReportRequest{..}
          = Core.object
              (Core.catMaybes
                 [("cohortSpec" Core..=) Core.<$> cohortSpec,
                  ("currencyCode" Core..=) Core.<$> currencyCode,
                  ("dateRanges" Core..=) Core.<$> dateRanges,
                  ("dimensionFilter" Core..=) Core.<$> dimensionFilter,
                  ("dimensions" Core..=) Core.<$> dimensions,
                  ("keepEmptyRows" Core..=) Core.<$> keepEmptyRows,
                  ("limit" Core..=) Core.. Core.AsText Core.<$> limit,
                  ("metricAggregations" Core..=) Core.<$>
                    metricAggregations,
                  ("metricFilter" Core..=) Core.<$> metricFilter,
                  ("metrics" Core..=) Core.<$> metrics,
                  ("offset" Core..=) Core.. Core.AsText Core.<$>
                    offset,
                  ("orderBys" Core..=) Core.<$> orderBys,
                  ("property" Core..=) Core.<$> property,
                  ("returnPropertyQuota" Core..=) Core.<$>
                    returnPropertyQuota])


-- | The response report table corresponding to a request.
--
-- /See:/ 'newRunReportResponse' smart constructor.
data RunReportResponse = RunReportResponse
    {
      -- | Describes dimension columns. The number of DimensionHeaders and ordering of DimensionHeaders matches the dimensions present in rows.
      dimensionHeaders :: (Core.Maybe [DimensionHeader])
      -- | Identifies what kind of resource this message is. This @kind@ is always the fixed string \"analyticsData#runReport\". Useful to distinguish between response types in JSON.
    , kind :: (Core.Maybe Core.Text)
      -- | If requested, the maximum values of metrics.
    , maximums :: (Core.Maybe [Row])
      -- | Metadata for the report.
    , metadata :: (Core.Maybe ResponseMetaData)
      -- | Describes metric columns. The number of MetricHeaders and ordering of MetricHeaders matches the metrics present in rows.
    , metricHeaders :: (Core.Maybe [MetricHeader])
      -- | If requested, the minimum values of metrics.
    , minimums :: (Core.Maybe [Row])
      -- | This Analytics Property\'s quota state including this request.
    , propertyQuota :: (Core.Maybe PropertyQuota)
      -- | The total number of rows in the query result. @rowCount@ is independent of the number of rows returned in the response, the @limit@ request parameter, and the @offset@ request parameter. For example if a query returns 175 rows and includes @limit@ of 50 in the API request, the response will contain @rowCount@ of 175 but only 50 rows. To learn more about this pagination parameter, see <https://developers.google.com/analytics/devguides/reporting/data/v1/basics#pagination Pagination>.
    , rowCount :: (Core.Maybe Core.Int32)
      -- | Rows of dimension value combinations and metric values in the report.
    , rows :: (Core.Maybe [Row])
      -- | If requested, the totaled values of metrics.
    , totals :: (Core.Maybe [Row])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunReportResponse' with the minimum fields required to make a request.
newRunReportResponse 
    ::  RunReportResponse
newRunReportResponse =
  RunReportResponse
    { dimensionHeaders = Core.Nothing
    , kind = Core.Nothing
    , maximums = Core.Nothing
    , metadata = Core.Nothing
    , metricHeaders = Core.Nothing
    , minimums = Core.Nothing
    , propertyQuota = Core.Nothing
    , rowCount = Core.Nothing
    , rows = Core.Nothing
    , totals = Core.Nothing
    }

instance Core.FromJSON RunReportResponse where
        parseJSON
          = Core.withObject "RunReportResponse"
              (\ o ->
                 RunReportResponse Core.<$>
                   (o Core..:? "dimensionHeaders") Core.<*>
                     (o Core..:? "kind")
                     Core.<*> (o Core..:? "maximums")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "metricHeaders")
                     Core.<*> (o Core..:? "minimums")
                     Core.<*> (o Core..:? "propertyQuota")
                     Core.<*> (o Core..:? "rowCount")
                     Core.<*> (o Core..:? "rows")
                     Core.<*> (o Core..:? "totals"))

instance Core.ToJSON RunReportResponse where
        toJSON RunReportResponse{..}
          = Core.object
              (Core.catMaybes
                 [("dimensionHeaders" Core..=) Core.<$>
                    dimensionHeaders,
                  ("kind" Core..=) Core.<$> kind,
                  ("maximums" Core..=) Core.<$> maximums,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("metricHeaders" Core..=) Core.<$> metricHeaders,
                  ("minimums" Core..=) Core.<$> minimums,
                  ("propertyQuota" Core..=) Core.<$> propertyQuota,
                  ("rowCount" Core..=) Core.<$> rowCount,
                  ("rows" Core..=) Core.<$> rows,
                  ("totals" Core..=) Core.<$> totals])


-- | The schema restrictions actively enforced in creating this report. To learn more, see <https://support.google.com/analytics/answer/10851388 Access and data-restriction management>.
--
-- /See:/ 'newSchemaRestrictionResponse' smart constructor.
newtype SchemaRestrictionResponse = SchemaRestrictionResponse
    {
      -- | All restrictions actively enforced in creating the report. For example, @purchaseRevenue@ always has the restriction type @REVENUE_DATA@. However, this active response restriction is only populated if the user\'s custom role disallows access to @REVENUE_DATA@.
      activeMetricRestrictions :: (Core.Maybe [ActiveMetricRestriction])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchemaRestrictionResponse' with the minimum fields required to make a request.
newSchemaRestrictionResponse 
    ::  SchemaRestrictionResponse
newSchemaRestrictionResponse =
  SchemaRestrictionResponse {activeMetricRestrictions = Core.Nothing}

instance Core.FromJSON SchemaRestrictionResponse
         where
        parseJSON
          = Core.withObject "SchemaRestrictionResponse"
              (\ o ->
                 SchemaRestrictionResponse Core.<$>
                   (o Core..:? "activeMetricRestrictions"))

instance Core.ToJSON SchemaRestrictionResponse where
        toJSON SchemaRestrictionResponse{..}
          = Core.object
              (Core.catMaybes
                 [("activeMetricRestrictions" Core..=) Core.<$>
                    activeMetricRestrictions])


-- | The filter for string
--
-- /See:/ 'newStringFilter' smart constructor.
data StringFilter = StringFilter
    {
      -- | If true, the string value is case sensitive.
      caseSensitive :: (Core.Maybe Core.Bool)
      -- | The match type for this filter.
    , matchType :: (Core.Maybe StringFilter_MatchType)
      -- | The string value used for the matching.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StringFilter' with the minimum fields required to make a request.
newStringFilter 
    ::  StringFilter
newStringFilter =
  StringFilter
    { caseSensitive = Core.Nothing
    , matchType = Core.Nothing
    , value = Core.Nothing
    }

instance Core.FromJSON StringFilter where
        parseJSON
          = Core.withObject "StringFilter"
              (\ o ->
                 StringFilter Core.<$>
                   (o Core..:? "caseSensitive") Core.<*>
                     (o Core..:? "matchType")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON StringFilter where
        toJSON StringFilter{..}
          = Core.object
              (Core.catMaybes
                 [("caseSensitive" Core..=) Core.<$> caseSensitive,
                  ("matchType" Core..=) Core.<$> matchType,
                  ("value" Core..=) Core.<$> value])

