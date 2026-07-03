// swift-tools-version: 5.9
//
//  llama.cpp 公式プレビルド xcframework（b9860 / Gemma 4対応）を
//  Swift Playgrounds から使うための極小パッケージ。
//
//  ★ コミット前に1箇所だけ書き換え:
//     checksum の値を、Windowsで計算したSHA256（小文字64桁・空白なし）に置き換える。
//     計算方法は手順書のとおり（certutil または PowerShell）。
//
import PackageDescription

let package = Package(
    name: "llama",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(name: "llama", targets: ["llama"])
    ],
    targets: [
        .binaryTarget(
            name: "llama",
            url: "https://github.com/ggml-org/llama.cpp/releases/download/b9860/llama-b9860-xcframework.zip",
            checksum: "ここをSHA256の小文字64桁に置き換える"
        )
    ]
)
