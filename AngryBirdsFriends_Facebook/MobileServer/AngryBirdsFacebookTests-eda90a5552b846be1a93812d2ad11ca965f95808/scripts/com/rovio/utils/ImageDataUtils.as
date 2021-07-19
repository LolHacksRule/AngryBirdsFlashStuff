package com.rovio.utils
{
   import com.rovio.adobe.images.JPGEncoder;
   import com.rovio.adobe.images.PNGEncoder;
   import com.rovio.factory.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class ImageDataUtils
   {
       
      
      public function ImageDataUtils()
      {
         super();
      }
      
      public static function getBytesAsPNG(image:DisplayObject) : ByteArray
      {
         var tmp:BitmapData = renderToBitmap(image);
         return PNGEncoder.encode(tmp);
      }
      
      public static function getBytesAsJPG(image:DisplayObject, quality:Number) : ByteArray
      {
         var tmp:BitmapData = renderToBitmap(image);
         var encoder:JPGEncoder = new JPGEncoder(quality);
         return encoder.encode(tmp);
      }
      
      public static function renderToBitmap(image:DisplayObject) : BitmapData
      {
         var tmp:BitmapData = new BitmapData(image.width,image.height,false);
         tmp.draw(image);
         return tmp;
      }
      
      public static function decodeBase64EncodedPng(data:String, onReadyCallback:Function) : void
      {
         var dataHeader:String = "data:image/png;base64,";
         if(data.indexOf(dataHeader) == 0)
         {
            data = data.substr(dataHeader.length);
         }
         var bytes:ByteArray = Base64.decodeToByteArray(data);
         getImageFromBytes(bytes,onReadyCallback);
      }
      
      public static function getImageFromBytes(bytes:ByteArray, callback:Function) : void
      {
         var loader:Loader = null;
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.INIT,function(e:Event):void
         {
            loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
            callback(loader.content as Bitmap);
         });
         loader.loadBytes(bytes);
      }
   }
}
