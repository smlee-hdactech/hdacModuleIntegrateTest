#ifndef CHECKJOBLIB_H
#define CHECKJOBLIB_H

#include "strcodeclib_global.h"
#include <string>

STRCODECLIBSHARED_EXPORT std::string EncodeBase64(const unsigned char* pch, size_t len);
STRCODECLIBSHARED_EXPORT std::string EncodeBase64(const std::string& str);

#endif // CHECKJOBLIB_H
