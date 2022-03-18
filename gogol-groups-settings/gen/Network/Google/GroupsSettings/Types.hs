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
-- Module      : Network.Google.GroupsSettings.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.GroupsSettings.Types
  ( -- * Configuration
    groupsSettingsService,

    -- * OAuth Scopes
    appsGroupsSettingsScope,

    -- * Types

    -- ** Groups
    Groups (..),
    newGroups,
  )
where

import Network.Google.GroupsSettings.Internal.Product
import Network.Google.GroupsSettings.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Groups Settings API. This contains the host and root path used as a starting point for constructing service requests.
groupsSettingsService :: Core.ServiceConfig
groupsSettingsService =
  Core.defaultService
    (Core.ServiceId "groupssettings:v1")
    "www.googleapis.com"

-- | View and manage the settings of a G Suite group
appsGroupsSettingsScope :: Core.Proxy '["https://www.googleapis.com/auth/apps.groups.settings"]
appsGroupsSettingsScope = Core.Proxy
