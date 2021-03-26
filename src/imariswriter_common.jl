# Automatically generated using Clang.jl

export bpConverterTypesC_Float
export bpConverterTypesC_UInt8, bpConverterTypesC_UInt16, bpConverterTypesC_UInt32, bpConverterTypesC_UInt64
const bpConverterTypesC_UInt8 = Cuchar # UInt8
const bpConverterTypesC_UInt16 = UInt16
const bpConverterTypesC_UInt32 = UInt32
const bpConverterTypesC_UInt64 = Culonglong # UInt64
const bpConverterTypesC_Float = Cfloat # Float32

const bpImageConverterC = Cvoid # Nothing
const bpImageConverterCPtr = Ptr{bpImageConverterC} # Ptr{Nothing}
const bpConverterTypesC_ProgressCallback = Ptr{Cvoid} # Ptr{Nothing}

export bpConverterTypesC_DataType
export bpConverterTypesC_UInt8Type, bpConverterTypesC_UInt16Type, bpConverterTypesC_UInt32Type, bpConverterTypesC_FloatType
@enum bpConverterTypesC_DataType::UInt32 begin
    bpConverterTypesC_UInt8Type = 0
    bpConverterTypesC_UInt16Type = 1
    bpConverterTypesC_UInt32Type = 2
    bpConverterTypesC_FloatType = 3
end
Base.convert(::Type{bpConverterTypesC_DataType}, ::Type{UInt8}) = bpConverterTypesC_UInt8Type
Base.convert(::Type{bpConverterTypesC_DataType}, ::Type{UInt16}) = bpConverterTypesC_UInt16Type
Base.convert(::Type{bpConverterTypesC_DataType}, ::Type{UInt32}) = bpConverterTypesC_UInt32Type
Base.convert(::Type{bpConverterTypesC_DataType}, ::Type{Float32}) = bpConverterTypesC_Float32Type

export bpConverterTypesC_ImageExtent
struct bpConverterTypesC_ImageExtent
    mExtentMinX::Cfloat
    mExtentMinY::Cfloat
    mExtentMinZ::Cfloat
    mExtentMaxX::Cfloat
    mExtentMaxY::Cfloat
    mExtentMaxZ::Cfloat
end
bpConverterTypesC_ImageExtent(; X = (0,1), Y = (0,1), Z = (0,1)) =
    bpConverterTypesC_ImageExtent(X[1], Y[1], Z[1], X[2], Y[2], Z[2])

const ImageExtent = bpConverterTypesC_ImageExtent

const bpConverterTypesC_ImageExtentPtr = Ptr{bpConverterTypesC_ImageExtent}
export bpConverterTypesC_ImageExtentPtr 

export bpConverterTypesC_Dimension
export bpConverterTypesC_DimensionX, bpConverterTypesC_DimensionY, bpConverterTypesC_DimensionZ, bpConverterTypesC_DimensionC, bpConverterTypesC_DimensionT
@enum bpConverterTypesC_Dimension::UInt32 begin
    bpConverterTypesC_DimensionX = 0
    bpConverterTypesC_DimensionY = 1
    bpConverterTypesC_DimensionZ = 2
    bpConverterTypesC_DimensionC = 3
    bpConverterTypesC_DimensionT = 4
end
function bpConverterTypesC_Dimension(s::Symbol)
    if s == :X
        bpConverterTypesC_DimensionX
    elseif s == :Y
        bpConverterTypesC_DimensionY
    elseif s == :Z
        bpConverterTypesC_DimensionZ
    elseif s == :C
        bpConverterTypesC_DimensionC
    elseif s == :T
        bpConverterTypesC_DimensionT
    else
        error("Symbol cannot be mapped to a known dimension")
    end
end
bpConverterTypesC_Dimension(str::String) = bpConverterTypesC_Dimension(Symbol(str))
Base.convert(::Type{bpConverterTypesC_Dimension},s::Union{Symbol,String}) = bpConverterTypesC_Dimension(s)

export bpConverterTypesC_DimensionSequence5D
struct bpConverterTypesC_DimensionSequence5D
    mDimension0::bpConverterTypesC_Dimension
    mDimension1::bpConverterTypesC_Dimension
    mDimension2::bpConverterTypesC_Dimension
    mDimension3::bpConverterTypesC_Dimension
    mDimension4::bpConverterTypesC_Dimension
end
const DimensionSequence5D = bpConverterTypesC_DimensionSequence5D

const bpConverterTypesC_DimensionSequence5DPtr = Ptr{bpConverterTypesC_DimensionSequence5D}

export bpConverterTypesC_Size5D 
struct bpConverterTypesC_Size5D
    mValueX::UInt32
    mValueY::UInt32
    mValueZ::UInt32
    mValueC::UInt32
    mValueT::UInt32
    bpConverterTypesC_Size5D(mValueX, mValueY = 1, mValueZ = 1, mValueC = 1, mValueT = 1) = new(mValueX, mValueY, mValueZ, mValueC, mValueT)
end
const Size5D = bpConverterTypesC_Size5D
bpConverterTypesC_Size5D(; X = 1, Y = 1, Z = 1, C = 1, T = 1) = bpConverterTypesC_Size5D(X, Y, Z, C, T)

const bpConverterTypesC_Size5DPtr = Ptr{bpConverterTypesC_Size5D}

export bpConverterTypesC_Index5D
mutable struct bpConverterTypesC_Index5D
    mValueX::UInt32
    mValueY::UInt32
    mValueZ::UInt32
    mValueC::UInt32
    mValueT::UInt32
    bpConverterTypesC_Index5D(mValueX, mValueY = 0, mValueZ = 0, mValueC = 0, mValueT = 0) = new(mValueX, mValueY, mValueZ, mValueC, mValueT)
end
const Index5D = bpConverterTypesC_Index5D

bpConverterTypesC_Index5D(; X = 0, Y = 0, Z = 0, C = 0, T =0) = bpConverterTypesC_Index5D(X, Y, Z, C, T)

const bpConverterTypesC_Index5DPtr = Ptr{bpConverterTypesC_Index5D}
const bpConverterTypesC_String = Cstring

export tCompressionAlgorithmType
@enum tCompressionAlgorithmType::UInt32 begin
    eCompressionAlgorithmNone = 0
    eCompressionAlgorithmGzipLevel1 = 1
    eCompressionAlgorithmGzipLevel2 = 2
    eCompressionAlgorithmGzipLevel3 = 3
    eCompressionAlgorithmGzipLevel4 = 4
    eCompressionAlgorithmGzipLevel5 = 5
    eCompressionAlgorithmGzipLevel6 = 6
    eCompressionAlgorithmGzipLevel7 = 7
    eCompressionAlgorithmGzipLevel8 = 8
    eCompressionAlgorithmGzipLevel9 = 9
    eCompressionAlgorithmShuffleGzipLevel1 = 11
    eCompressionAlgorithmShuffleGzipLevel2 = 12
    eCompressionAlgorithmShuffleGzipLevel3 = 13
    eCompressionAlgorithmShuffleGzipLevel4 = 14
    eCompressionAlgorithmShuffleGzipLevel5 = 15
    eCompressionAlgorithmShuffleGzipLevel6 = 16
    eCompressionAlgorithmShuffleGzipLevel7 = 17
    eCompressionAlgorithmShuffleGzipLevel8 = 18
    eCompressionAlgorithmShuffleGzipLevel9 = 19
    eCompressionAlgorithmLZ4 = 21
    eCompressionAlgorithmLShuffleLZ4 = 31
end
for i in instances(tCompressionAlgorithmType)
    @eval export $(Symbol(i))
end

export bpConverterTypesC_Options
struct bpConverterTypesC_Options
    mThumbnailSizeXY::UInt32
    mFlipDimensionX::Bool
    mFlipDimensionY::Bool
    mFlipDimensionZ::Bool
    mForceFileBlockSizeZ1::Bool
    mEnableLogProgress::Bool
    mNumberOfThreads::UInt32
    mCompressionAlgorithmType::tCompressionAlgorithmType
    mDisablePyramid::Bool
    bpConverterTypesC_Options(mThumbnailSizeXY, mFlipDimensionX, mFlipDimensionY, mFlipDimensionZ, mForceFileBlockSizeZ1, mEnableLogProgress, mNumberOfThreads, mCompressionAlgorithmType, mDisablePyramid = false) =
        new(mThumbnailSizeXY, mFlipDimensionX, mFlipDimensionY, mFlipDimensionZ, mForceFileBlockSizeZ1, mEnableLogProgress, mNumberOfThreads, mCompressionAlgorithmType, mDisablePyramid)
end
const Options = bpConverterTypesC_Options

# All keyword version with reasonable defaults
function bpConverterTypesC_Options(;
    mThumbnailSizeXY = 256,
    mFlipDimensionX = false,
    mFlipDimensionY = false,
    mFlipDimensionZ = false,
    mForceFileBlockSizeZ1 = false,
    mEnableLogProgress = true,
    mNumberOfThreads = Threads.nthreads(),
    mCompressionAlgorithmType = eCompressionAlgorithmLShuffleLZ4,
    mDisablePyramid = false
    )
    Options(
        mThumbnailSizeXY,
        mFlipDimensionX,
        mFlipDimensionY,
        mFlipDimensionZ,
        mForceFileBlockSizeZ1,
        mEnableLogProgress,
        mNumberOfThreads,
        mCompressionAlgorithmType,
        mDisablePyramid
    )
end

const bpConverterTypesC_OptionsPtr = Ptr{bpConverterTypesC_Options}

export bpConverterTypesC_Parameter
struct bpConverterTypesC_Parameter
    mName::bpConverterTypesC_String
    mValue::bpConverterTypesC_String
end
function bpConverterTypesC_Parameter(mName::String, mValue::String)
    bpConverterTypesC_Parameter(Cstring(pointer(mName)),
                                Cstring(pointer(mValue)))
end

struct Parameter
    mName::String
    mValue::String
end
bpConverterTypesC_Parameter(p::Parameter) = bpConverterTypesC_Parameter(p.mName, p.mValue)
Base.unsafe_convert(::Type{bpConverterTypesC_Parameter}, p::Parameter) = 
    bpConverterTypesC_Parameter(p)


export bpConverterTypesC_ParameterSection
struct bpConverterTypesC_ParameterSection
    mName::bpConverterTypesC_String
    mValues::Ptr{bpConverterTypesC_Parameter}
    mValuesCount::UInt32
end

struct ParameterSection
    mName::String
    mValues::Vector{bpConverterTypesC_Parameter}
end
ParameterSection(mName::String, mValues::Vector{Parameter}) =
    ParameterSection(mName, bpConverterTypesC_Parameter.(mValues) )

ParameterSection(mName::String, p::Parameter) = 
    ParameterSection(mName, Parameter[p])

Base.unsafe_convert(::Type{bpConverterTypesC_ParameterSection}, ps::ParameterSection) =
    bpConverterTypesC_ParameterSection(ps)

function bpConverterTypesC_ParameterSection(ps::ParameterSection)
    bpConverterTypesC_ParameterSection(
        Base.unsafe_convert(Cstring, ps.mName),
        pointer( ps.mValues ),
        length( ps.mValues )
    )
end 

export bpConverterTypesC_Parameters
struct bpConverterTypesC_Parameters
    mValues::Ptr{bpConverterTypesC_ParameterSection}
    mValuesCount::UInt32
end
const Parameters = Vector{bpConverterTypesC_ParameterSection}

const bpConverterTypesC_ParametersPtr = Ptr{bpConverterTypesC_Parameters}

export bpConverterTypesC_TimeInfo
struct bpConverterTypesC_TimeInfo
    mJulianDay::UInt32
    mNanosecondsOfDay::Culonglong
end
const TimeInfo = bpConverterTypesC_TimeInfo

export bpConverterTypesC_TimeInfos
struct bpConverterTypesC_TimeInfos
    mValues::Ptr{bpConverterTypesC_TimeInfo}
    mValuesCount::UInt32
end
const TimeInfos = Vector{TimeInfo}
Base.unsafe_convert(::Type{bpConverterTypesC_TimeInfos}, v::TimeInfos) =
    bpConverterTypesC_TimeInfos(v)

bpConverterTypesC_TimeInfos(v::TimeInfos) = 
    bpConverterTypesC_TimeInfos(
        pointer( v ),
        length( v )
    )


const bpConverterTypesC_TimeInfoVector = Ptr{bpConverterTypesC_TimeInfos}

export bpConverterTypesC_Color
struct bpConverterTypesC_Color
    mRed::Cfloat
    mGreen::Cfloat
    mBlue::Cfloat
    mAlpha::Cfloat
    bpConverterTypesC_Color(mRed=1.0f0, mGreen=1.0f0, mBlue=1.0f0, mAlpha=1.0f0) = new(mRed, mGreen, mBlue, mAlpha)
end
const Color = bpConverterTypesC_Color

export bpConverterTypesC_ColorInfo
struct bpConverterTypesC_ColorInfo
    mIsBaseColorMode::Bool
    mBaseColor::bpConverterTypesC_Color
    mColorTable::Ptr{bpConverterTypesC_Color}
    mColorTableSize::UInt32
    mOpacity::Cfloat
    mRangeMin::Cfloat
    mRangeMax::Cfloat
    mGammaCorrection::Cfloat
end

struct ColorInfo
    mIsBaseColorMode::Bool
    mBaseColor::bpConverterTypesC_Color
    mColorTable::Vector{bpConverterTypesC_Color}
    mOpacity::Cfloat
    mRangeMin::Cfloat
    mRangeMax::Cfloat
    mGammaCorrection::Cfloat
end

ColorInfo(
    mColorTable::Vector{bpConverterTypesC_Color};
    mOpacity = 0,
    mRangeMin = 0,
    mRangeMax = 255,
    mGammaCorrection = 1
) = ColorInfo(
    false,
    bpConverterTypesC_Color(0,0,0,0),
    mColorTable,
    mOpacity, mRangeMin, mRangeMax, mGammaCorrection)

ColorInfo(
    mBaseColor::bpConverterTypesC_Color = Color();
    mOpacity = 0,
    mRangeMin = 0,
    mRangeMax = 255,
    mGammaCorrection = 1
) = ColorInfo(
    true,
    mBaseColor,
    bpConverterTypesC_Color[],
    mOpacity, mRangeMin, mRangeMax, mGammaCorrection
)

Base.unsafe_convert(::Type{bpConverterTypesC_ColorInfo}, ci::ColorInfo) =
    bpConverterTypesC_ColorInfo(ci)

bpConverterTypesC_ColorInfo(ci::ColorInfo) = 
    bpConverterTypesC_ColorInfo(
        ci.mIsBaseColorMode,
        ci.mBaseColor,
        pointer( ci.mColorTable ),
        length( ci.mColorTable ),
        ci.mOpacity,
        ci.mRangeMin,
        ci.mRangeMax,
        ci.mGammaCorrection
    )


export bpConverterTypesC_ColorInfos
struct bpConverterTypesC_ColorInfos
    mValues::Ptr{bpConverterTypesC_ColorInfo}
    mValuesCount::UInt32
end
const bpConverterTypesC_ColorInfoVector = Ptr{bpConverterTypesC_ColorInfos}

const ColorInfos = Vector{bpConverterTypesC_ColorInfos}
function Base.unsafe_convert(::Type{bpConverterTypesC_ColorInfos}, cis::ColorInfos)
    bpConverterTypesC_ColorInfos(
        pointer( cis ),
        length( cis )
    )
end



# Skipping MacroDefinition: BP_IMARISWRITER_DLL_EXPORT __declspec ( dllexport )
# Skipping MacroDefinition: BP_IMARISWRITER_DLL_IMPORT __declspec ( dllimport )
# const BP_IMARISWRITER_DLL_API = BP_IMARISWRITER_DLL_IMPORT
