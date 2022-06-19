package §_-Me§
{
   import §_-YW§.§_-GB§;
   import §_-YW§.§_-Vd§;
   import §_-aA§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-2r§
   {
       
      
      public function §_-2r§()
      {
         super();
      }
      
      public static function §_-HM§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-WO§(param1);
         return §_-GB§.encode(_loc2_);
      }
      
      public static function §_-zo§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-WO§(param1);
         var _loc4_:§_-Vd§;
         return (_loc4_ = new §_-Vd§(param2)).encode(_loc3_);
      }
      
      public static function §_-WO§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-uR§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-S0§(param1);
         §_-ha§(_loc4_,param2);
      }
      
      public static function §_-ha§(param1:ByteArray, param2:Function) : void
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
