//===-- NyuziSubtarget.h - Define Subtarget for the Nyuzi -----*-//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file declares the Nyuzi specific subclass of TargetSubtargetInfo.
//
//===----------------------------------------------------------------------===//

#ifndef NYUZI_SUBTARGET_H
#define NYUZI_SUBTARGET_H

#include "llvm/Target/TargetSubtargetInfo.h"
#include "llvm/IR/DataLayout.h"
#include "NyuziFrameLowering.h"
#include "NyuziISelLowering.h"
#include "NyuziInstrInfo.h"
#include "NyuziSelectionDAGInfo.h"
#include <string>

#define GET_SUBTARGETINFO_HEADER
#include "NyuziGenSubtargetInfo.inc"

namespace llvm {
class StringRef;

class NyuziSubtarget : public NyuziGenSubtargetInfo {
  virtual void anchor();
  std::unique_ptr<const NyuziInstrInfo> InstrInfo;
  std::unique_ptr<const NyuziTargetLowering> TLInfo;
  NyuziSelectionDAGInfo TSInfo;
  std::unique_ptr<const NyuziFrameLowering> FrameLowering;

public:
  NyuziSubtarget(const Triple &TT, const std::string &CPU,
                 const std::string &FS, const NyuziTargetMachine &TM);

  /// ParseSubtargetFeatures - Parses features string setting specified
  /// subtarget options.  Definition of function is auto generated by tblgen.
  void ParseSubtargetFeatures(StringRef CPU, StringRef FS);
  virtual const NyuziInstrInfo *getInstrInfo() const override {
    return InstrInfo.get();
  }
  virtual const TargetFrameLowering *getFrameLowering() const override {
    return FrameLowering.get();
  }
  virtual const NyuziRegisterInfo *getRegisterInfo() const override {
    return &InstrInfo->getRegisterInfo();
  }
  virtual const NyuziTargetLowering *getTargetLowering() const override {
    return TLInfo.get();
  }
  virtual const NyuziSelectionDAGInfo *getSelectionDAGInfo() const override {
    return &TSInfo;
  }
};

} // end namespace llvm

#endif