package objc_Foundation

import "base:intrinsics"

@(objc_class="NSBitmapImageRep")
BitmapImageRep :: struct { using _: Object }

BitmapFormat :: distinct UInteger
BitmapFormatAlphaFirst              : BitmapFormat : BitmapFormat(1 << 0)
BitmapFormatAlphaNonpremultiplied   : BitmapFormat : BitmapFormat(1 << 1)
BitmapFormatFloatingPointSamples    : BitmapFormat : BitmapFormat(1 << 2)
BitmapFormatSixteenBitLittleEndian  : BitmapFormat : BitmapFormat(1 << 8)
BitmapFormatThirtyTwoBitLittleEndian: BitmapFormat : BitmapFormat(1 << 9)
BitmapFormatSixteenBitBigEndian     : BitmapFormat : BitmapFormat(1 << 10)
BitmapFormatThirtyTwoBitBigEndian   : BitmapFormat : BitmapFormat(1 << 11)

@(objc_type=BitmapImageRep, objc_name="alloc", objc_is_class_method=true)
BitmapImageRep_alloc :: proc "c" () -> ^BitmapImageRep {
	return msgSend(^BitmapImageRep, BitmapImageRep, "alloc")
}

BitmapImageRep_initWithBitmapDataPlanes_legacy :: proc "c" (
    self:            ^BitmapImageRep,
    bitmapDataPlanes: ^^u8,
    pixelsWide:      Integer,
    pixelsHigh:      Integer,
    bitsPerSample:   Integer,
    samplesPerPixel: Integer,
    hasAlpha:        bool,
    isPlanar:        bool,
    colorSpaceName:  ^String,
    bytesPerRow:     Integer,
    bitsPerPixel:    Integer,
) -> ^BitmapImageRep {
    return msgSend(
        ^BitmapImageRep, self,
        "initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bytesPerRow:bitsPerPixel:",
        bitmapDataPlanes, pixelsWide, pixelsHigh, bitsPerSample, samplesPerPixel,
        hasAlpha, isPlanar, colorSpaceName, bytesPerRow, bitsPerPixel,
    )
}

BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat :: proc "c" (
    self:            ^BitmapImageRep,
    bitmapDataPlanes: ^^u8,
    pixelsWide:      Integer,
    pixelsHigh:      Integer,
    bitsPerSample:   Integer,
    samplesPerPixel: Integer,
    hasAlpha:        bool,
    isPlanar:        bool,
    colorSpaceName:  ^String,
    bitmapFormat:    BitmapFormat,
    bytesPerRow:     Integer,
    bitsPerPixel:    Integer,
) -> ^BitmapImageRep {
    return msgSend(
        ^BitmapImageRep, self,
        "initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bitmapFormat:bytesPerRow:bitsPerPixel:",
        bitmapDataPlanes, pixelsWide, pixelsHigh, bitsPerSample, samplesPerPixel,
        hasAlpha, isPlanar, colorSpaceName, bitmapFormat, bytesPerRow, bitsPerPixel,
    )
}

@(objc_type=BitmapImageRep, objc_name="initWithBitmapDataPlanes")
BitmapImageRep_initWithBitmapDataPlanes :: proc{
    BitmapImageRep_initWithBitmapDataPlanes_legacy,
    BitmapImageRep_initWithBitmapDataPlanes_bitmapFormat,
}

@(objc_type=BitmapImageRep, objc_name="bitmapData")
BitmapImageRep_bitmapData :: proc "c" (self: ^BitmapImageRep) -> rawptr {
	return msgSend(rawptr, self, "bitmapData") 
}

@(objc_type=BitmapImageRep, objc_name="CGImage")
BitmapImageRep_CGImage :: proc "c" (self: ^BitmapImageRep) -> rawptr {
	return msgSend(rawptr, self, "CGImage") 
}
