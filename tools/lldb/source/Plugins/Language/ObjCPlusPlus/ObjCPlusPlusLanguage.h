//===-- ObjCPlusPlusLanguage.h ----------------------------------------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef liblldb_ObjCPlusPlusLanguage_h_
#define liblldb_ObjCPlusPlusLanguage_h_

// C Includes
// C++ Includes
// Other libraries and framework includes
// Project includes
#include "lldb/lldb-private.h"
#include "lldb/Target/Language.h"

namespace lldb_private {
    
class ObjCPlusPlusLanguage :
    public Language
{
public:
    virtual ~ObjCPlusPlusLanguage() = default;
    
    ObjCPlusPlusLanguage () = default;
    
    lldb::LanguageType
    GetLanguageType () const
    {
        return lldb::eLanguageTypeObjC_plus_plus;
    }
    
    //------------------------------------------------------------------
    // Static Functions
    //------------------------------------------------------------------
    static void
    Initialize();
    
    static void
    Terminate();
    
    static lldb_private::Language *
    CreateInstance (lldb::LanguageType language);
    
    static lldb_private::ConstString
    GetPluginNameStatic();
    
    //------------------------------------------------------------------
    // PluginInterface protocol
    //------------------------------------------------------------------
    virtual ConstString
    GetPluginName();
    
    virtual uint32_t
    GetPluginVersion();
};
    
} // namespace lldb_private

#endif  // liblldb_CPlusPlusLanguage_h_
