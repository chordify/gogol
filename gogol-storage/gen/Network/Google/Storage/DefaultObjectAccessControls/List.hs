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
-- Module      : Network.Google.Storage.DefaultObjectAccessControls.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.list@.
module Network.Google.Storage.DefaultObjectAccessControls.List
  ( -- * Resource
    StorageDefaultObjectAccessControlsListResource,

    -- ** Constructing a Request
    newStorageDefaultObjectAccessControlsList,
    StorageDefaultObjectAccessControlsList,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Storage.Types

-- | A resource alias for @storage.defaultObjectAccessControls.list@ method which the
-- 'StorageDefaultObjectAccessControlsList' request conforms to.
type StorageDefaultObjectAccessControlsListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.Capture "bucket" Core.Text
    Core.:> "defaultObjectAcl"
    Core.:> Core.QueryParam "ifMetagenerationMatch" Core.Int64
    Core.:> Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ObjectAccessControls

-- | Retrieves default object ACL entries on the specified bucket.
--
-- /See:/ 'newStorageDefaultObjectAccessControlsList' smart constructor.
data StorageDefaultObjectAccessControlsList = StorageDefaultObjectAccessControlsList
  { -- | Name of a bucket.
    bucket :: Core.Text,
    -- | If present, only return default ACL listing if the bucket\'s current metageneration matches this value.
    ifMetagenerationMatch :: (Core.Maybe Core.Int64),
    -- | If present, only return default ACL listing if the bucket\'s current metageneration does not match the given value.
    ifMetagenerationNotMatch :: (Core.Maybe Core.Int64),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request. Required for Requester Pays buckets.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageDefaultObjectAccessControlsList' with the minimum fields required to make a request.
newStorageDefaultObjectAccessControlsList ::
  -- |  Name of a bucket. See 'bucket'.
  Core.Text ->
  StorageDefaultObjectAccessControlsList
newStorageDefaultObjectAccessControlsList bucket =
  StorageDefaultObjectAccessControlsList
    { bucket = bucket,
      ifMetagenerationMatch = Core.Nothing,
      ifMetagenerationNotMatch = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageDefaultObjectAccessControlsList
  where
  type
    Rs StorageDefaultObjectAccessControlsList =
      ObjectAccessControls
  type
    Scopes StorageDefaultObjectAccessControlsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/devstorage.full_control"
       ]
  requestClient
    StorageDefaultObjectAccessControlsList {..} =
      go
        bucket
        ifMetagenerationMatch
        ifMetagenerationNotMatch
        provisionalUserProject
        uploadType
        userProject
        (Core.Just Core.AltJSON)
        storageService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  StorageDefaultObjectAccessControlsListResource
            )
            Core.mempty