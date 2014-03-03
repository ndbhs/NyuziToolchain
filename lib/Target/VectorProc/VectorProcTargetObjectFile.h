//===-- VectorProcTargetObjectFile.h - VectorProc Object Info ---------*- C++
//-*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file deals with any VectorProc specific requirements on object files.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_TARGET_VECTORPROC_TARGETOBJECTFILE_H
#define LLVM_TARGET_VECTORPROC_TARGETOBJECTFILE_H

#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetLoweringObjectFile.h"

namespace llvm {

/// VectorProcLinuxTargetObjectFile - This implementation is used for linux
/// VectorProc.
class VectorProcTargetObjectFile : public TargetLoweringObjectFileELF {
  virtual void Initialize(MCContext &Ctx, const TargetMachine &TM) LLVM_OVERRIDE;
};

} // end namespace llvm

#endif
