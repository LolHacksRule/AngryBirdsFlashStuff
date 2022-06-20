package com.rovio.factory
{
   import com.rovio.adobe.images.JPGEncoder;
   import com.rovio.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.utils.ByteArray;
   
   public class FacebookImageUploaderFriends extends FacebookImageUploader
   {
       
      
      public function FacebookImageUploaderFriends(data:ByteArray, filename:String, accessToken:String, userId:String, successCallback:Function, failureCallback:Function, parameters:Object = null)
      {
         super(data,filename,accessToken,userId,successCallback,failureCallback,parameters);
      }
      
      public static function uploadAsJPG(image:DisplayObject, imageWidth:int, imageHeight:int, quality:Number, accessToken:String, userId:String, successCallback:Function, failCallback:Function = null) : void
      {
         var bitMapData:BitmapData = new BitmapData(imageWidth,imageHeight);
         bitMapData.draw(image,new Matrix());
         var jpgEncoder:JPGEncoder = new JPGEncoder(quality);
         var byteArrayData:ByteArray = jpgEncoder.encode(bitMapData);
         new FacebookImageUploaderFriends(byteArrayData,"image1.jpg",accessToken,userId,successCallback,failCallback);
      }
      
      public static function uploadAsPNG(image:BitmapData, accessToken:String, userId:String, successCallback:Function, failCallback:Function = null, parameters:Object = null) : void
      {
         var bitMapData:BitmapData = image;
         var byteArrayData:ByteArray = PNGEncoder.encode(bitMapData);
         new FacebookImageUploaderFriends(byteArrayData,"image1.png",accessToken,userId,successCallback,failCallback,parameters);
      }
      
      override protected function getGraphURL() : String
      {
         return GRAPH_API_URL + AngryBirdsFacebook.FB_API_VERSION + "/";
      }
   }
}
