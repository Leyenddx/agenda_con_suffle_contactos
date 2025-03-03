#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "ImagenContacto" asset catalog image resource.
static NSString * const ACImageNameImagenContacto AC_SWIFT_PRIVATE = @"ImagenContacto";

#undef AC_SWIFT_PRIVATE
