/*
Copyright (c) 2022, NVIDIA CORPORATION. All rights reserved.

NVIDIA CORPORATION and its licensors retain all intellectual property
and proprietary rights in and to this software, related documentation
and any modifications thereto. Any use, reproduction, disclosure or
distribution of this software and related documentation without an express
license agreement from NVIDIA CORPORATION is strictly prohibited.
*/

NRD_SAMPLER_START
    NRD_SAMPLER( SamplerState, gNearestClamp, s, 0 )
    NRD_SAMPLER( SamplerState, gNearestMirror, s, 1 )
    NRD_SAMPLER( SamplerState, gLinearClamp, s, 2 )
    NRD_SAMPLER( SamplerState, gLinearMirror, s, 3 )
NRD_SAMPLER_END

NRD_CONSTANTS_START
    RELAX_SHARED_CB_DATA
    NRD_CONSTANT( float4x4, gWorldToClipPrev )
    NRD_CONSTANT( float2, gJitter )
    NRD_CONSTANT( float, gMaxAccumulatedFrameNum )
NRD_CONSTANTS_END

NRD_INPUT_TEXTURE_START
    NRD_INPUT_TEXTURE( Texture2D<float4>, gIn_Normal_Roughness, t, 0 )
    NRD_INPUT_TEXTURE( Texture2D<float>, gIn_ViewZ, t, 1 )
    NRD_INPUT_TEXTURE( Texture2D<float3>, gIn_Mv, t, 2 )
    NRD_INPUT_TEXTURE( Texture2D<float>, gIn_HistoryLength, t, 3 )
NRD_INPUT_TEXTURE_END

NRD_OUTPUT_TEXTURE_START
    NRD_OUTPUT_TEXTURE( RWTexture2D<float4>, gOut_Validation, u, 0 )
NRD_OUTPUT_TEXTURE_END
