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
-- Module      : Gogol.AnalyticsData.Properties.RunRealtimeReport
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a customized report of realtime event data for your property. Events appear in realtime reports seconds after they have been sent to the Google Analytics. Realtime reports show events and usage data for the periods of time ranging from the present moment to 30 minutes ago (up to 60 minutes for Google Analytics 360 properties). For a guide to constructing realtime requests & understanding responses, see <https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-basics Creating a Realtime Report>.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference> for @analyticsdata.properties.runRealtimeReport@.
module Gogol.AnalyticsData.Properties.RunRealtimeReport
    (
    -- * Resource
      AnalyticsDataPropertiesRunRealtimeReportResource

    -- ** Constructing a Request
    , AnalyticsDataPropertiesRunRealtimeReport (..)
    , newAnalyticsDataPropertiesRunRealtimeReport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Types

-- | A resource alias for @analyticsdata.properties.runRealtimeReport@ method which the
-- 'AnalyticsDataPropertiesRunRealtimeReport' request conforms to.
type AnalyticsDataPropertiesRunRealtimeReportResource
     =
     "v1beta" Core.:>
       Core.CaptureMode "property" "runRealtimeReport"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RunRealtimeReportRequest
                       Core.:>
                       Core.Post '[Core.JSON] RunRealtimeReportResponse

-- | Returns a customized report of realtime event data for your property. Events appear in realtime reports seconds after they have been sent to the Google Analytics. Realtime reports show events and usage data for the periods of time ranging from the present moment to 30 minutes ago (up to 60 minutes for Google Analytics 360 properties). For a guide to constructing realtime requests & understanding responses, see <https://developers.google.com/analytics/devguides/reporting/data/v1/realtime-basics Creating a Realtime Report>.
--
-- /See:/ 'newAnalyticsDataPropertiesRunRealtimeReport' smart constructor.
data AnalyticsDataPropertiesRunRealtimeReport = AnalyticsDataPropertiesRunRealtimeReport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RunRealtimeReportRequest
      -- | A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Example: properties\/1234
    , property :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPropertiesRunRealtimeReport' with the minimum fields required to make a request.
newAnalyticsDataPropertiesRunRealtimeReport 
    ::  RunRealtimeReportRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Example: properties\/1234 See 'property'.
    -> AnalyticsDataPropertiesRunRealtimeReport
newAnalyticsDataPropertiesRunRealtimeReport payload property =
  AnalyticsDataPropertiesRunRealtimeReport
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , property = property
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsDataPropertiesRunRealtimeReport
         where
        type Rs AnalyticsDataPropertiesRunRealtimeReport =
             RunRealtimeReportResponse
        type Scopes AnalyticsDataPropertiesRunRealtimeReport
             = '[Analytics'FullControl, Analytics'Readonly]
        requestClient
          AnalyticsDataPropertiesRunRealtimeReport{..}
          = go property xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              analyticsDataService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsDataPropertiesRunRealtimeReportResource)
                      Core.mempty

