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
-- Module      : Gogol.AnalyticsData.Properties.RunPivotReport
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a customized pivot report of your Google Analytics event data. Pivot reports are more advanced and expressive formats than regular reports. In a pivot report, dimensions are only visible if they are included in a pivot. Multiple pivots can be specified to further dissect your data.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference> for @analyticsdata.properties.runPivotReport@.
module Gogol.AnalyticsData.Properties.RunPivotReport
    (
    -- * Resource
      AnalyticsDataPropertiesRunPivotReportResource

    -- ** Constructing a Request
    , AnalyticsDataPropertiesRunPivotReport (..)
    , newAnalyticsDataPropertiesRunPivotReport
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Types

-- | A resource alias for @analyticsdata.properties.runPivotReport@ method which the
-- 'AnalyticsDataPropertiesRunPivotReport' request conforms to.
type AnalyticsDataPropertiesRunPivotReportResource =
     "v1beta" Core.:>
       Core.CaptureMode "property" "runPivotReport"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] RunPivotReportRequest
                       Core.:> Core.Post '[Core.JSON] RunPivotReportResponse

-- | Returns a customized pivot report of your Google Analytics event data. Pivot reports are more advanced and expressive formats than regular reports. In a pivot report, dimensions are only visible if they are included in a pivot. Multiple pivots can be specified to further dissect your data.
--
-- /See:/ 'newAnalyticsDataPropertiesRunPivotReport' smart constructor.
data AnalyticsDataPropertiesRunPivotReport = AnalyticsDataPropertiesRunPivotReport
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RunPivotReportRequest
      -- | A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties\/1234
    , property :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPropertiesRunPivotReport' with the minimum fields required to make a request.
newAnalyticsDataPropertiesRunPivotReport 
    ::  RunPivotReportRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  A Google Analytics GA4 property identifier whose events are tracked. Specified in the URL path and not the body. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Within a batch request, this property should either be unspecified or consistent with the batch-level property. Example: properties\/1234 See 'property'.
    -> AnalyticsDataPropertiesRunPivotReport
newAnalyticsDataPropertiesRunPivotReport payload property =
  AnalyticsDataPropertiesRunPivotReport
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , property = property
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsDataPropertiesRunPivotReport
         where
        type Rs AnalyticsDataPropertiesRunPivotReport =
             RunPivotReportResponse
        type Scopes AnalyticsDataPropertiesRunPivotReport =
             '[Analytics'FullControl, Analytics'Readonly]
        requestClient
          AnalyticsDataPropertiesRunPivotReport{..}
          = go property xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              analyticsDataService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsDataPropertiesRunPivotReportResource)
                      Core.mempty

