//
//  EchoPlugin.swift
//  App
//
//  Created by Anton Begehr on 16.04.24.
//

import Capacitor

@objc(EchoPlugin)
public class EchoPlugin: CAPPlugin {
    @objc override public func load() {
        debugPrint("EchoPlugin.load()")
    }

    @objc func echo(_ call: CAPPluginCall) {
        debugPrint("EchoPlugin.echo()")
        let value = call.getString("value") ?? ""
        debugPrint("EchoPlugin.echo - value: \(value)")
        call.resolve(["value": value])
    }
}
