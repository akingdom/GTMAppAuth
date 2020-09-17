/*! @file GTMAppAuth.h
    @brief GTMAppAuth SDK
    @copyright
        Copyright 2016 Google Inc.
    @copydetails
        Licensed under the Apache License, Version 2.0 (the "License");
        you may not use this file except in compliance with the License.
        You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

        Unless required by applicable law or agreed to in writing, software
        distributed under the License is distributed on an "AS IS" BASIS,
        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
        See the License for the specific language governing permissions and
        limitations under the License.
 */

#if TARGET_OS_TV
#elif TARGET_OS_WATCH
#elif TARGET_OS_IOS
#import "gtm-session-fetcher/Source/GTMSessionFetcher.h"
#import "gtm-session-fetcher/Source/GTMSessionFetcherIOS/GTMSessionFetcherIOS.h"
#import "AppAuth-iOS/Source/CoreFramework/AppAuthCore.h"
#import "GTMOAuth2KeychainCompatibility/GTMOAuth2KeychainCompatibility.h"
#elif TARGET_OS_MAC
#import "gtm-session-fetcher/Source/GTMSessionFetcher.h"
#import "gtm-session-fetcher/Source/GTMSessionFetcherOSX/GTMSessionFetcherOSX.h"
#import "AppAuth-iOS/Source/CoreFramework/AppAuthCore.h"
#import "GTMOAuth2KeychainCompatibility/GTMOAuth2KeychainCompatibility.h"
#else
#warning "Platform Undefined"
#endif

#import "GTMAppAuthFetcherAuthorization.h"
#import "GTMAppAuthFetcherAuthorization+Keychain.h"
