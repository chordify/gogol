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
-- Module      : Gogol.AnalyticsData.Properties.GetMetadata
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for dimensions and metrics available in reporting methods. Used to explore the dimensions and metrics. In this method, a Google Analytics GA4 Property Identifier is specified in the request, and the metadata response includes Custom dimensions and metrics as well as Universal metadata. For example if a custom metric with parameter name @levels_unlocked@ is registered to a property, the Metadata response will contain @customEvent:levels_unlocked@. Universal metadata are dimensions and metrics applicable to any property such as @country@ and @totalUsers@.
--
-- /See:/ <https://developers.google.com/analytics/devguides/reporting/data/v1/ Google Analytics Data API Reference> for @analyticsdata.properties.getMetadata@.
module Gogol.AnalyticsData.Properties.GetMetadata
    (
    -- * Resource
      AnalyticsDataPropertiesGetMetadataResource

    -- ** Constructing a Request
    , AnalyticsDataPropertiesGetMetadata (..)
    , newAnalyticsDataPropertiesGetMetadata
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AnalyticsData.Types

-- | A resource alias for @analyticsdata.properties.getMetadata@ method which the
-- 'AnalyticsDataPropertiesGetMetadata' request conforms to.
type AnalyticsDataPropertiesGetMetadataResource =
     "v1beta" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Metadata

-- | Returns metadata for dimensions and metrics available in reporting methods. Used to explore the dimensions and metrics. In this method, a Google Analytics GA4 Property Identifier is specified in the request, and the metadata response includes Custom dimensions and metrics as well as Universal metadata. For example if a custom metric with parameter name @levels_unlocked@ is registered to a property, the Metadata response will contain @customEvent:levels_unlocked@. Universal metadata are dimensions and metrics applicable to any property such as @country@ and @totalUsers@.
--
-- /See:/ 'newAnalyticsDataPropertiesGetMetadata' smart constructor.
data AnalyticsDataPropertiesGetMetadata = AnalyticsDataPropertiesGetMetadata
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The resource name of the metadata to retrieve. This name field is specified in the URL path and not URL parameters. Property is a numeric Google Analytics GA4 Property identifier. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Example: properties\/1234\/metadata Set the Property ID to 0 for dimensions and metrics common to all properties. In this special mode, this method will not return custom dimensions and metrics.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AnalyticsDataPropertiesGetMetadata' with the minimum fields required to make a request.
newAnalyticsDataPropertiesGetMetadata 
    ::  Core.Text
       -- ^  Required. The resource name of the metadata to retrieve. This name field is specified in the URL path and not URL parameters. Property is a numeric Google Analytics GA4 Property identifier. To learn more, see <https://developers.google.com/analytics/devguides/reporting/data/v1/property-id where to find your Property ID>. Example: properties\/1234\/metadata Set the Property ID to 0 for dimensions and metrics common to all properties. In this special mode, this method will not return custom dimensions and metrics. See 'name'.
    -> AnalyticsDataPropertiesGetMetadata
newAnalyticsDataPropertiesGetMetadata name =
  AnalyticsDataPropertiesGetMetadata
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AnalyticsDataPropertiesGetMetadata
         where
        type Rs AnalyticsDataPropertiesGetMetadata = Metadata
        type Scopes AnalyticsDataPropertiesGetMetadata =
             '[Analytics'FullControl, Analytics'Readonly]
        requestClient AnalyticsDataPropertiesGetMetadata{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              analyticsDataService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AnalyticsDataPropertiesGetMetadataResource)
                      Core.mempty

