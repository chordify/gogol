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
-- Module      : Network.Google.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.History
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the versions of a resource (including the current version and deleted versions) from the FHIR store. Implements the per-resource form of the FHIR standard history interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#history DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#history STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#history R4>). On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @history@, containing the version history sorted from most recent to oldest versions. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @history@, see </healthcare/docs/how-tos/fhir-resources#listing_fhir_resource_versions Listing FHIR resource versions>.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.fhirStores.fhir.history@.
module Network.Google.Healthcare.Projects.Locations.Datasets.FhirStores.Fhir.History
  ( -- * Resource
    HealthcareProjectsLocationsDatasetsFhirStoresFhirHistoryResource,

    -- ** Constructing a Request
    newHealthcareProjectsLocationsDatasetsFhirStoresFhirHistory,
    HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory,
  )
where

import Network.Google.Healthcare.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @healthcare.projects.locations.datasets.fhirStores.fhir.history@ method which the
-- 'HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory' request conforms to.
type HealthcareProjectsLocationsDatasetsFhirStoresFhirHistoryResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "_history"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "_at" Core.Text
    Core.:> Core.QueryParam "_count" Core.Int32
    Core.:> Core.QueryParam "_page_token" Core.Text
    Core.:> Core.QueryParam "_since" Core.Text
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpBody

-- | Lists all the versions of a resource (including the current version and deleted versions) from the FHIR store. Implements the per-resource form of the FHIR standard history interaction (<http://hl7.org/implement/standards/fhir/DSTU2/http.html#history DSTU2>, <http://hl7.org/implement/standards/fhir/STU3/http.html#history STU3>, <http://hl7.org/implement/standards/fhir/R4/http.html#history R4>). On success, the response body contains a JSON-encoded representation of a @Bundle@ resource of type @history@, containing the version history sorted from most recent to oldest versions. Errors generated by the FHIR store contain a JSON-encoded @OperationOutcome@ resource describing the reason for the error. If the request cannot be mapped to a valid API method on a FHIR store, a generic GCP error might be returned instead. For samples that show how to call @history@, see </healthcare/docs/how-tos/fhir-resources#listing_fhir_resource_versions Listing FHIR resource versions>.
--
-- /See:/ 'newHealthcareProjectsLocationsDatasetsFhirStoresFhirHistory' smart constructor.
data HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory = HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | Only include resource versions that were current at some point during the time period specified in the date time value. The date parameter format is yyyy-mm-ddThh:mm:ss[Z|(+|-)hh:mm] Clients may specify any of the following: * An entire year: @_at=2019@ * An entire month: @_at=2019-01@ * A specific day: @_at=2019-01-20@ * A specific second: @_at=2018-12-31T23:59:58Z@
    at :: (Core.Maybe Core.Text),
    -- | The maximum number of search results on a page. If not specified, 100 is used. May not be larger than 1000.
    count :: (Core.Maybe Core.Int32),
    -- | Used to retrieve the first, previous, next, or last page of resource versions when using pagination. Value should be set to the value of @_page_token@ set in next or previous page links\' URLs. Next and previous page are returned in the response bundle\'s links field, where @link.relation@ is \"previous\" or \"next\". Omit @_page_token@ if no previous request has been made.
    pageToken :: (Core.Maybe Core.Text),
    -- | Only include resource versions that were created at or after the given instant in time. The instant in time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz (for example 2015-02-07T13:28:17.239+02:00 or 2017-01-01T00:00:00Z). The time must be specified to the second and include a time zone.
    since :: (Core.Maybe Core.Text),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the resource to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory' with the minimum fields required to make a request.
newHealthcareProjectsLocationsDatasetsFhirStoresFhirHistory ::
  -- |  The name of the resource to retrieve. See 'name'.
  Core.Text ->
  HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory
newHealthcareProjectsLocationsDatasetsFhirStoresFhirHistory name =
  HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory
    { xgafv = Core.Nothing,
      at = Core.Nothing,
      count = Core.Nothing,
      pageToken = Core.Nothing,
      since = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory
  where
  type
    Rs
      HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory =
      HttpBody
  type
    Scopes
      HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    HealthcareProjectsLocationsDatasetsFhirStoresFhirHistory {..} =
      go
        name
        xgafv
        at
        count
        pageToken
        since
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        healthcareService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  HealthcareProjectsLocationsDatasetsFhirStoresFhirHistoryResource
            )
            Core.mempty