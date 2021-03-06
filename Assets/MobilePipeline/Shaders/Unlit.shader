﻿Shader "MobilePipeline/Unlit"
{
    Properties
    {
        _Color ("Color", Color) = (1, 1, 1, 1)
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" "Queue"="Geometry"}
        LOD 100
        ZWrite On
        ZTest LEqual

        Pass
        {
            HLSLPROGRAM
            
            #include "ShaderLibrary/Unlit.hlsl"
            #pragma multi_compile_instancing
            #pragma instancing_options assumeuniformscaling
            
            #pragma vertex UnlitPassVertex
            #pragma fragment UnlitPassFragment
            
            ENDHLSL
        }
    }
}
