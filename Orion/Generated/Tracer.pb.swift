// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Tracer.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

//
// Copyright (c) 2018 Thapovan info Systems
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Com_Thapovan_Orion_Proto_ServerResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var success: Bool = false

  public var code: String = String()

  public var message: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Thapovan_Orion_Proto_ControlRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var requestType: Com_Thapovan_Orion_Proto_ControlRequest.RequestType {
    get {return _storage._requestType}
    set {_uniqueStorage()._requestType = newValue}
  }

  public var params: OneOf_Params? {
    get {return _storage._params}
    set {_uniqueStorage()._params = newValue}
  }

  public var protoStruct: SwiftProtobuf.Google_Protobuf_Struct {
    get {
      if case .protoStruct(let v)? = _storage._params {return v}
      return SwiftProtobuf.Google_Protobuf_Struct()
    }
    set {_uniqueStorage()._params = .protoStruct(newValue)}
  }

  public var jsonString: String {
    get {
      if case .jsonString(let v)? = _storage._params {return v}
      return String()
    }
    set {_uniqueStorage()._params = .jsonString(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Params: Equatable {
    case protoStruct(SwiftProtobuf.Google_Protobuf_Struct)
    case jsonString(String)

    public static func ==(lhs: Com_Thapovan_Orion_Proto_ControlRequest.OneOf_Params, rhs: Com_Thapovan_Orion_Proto_ControlRequest.OneOf_Params) -> Bool {
      switch (lhs, rhs) {
      case (.protoStruct(let l), .protoStruct(let r)): return l == r
      case (.jsonString(let l), .jsonString(let r)): return l == r
      default: return false
      }
    }
  }

  public enum RequestType: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case auth // = 0
    case endStream // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .auth
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .auth
      case 1: self = .endStream
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .auth: return 0
      case .endStream: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Com_Thapovan_Orion_Proto_UnaryRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var authToken: String {
    get {return _storage._authToken}
    set {_uniqueStorage()._authToken = newValue}
  }

  public var spanData: Com_Thapovan_Orion_Proto_Span {
    get {return _storage._spanData ?? Com_Thapovan_Orion_Proto_Span()}
    set {_uniqueStorage()._spanData = newValue}
  }
  /// Returns true if `spanData` has been explicitly set.
  public var hasSpanData: Bool {return _storage._spanData != nil}
  /// Clears the value of `spanData`. Subsequent reads from it will return its default value.
  public mutating func clearSpanData() {_storage._spanData = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Com_Thapovan_Orion_Proto_StreamRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var request: OneOf_Request? {
    get {return _storage._request}
    set {_uniqueStorage()._request = newValue}
  }

  public var controlRequest: Com_Thapovan_Orion_Proto_ControlRequest {
    get {
      if case .controlRequest(let v)? = _storage._request {return v}
      return Com_Thapovan_Orion_Proto_ControlRequest()
    }
    set {_uniqueStorage()._request = .controlRequest(newValue)}
  }

  public var spanData: Com_Thapovan_Orion_Proto_Span {
    get {
      if case .spanData(let v)? = _storage._request {return v}
      return Com_Thapovan_Orion_Proto_Span()
    }
    set {_uniqueStorage()._request = .spanData(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Request: Equatable {
    case controlRequest(Com_Thapovan_Orion_Proto_ControlRequest)
    case spanData(Com_Thapovan_Orion_Proto_Span)

    public static func ==(lhs: Com_Thapovan_Orion_Proto_StreamRequest.OneOf_Request, rhs: Com_Thapovan_Orion_Proto_StreamRequest.OneOf_Request) -> Bool {
      switch (lhs, rhs) {
      case (.controlRequest(let l), .controlRequest(let r)): return l == r
      case (.spanData(let l), .spanData(let r)): return l == r
      default: return false
      }
    }
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Com_Thapovan_Orion_Proto_StreamResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var response: OneOf_Response? {
    get {return _storage._response}
    set {_uniqueStorage()._response = newValue}
  }

  public var serverResponse: Com_Thapovan_Orion_Proto_ServerResponse {
    get {
      if case .serverResponse(let v)? = _storage._response {return v}
      return Com_Thapovan_Orion_Proto_ServerResponse()
    }
    set {_uniqueStorage()._response = .serverResponse(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Response: Equatable {
    case serverResponse(Com_Thapovan_Orion_Proto_ServerResponse)

    public static func ==(lhs: Com_Thapovan_Orion_Proto_StreamResponse.OneOf_Response, rhs: Com_Thapovan_Orion_Proto_StreamResponse.OneOf_Response) -> Bool {
      switch (lhs, rhs) {
      case (.serverResponse(let l), .serverResponse(let r)): return l == r
      }
    }
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Com_Thapovan_Orion_Proto_BulkRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var authToken: String = String()

  public var spanData: [Com_Thapovan_Orion_Proto_Span] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.thapovan.orion.proto"

extension Com_Thapovan_Orion_Proto_ServerResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ServerResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "success"),
    2: .same(proto: "code"),
    3: .same(proto: "message"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.success)
      case 2: try decoder.decodeSingularStringField(value: &self.code)
      case 3: try decoder.decodeSingularStringField(value: &self.message)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.success != false {
      try visitor.visitSingularBoolField(value: self.success, fieldNumber: 1)
    }
    if !self.code.isEmpty {
      try visitor.visitSingularStringField(value: self.code, fieldNumber: 2)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Com_Thapovan_Orion_Proto_ServerResponse) -> Bool {
    if self.success != other.success {return false}
    if self.code != other.code {return false}
    if self.message != other.message {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Com_Thapovan_Orion_Proto_ControlRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ControlRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "request_type"),
    2: .same(proto: "protoStruct"),
    3: .same(proto: "jsonString"),
  ]

  fileprivate class _StorageClass {
    var _requestType: Com_Thapovan_Orion_Proto_ControlRequest.RequestType = .auth
    var _params: Com_Thapovan_Orion_Proto_ControlRequest.OneOf_Params?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _requestType = source._requestType
      _params = source._params
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &_storage._requestType)
        case 2:
          var v: SwiftProtobuf.Google_Protobuf_Struct?
          if let current = _storage._params {
            try decoder.handleConflictingOneOf()
            if case .protoStruct(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._params = .protoStruct(v)}
        case 3:
          if _storage._params != nil {try decoder.handleConflictingOneOf()}
          var v: String?
          try decoder.decodeSingularStringField(value: &v)
          if let v = v {_storage._params = .jsonString(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._requestType != .auth {
        try visitor.visitSingularEnumField(value: _storage._requestType, fieldNumber: 1)
      }
      switch _storage._params {
      case .protoStruct(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .jsonString(let v)?:
        try visitor.visitSingularStringField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Com_Thapovan_Orion_Proto_ControlRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._requestType != other_storage._requestType {return false}
        if _storage._params != other_storage._params {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Com_Thapovan_Orion_Proto_ControlRequest.RequestType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AUTH"),
    1: .same(proto: "END_STREAM"),
  ]
}

extension Com_Thapovan_Orion_Proto_UnaryRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UnaryRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "auth_token"),
    2: .standard(proto: "span_data"),
  ]

  fileprivate class _StorageClass {
    var _authToken: String = String()
    var _spanData: Com_Thapovan_Orion_Proto_Span? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _authToken = source._authToken
      _spanData = source._spanData
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._authToken)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._spanData)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._authToken.isEmpty {
        try visitor.visitSingularStringField(value: _storage._authToken, fieldNumber: 1)
      }
      if let v = _storage._spanData {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Com_Thapovan_Orion_Proto_UnaryRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._authToken != other_storage._authToken {return false}
        if _storage._spanData != other_storage._spanData {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Com_Thapovan_Orion_Proto_StreamRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "control_request"),
    2: .standard(proto: "span_data"),
  ]

  fileprivate class _StorageClass {
    var _request: Com_Thapovan_Orion_Proto_StreamRequest.OneOf_Request?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _request = source._request
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          var v: Com_Thapovan_Orion_Proto_ControlRequest?
          if let current = _storage._request {
            try decoder.handleConflictingOneOf()
            if case .controlRequest(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._request = .controlRequest(v)}
        case 2:
          var v: Com_Thapovan_Orion_Proto_Span?
          if let current = _storage._request {
            try decoder.handleConflictingOneOf()
            if case .spanData(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._request = .spanData(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._request {
      case .controlRequest(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .spanData(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Com_Thapovan_Orion_Proto_StreamRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._request != other_storage._request {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Com_Thapovan_Orion_Proto_StreamResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "server_response"),
  ]

  fileprivate class _StorageClass {
    var _response: Com_Thapovan_Orion_Proto_StreamResponse.OneOf_Response?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _response = source._response
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          var v: Com_Thapovan_Orion_Proto_ServerResponse?
          if let current = _storage._response {
            try decoder.handleConflictingOneOf()
            if case .serverResponse(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._response = .serverResponse(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if case .serverResponse(let v)? = _storage._response {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Com_Thapovan_Orion_Proto_StreamResponse) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._response != other_storage._response {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Com_Thapovan_Orion_Proto_BulkRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BulkRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "auth_token"),
    2: .standard(proto: "span_data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.authToken)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.spanData)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.authToken.isEmpty {
      try visitor.visitSingularStringField(value: self.authToken, fieldNumber: 1)
    }
    if !self.spanData.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.spanData, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public func _protobuf_generated_isEqualTo(other: Com_Thapovan_Orion_Proto_BulkRequest) -> Bool {
    if self.authToken != other.authToken {return false}
    if self.spanData != other.spanData {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
