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
-- Module      : Gogol.AnalyticsData.Properties.RunReport
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a customized report of your Google Analytics event data. Reports contain statistics derived from data collected by the Google Analytics tracking code. The data returned from the API is as a table with columns for the requested dimensions and metrics. Metrics are individual measurements of user activity on your property, such as active users or event count. Dimensions break down metrics across some common criteria, such as country or event name. For a guide to constructing requests & understanding responses, see <https://developers.google.com/analytics/devguides/reporting/data/v1/basics Creating a Report>.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference> for @analyticsdata.properties.runReport@.
module Gogol.AnalyticsData.Properties.RunReport
    (
    -- * Resource
      AnalyticsDataPropertiesRunReportResource

    -- ** Constructing a Request
    , AnalyticsDataPropertiesRunReport (..)
    , newAnalyticsDataPropertiesRunReport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Types

-- | A resource alias for @analyticsdata.properties.runReport@ method which the
-- 'AnalyticsDataPropertiesRunReport' request conforms to.
type AnalyticsDataPropertiesRunReportResource =
     "v1beta" Core.:>
       Core.CaptureMode "property" "runReport" Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RunReportRequest Core.:>
                       Core.Post '[Core.JSON] RunReportResponse

-- | Returns a customized report of your Google Analytics event data. Reports contain statistics derived from data collected by the Google Analytics tracking code. The data returned from the API is as a table with columns for the requested dimensions and metrics. Metrics are individual measurements of user activity on your property, such as active users or event count. Dimensions break down metrics across some common criteria, such as country or event name. For a guide to constructing requests & understanding responses, see <https://developers.google.com/analytics/devguides/reporting/data/v1/basics Creating a Report>.
--
-- /See:/ 'newAnalyticsDataPropertiesRunReport' smart constructor.
data AnalyticsDataPropertiesRunReport = AnalyticsDataPropertiesRunReport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RunReportRequest
      -- | A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties\/1234
    , property :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPropertiesRunReport' with the minimum fields required to make a request.
newAnalyticsDataPropertiesRunReport 
    ::  RunReportRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties\/1234 See 'property'.
    -> AnalyticsDataPropertiesRunReport
newAnalyticsDataPropertiesRunReport payload property =
  AnalyticsDataPropertiesRunReport
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , property = property
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsDataPropertiesRunReport
         where
        type Rs AnalyticsDataPropertiesRunReport =
             RunReportResponse
        type Scopes AnalyticsDataPropertiesRunReport =
             '[Analytics'FullControl, Analytics'Readonly]
        requestClient AnalyticsDataPropertiesRunReport{..}
          = go property xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              analyticsDataService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy AnalyticsDataPropertiesRunReportResource)
                      Core.mempty

