public func trigger<GenericIntoRustString: IntoRustString>(_ event: GenericIntoRustString, _ payload: GenericIntoRustString) {
    __swift_bridge__$trigger({ let rustString = event.intoRustString(); rustString.isOwned = false; return rustString.ptr }(), { let rustString = payload.intoRustString(); rustString.isOwned = false; return rustString.ptr }())
}
@_cdecl("__swift_bridge__$initialize")
func __swift_bridge__initialize () -> __swift_bridge__$FFIResult {
    initialize().intoFfiRepr()
}

@_cdecl("__swift_bridge__$getProducts")
func __swift_bridge__getProducts (_ productIds: UnsafeMutableRawPointer, _ productType: UnsafeMutableRawPointer) -> __swift_bridge__$FFIResult {
    getProducts(productIds: RustVec(ptr: productIds), productType: RustString(ptr: productType)).intoFfiRepr()
}

@_cdecl("__swift_bridge__$purchase")
func __swift_bridge__purchase (_ productId: UnsafeMutableRawPointer, _ productType: UnsafeMutableRawPointer, _ offerToken: UnsafeMutableRawPointer?) -> __swift_bridge__$FFIResult {
    purchase(productId: RustString(ptr: productId), productType: RustString(ptr: productType), offerToken: { let val = offerToken; if val != nil { return RustString(ptr: val!) } else { return nil } }()).intoFfiRepr()
}

@_cdecl("__swift_bridge__$restorePurchases")
func __swift_bridge__restorePurchases (_ productType: UnsafeMutableRawPointer) -> __swift_bridge__$FFIResult {
    restorePurchases(productType: RustString(ptr: productType)).intoFfiRepr()
}

@_cdecl("__swift_bridge__$acknowledgePurchase")
func __swift_bridge__acknowledgePurchase (_ purchaseToken: UnsafeMutableRawPointer) -> __swift_bridge__$FFIResult {
    acknowledgePurchase(purchaseToken: RustString(ptr: purchaseToken)).intoFfiRepr()
}

@_cdecl("__swift_bridge__$getProductStatus")
func __swift_bridge__getProductStatus (_ productId: UnsafeMutableRawPointer, _ productType: UnsafeMutableRawPointer) -> __swift_bridge__$FFIResult {
    getProductStatus(productId: RustString(ptr: productId), productType: RustString(ptr: productType)).intoFfiRepr()
}

public enum FFIResult {
    case Ok(RustString)
    case Err(RustString)
}
extension FFIResult {
    func intoFfiRepr() -> __swift_bridge__$FFIResult {
        switch self {
            case FFIResult.Ok(let _0):
                return __swift_bridge__$FFIResult(tag: __swift_bridge__$FFIResult$Ok, payload: __swift_bridge__$FFIResultFields(Ok: __swift_bridge__$FFIResult$FieldOfOk(_0: { let rustString = _0.intoRustString(); rustString.isOwned = false; return rustString.ptr }())))
            case FFIResult.Err(let _0):
                return __swift_bridge__$FFIResult(tag: __swift_bridge__$FFIResult$Err, payload: __swift_bridge__$FFIResultFields(Err: __swift_bridge__$FFIResult$FieldOfErr(_0: { let rustString = _0.intoRustString(); rustString.isOwned = false; return rustString.ptr }())))
        }
    }
}
extension __swift_bridge__$FFIResult {
    func intoSwiftRepr() -> FFIResult {
        switch self.tag {
            case __swift_bridge__$FFIResult$Ok:
                return FFIResult.Ok(RustString(ptr: self.payload.Ok._0))
            case __swift_bridge__$FFIResult$Err:
                return FFIResult.Err(RustString(ptr: self.payload.Err._0))
            default:
                fatalError("Unreachable")
        }
    }
}
extension __swift_bridge__$Option$FFIResult {
    @inline(__always)
    func intoSwiftRepr() -> Optional<FFIResult> {
        if self.is_some {
            return self.val.intoSwiftRepr()
        } else {
            return nil
        }
    }
    @inline(__always)
    static func fromSwiftRepr(_ val: Optional<FFIResult>) -> __swift_bridge__$Option$FFIResult {
        if let v = val {
            return __swift_bridge__$Option$FFIResult(is_some: true, val: v.intoFfiRepr())
        } else {
            return __swift_bridge__$Option$FFIResult(is_some: false, val: __swift_bridge__$FFIResult())
        }
    }
}


