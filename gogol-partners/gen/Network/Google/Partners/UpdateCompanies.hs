{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Partners.UpdateCompanies
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update company. Should only be called within the context of an authorized logged in user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.updateCompanies@.
module Network.Google.Partners.UpdateCompanies
  ( -- * Resource
    PartnersUpdateCompaniesResource,

    -- ** Constructing a Request
    newPartnersUpdateCompanies,
    PartnersUpdateCompanies,
  )
where

import Network.Google.Partners.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @partners.updateCompanies@ method which the
-- 'PartnersUpdateCompanies' request conforms to.
type PartnersUpdateCompaniesResource =
  "v2"
    Core.:> "companies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "requestMetadata.experimentIds"
              Core.Text
    Core.:> Core.QueryParam "requestMetadata.locale" Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.partnersSessionId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.trafficSource.trafficSourceId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.trafficSource.trafficSubId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.userOverrides.ipAddress"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.userOverrides.userId"
              Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Company
    Core.:> Core.Patch '[Core.JSON] Company

-- | Update company. Should only be called within the context of an authorized logged in user.
--
-- /See:/ 'newPartnersUpdateCompanies' smart constructor.
data PartnersUpdateCompanies = PartnersUpdateCompanies
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Company,
    -- | Experiment IDs the current request belongs to.
    requestMetadataExperimentIds :: (Core.Maybe [Core.Text]),
    -- | Locale to use for the current request.
    requestMetadataLocale :: (Core.Maybe Core.Text),
    -- | Google Partners session ID.
    requestMetadataPartnersSessionId :: (Core.Maybe Core.Text),
    -- | Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    requestMetadataTrafficSourceTrafficSourceId :: (Core.Maybe Core.Text),
    -- | Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    requestMetadataTrafficSourceTrafficSubId :: (Core.Maybe Core.Text),
    -- | IP address to use instead of the user\'s geo-located IP address.
    requestMetadataUserOverridesIpAddress :: (Core.Maybe Core.Text),
    -- | Logged-in user ID to impersonate instead of the user\'s ID.
    requestMetadataUserOverridesUserId :: (Core.Maybe Core.Text),
    -- | Standard field mask for the set of fields to be updated. Required with at least 1 value in FieldMask\'s paths.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersUpdateCompanies' with the minimum fields required to make a request.
newPartnersUpdateCompanies ::
  -- |  Multipart request metadata. See 'payload'.
  Company ->
  PartnersUpdateCompanies
newPartnersUpdateCompanies payload =
  PartnersUpdateCompanies
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      requestMetadataExperimentIds = Core.Nothing,
      requestMetadataLocale = Core.Nothing,
      requestMetadataPartnersSessionId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSourceId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSubId = Core.Nothing,
      requestMetadataUserOverridesIpAddress = Core.Nothing,
      requestMetadataUserOverridesUserId = Core.Nothing,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PartnersUpdateCompanies where
  type Rs PartnersUpdateCompanies = Company
  type Scopes PartnersUpdateCompanies = '[]
  requestClient PartnersUpdateCompanies {..} =
    go
      xgafv
      accessToken
      callback
      (requestMetadataExperimentIds Core.^. Core._Default)
      requestMetadataLocale
      requestMetadataPartnersSessionId
      requestMetadataTrafficSourceTrafficSourceId
      requestMetadataTrafficSourceTrafficSubId
      requestMetadataUserOverridesIpAddress
      requestMetadataUserOverridesUserId
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      partnersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PartnersUpdateCompaniesResource
          )
          Core.mempty
