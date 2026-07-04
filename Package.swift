// swift-tools-version: 5.9
//
//  llama.cpp 公式ビルド b9860（Gemma 4対応）の xcframework を
//  「path型」で参照する版。zip展開が不要なため、iPadOSに unzip が
//  存在しない問題を回避できる。
//
//  リポジトリ構成（Package.swiftと同じ階層に展開済みフレームワークを置く）:
//    Package.swift
//    llama.xcframework/
//      ├ Info.plist            ← ios-arm64 以外のエントリを削除して編集
//      └ ios-arm64/
//          └ llama.framework/  ← 実機用スライスのみ残す（dSYMsは削除）
//
import PackageDescription

let package = Package(
    name: "llama",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "llama", targets: ["llama"])
    ],
    targets: [
        .binaryTarget(
            name: "llama",
            path: "llama.xcframework"
        )
    ]
)
