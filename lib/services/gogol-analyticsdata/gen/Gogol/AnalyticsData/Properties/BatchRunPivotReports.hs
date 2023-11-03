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
-- Module      : Gogol.AnalyticsData.Properties.BatchRunPivotReports
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns multiple pivot reports in a batch. All reports must be for the same GA4 Property.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference> for @analyticsdata.properties.batchRunPivotReports@.
module Gogol.AnalyticsData.Properties.BatchRunPivotReports
    (
    -- * Resource
      AnalyticsDataPropertiesBatchRunPivotReportsResource

    -- ** Constructing a Request
    , AnalyticsDataPropertiesBatchRunPivotReports (..)
    , newAnalyticsDataPropertiesBatchRunPivotReports
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Types

-- | A resource alias for @analyticsdata.properties.batchRunPivotReports@ method which the
-- 'AnalyticsDataPropertiesBatchRunPivotReports' request conforms to.
type AnalyticsDataPropertiesBatchRunPivotReportsResource
     =
     "v1beta" Core.:>
       Core.CaptureMode "property" "batchRunPivotReports"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] BatchRunPivotReportsRequest
                       Core.:>
                       Core.Post '[Core.JSON] BatchRunPivotReportsResponse

-- | Returns multiple pivot reports in a batch. All reports must be for the same GA4 Property.
--
-- /See:/ 'newAnalyticsDataPropertiesBatchRunPivotReports' smart constructor.
data AnalyticsDataPropertiesBatchRunPivotReports = AnalyticsDataPropertiesBatchRunPivotReports
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: BatchRunPivotReportsRequest
      -- | A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. This property must be specified for the batch. The property within RunPivotReportRequest may either be unspecified or consistent with this property. Example: properties\/1234
    , property :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPropertiesBatchRunPivotReports' with the minimum fields required to make a request.
newAnalyticsDataPropertiesBatchRunPivotReports 
    ::  BatchRunPivotReportsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. This property must be specified for the batch. The property within RunPivotReportRequest may either be unspecified or consistent with this property. Example: properties\/1234 See 'property'.
    -> AnalyticsDataPropertiesBatchRunPivotReports
newAnalyticsDataPropertiesBatchRunPivotReports payload property =
  AnalyticsDataPropertiesBatchRunPivotReports
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , property = property
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsDataPropertiesBatchRunPivotReports
         where
        type Rs AnalyticsDataPropertiesBatchRunPivotReports =
             BatchRunPivotReportsResponse
        type Scopes
               AnalyticsDataPropertiesBatchRunPivotReports
             = '[Analytics'FullControl, Analytics'Readonly]
        requestClient
          AnalyticsDataPropertiesBatchRunPivotReports{..}
          = go property xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              analyticsDataService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsDataPropertiesBatchRunPivotReportsResource)
                      Core.mempty

