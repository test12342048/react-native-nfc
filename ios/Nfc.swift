import Foundation
import CoreNFC

@objc(Nfc)
@available(iOS 13.0, *)
class Nfc: NSObject, NFCTagReaderSessionDelegate {
    var session: NFCTagReaderSession?
    @objc(connectNfc)
    func connectNfc (){
        session = NFCTagReaderSession(pollingOption: NFCTagReaderSession.PollingOption.iso14443, delegate: self)
        session?.alertMessage = "Hold to die"
        session?.begin()
        print("connect")
    }
    
    
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: any Error) {
        
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        
    }
    
    func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession) {
        
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: any Error) {
        
    }
    
    func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag]) {
           
        }
    
    var okla = 0
  @objc(multiply:withResolver:withRejecter:)
  func multiply(a: Int, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
      okla = okla * a
      
      let dataMifareTest: [UInt8] = [0xF0, 0, 0, 0]
      let dataPacketMifareTest = Data(bytes: dataMifareTest, count: dataMifareTest.count);
      self.connectNfc()
    
    resolve(okla)
      
  }
    @objc(add:withResolver:withRejecter:)
    func adđ(a: Int, resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) -> Void {
        okla = okla + a
      resolve(okla)
        
    }
}
