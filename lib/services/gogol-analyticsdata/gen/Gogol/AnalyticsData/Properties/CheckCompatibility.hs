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
-- Module      : Gogol.AnalyticsData.Properties.CheckCompatibility
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This compatibility method lists dimensions and metrics that can be added to a report request and maintain compatibility. This method fails if the request\'s dimensions and metrics are incompatible. In Google Analytics, reports fail if they request incompatible dimensions and\/or metrics; in that case, you will need to remove dimensions and\/or metrics from the incompatible report until the report is compatible. The Realtime and Core reports have different compatibility rules. This method checks compatibility for Core reports.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference> for @analyticsdata.properties.checkCompatibility@.
module Gogol.AnalyticsData.Properties.CheckCompatibility
    (
    -- * Resource
      AnalyticsDataPropertiesCheckCompatibilityResource

    -- ** Constructing a Request
    , AnalyticsDataPropertiesCheckCompatibility (..)
    , newAnalyticsDataPropertiesCheckCompatibility
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Types

-- | A resource alias for @analyticsdata.properties.checkCompatibility@ method which the
-- 'AnalyticsDataPropertiesCheckCompatibility' request conforms to.
type AnalyticsDataPropertiesCheckCompatibilityResource
     =
     "v1beta" Core.:>
       Core.CaptureMode "property" "checkCompatibility"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CheckCompatibilityRequest
                       Core.:>
                       Core.Post '[Core.JSON] CheckCompatibilityResponse

-- | This compatibility method lists dimensions and metrics that can be added to a report request and maintain compatibility. This method fails if the request\'s dimensions and metrics are incompatible. In Google Analytics, reports fail if they request incompatible dimensions and\/or metrics; in that case, you will need to remove dimensions and\/or metrics from the incompatible report until the report is compatible. The Realtime and Core reports have different compatibility rules. This method checks compatibility for Core reports.
--
-- /See:/ 'newAnalyticsDataPropertiesCheckCompatibility' smart constructor.
data AnalyticsDataPropertiesCheckCompatibility = AnalyticsDataPropertiesCheckCompatibility
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: CheckCompatibilityRequest
      -- | A Google Analytics GA4 property identifier whose events are tracked. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. @property@ should be the same value as in your @runReport@ request. Example: properties\/1234
    , property :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPropertiesCheckCompatibility' with the minimum fields required to make a request.
newAnalyticsDataPropertiesCheckCompatibility 
    ::  CheckCompatibilityRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  A Google Analytics GA4 property identifier whose events are tracked. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. @property@ should be the same value as in your @runReport@ request. Example: properties\/1234 See 'property'.
    -> AnalyticsDataPropertiesCheckCompatibility
newAnalyticsDataPropertiesCheckCompatibility payload property =
  AnalyticsDataPropertiesCheckCompatibility
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , property = property
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsDataPropertiesCheckCompatibility
         where
        type Rs AnalyticsDataPropertiesCheckCompatibility =
             CheckCompatibilityResponse
        type Scopes AnalyticsDataPropertiesCheckCompatibility
             = '[Analytics'FullControl, Analytics'Readonly]
        requestClient
          AnalyticsDataPropertiesCheckCompatibility{..}
          = go property xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              analyticsDataService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsDataPropertiesCheckCompatibilityResource)
                      Core.mempty

