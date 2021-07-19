package com.rovio.factory
{
   import com.rovio.adobe.images.JPGEncoder;
   import com.rovio.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Matrix;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class FacebookImageUploader
   {
      
      protected static const GRAPH_API_URL:String = "https://graph.facebook.com/";
      
      private static const GRAPH_API_CALL:String = "[USER_ID]/photos";
       
      
      private var mSuccessCallback:Function;
      
      private var mFailureCallback:Function;
      
      private var mBoundaryBytes:ByteArray;
      
      public function FacebookImageUploader(param1:ByteArray, param2:String, param3:String, param4:String, param5:Function, param6:Function, param7:Object = null)
      {
         super();
         this.mSuccessCallback = param5;
         this.mFailureCallback = param6;
         Security.loadPolicyFile(this.getGraphURL() + "/crossdomain.xml");
         Security.allowDomain(this.getGraphURL());
         var _loc8_:String = this.getGraphURL() + GRAPH_API_CALL + "?access_token=" + param3;
         _loc8_ = _loc8_.replace("[USER_ID]",param4);
         Log.log("Uploading image; URL:" + _loc8_);
         param1 = this.formRequestData(param1,param2,param7);
         var _loc9_:URLRequest = new URLRequest(_loc8_);
         _loc9_.method = URLRequestMethod.POST;
         _loc9_.contentType = "multipart/form-data; boundary=" + this.getBoundary();
         _loc9_.data = param1;
         var _loc10_:URLLoader = new URLLoader();
         _loc10_.dataFormat = URLLoaderDataFormat.BINARY;
         _loc10_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc10_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         _loc10_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         _loc10_.load(_loc9_);
      }
      
      public static function uploadAsJPG(image:DisplayObject, imageWidth:int, imageHeight:int, quality:Number, accessToken:String, userId:String, successCallback:Function, failCallback:Function = null) : void
      {
         var bitMapData:BitmapData = new BitmapData(imageWidth,imageHeight);
         bitMapData.draw(image,new Matrix());
         var jpgEncoder:JPGEncoder = new JPGEncoder(quality);
         var byteArrayData:ByteArray = jpgEncoder.encode(bitMapData);
         new FacebookImageUploader(byteArrayData,"image1.jpg",accessToken,userId,successCallback,failCallback);
      }
      
      public static function uploadAsPNG(image:BitmapData, accessToken:String, userId:String, successCallback:Function, failCallback:Function = null) : void
      {
         var bitMapData:BitmapData = image;
         var byteArrayData:ByteArray = PNGEncoder.encode(bitMapData);
         new FacebookImageUploader(byteArrayData,"image1.png",accessToken,userId,successCallback,failCallback);
      }
      
      public function getBoundary() : String
      {
         return "AaB03y";
      }
      
      private function populateParams(byteArray:ByteArray, header:String, value:String) : ByteArray
      {
         byteArray.writeBytes(this.mBoundaryBytes,0,this.mBoundaryBytes.length);
         byteArray.writeShort(3338);
         for(var i:int = 0; i < header.length; i++)
         {
            byteArray.writeByte(header.charCodeAt(i));
         }
         byteArray.writeShort(3338);
         byteArray.writeShort(3338);
         byteArray.writeUTFBytes(value);
         byteArray.writeShort(3338);
         return byteArray;
      }
      
      public function formRequestData(data:ByteArray, filename:String, parameters:Object = null) : ByteArray
      {
         var name:* = null;
         var str:* = null;
         var i:Number = 0;
         var value:* = "Content-Disposition: form-data; name=\"Filename\"";
         var outputData:ByteArray = new ByteArray();
         outputData.endian = Endian.BIG_ENDIAN;
         var boundary:String = this.getBoundary();
         this.mBoundaryBytes = new ByteArray();
         this.mBoundaryBytes.writeShort(11565);
         for(i = 0; i < boundary.length; i++)
         {
            this.mBoundaryBytes.writeByte(boundary.charCodeAt(i));
         }
         if(parameters == null)
         {
            parameters = new Object();
         }
         parameters.Filename = filename;
         for(name in parameters)
         {
            str = "Content-Disposition: form-data; name=\"" + name + "\"";
            outputData = this.populateParams(outputData,str,parameters[name]);
         }
         outputData.writeBytes(this.mBoundaryBytes,0,this.mBoundaryBytes.length);
         outputData.writeShort(3338);
         value = "Content-Disposition: form-data; name=\"Filedata\"; filename=\"" + filename + "\"";
         for(i = 0; i < value.length; i++)
         {
            outputData.writeByte(value.charCodeAt(i));
         }
         outputData.writeShort(3338);
         value = "Content-Type: application/octet-stream";
         for(i = 0; i < value.length; i++)
         {
            outputData.writeByte(value.charCodeAt(i));
         }
         outputData.writeShort(3338);
         outputData.writeShort(3338);
         outputData.writeBytes(data,0,data.length);
         outputData.writeShort(3338);
         outputData.writeShort(3338);
         outputData.writeBytes(this.mBoundaryBytes,0,this.mBoundaryBytes.length);
         outputData.writeShort(3338);
         value = "Content-Disposition: form-data; name=\"Upload\"";
         for(i = 0; i < value.length; i++)
         {
            outputData.writeByte(value.charCodeAt(i));
         }
         outputData.writeShort(3338);
         outputData.writeShort(3338);
         value = "Submit Query";
         for(i = 0; i < value.length; i++)
         {
            outputData.writeByte(value.charCodeAt(i));
         }
         outputData.writeShort(3338);
         outputData.writeBytes(this.mBoundaryBytes,0,this.mBoundaryBytes.length);
         outputData.writeShort(11565);
         return outputData;
      }
      
      public function onComplete(evt:Event) : void
      {
         var obj:Object = JSON.parse(evt.target.data.toString() as String);
         this.mSuccessCallback(obj.id);
      }
      
      public function onError(evt:Event) : void
      {
         Log.log("Error!! " + evt.toString());
         Log.log("Data?" + evt.target.data.toString());
         if(this.mFailureCallback != null)
         {
            this.mFailureCallback();
         }
      }
      
      protected function getGraphURL() : String
      {
         return GRAPH_API_URL;
      }
   }
}
