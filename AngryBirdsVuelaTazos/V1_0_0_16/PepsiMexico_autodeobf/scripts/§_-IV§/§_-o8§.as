package §_-IV§
{
   import §_-e3§.Base64;
   import §_-tM§.§_-Rj§;
   import §_-tM§.§_-jf§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-o8§
   {
       
      
      public function §_-o8§()
      {
         super();
      }
      
      public static function §_-4P§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-Ph§(param1);
         return §_-Rj§.encode(_loc2_);
      }
      
      public static function §_-Uw§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-Ph§(param1);
         var _loc4_:§_-jf§;
         return (_loc4_ = new §_-jf§(param2)).encode(_loc3_);
      }
      
      public static function §_-Ph§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-wz§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-bs§(param1);
         §_-yG§(_loc4_,param2);
      }
      
      public static function §_-yG§(param1:ByteArray, param2:Function) : void
      {
         var loader:Loader = null;
         var bytes:ByteArray = param1;
         var callback:Function = param2;
         loader = new Loader();
         loader.contentLoaderInfo.addEventListener(Event.INIT,function(param1:Event):void
         {
            loader.contentLoaderInfo.removeEventListener(Event.INIT,arguments.callee);
            callback(loader.content as Bitmap);
         });
         loader.loadBytes(bytes);
      }
   }
}
