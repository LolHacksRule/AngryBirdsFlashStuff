package § !;§
{
   import §2§.Base64;
   import §9O§.§1d§;
   import §9O§.§9H§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §,'§
   {
       
      
      public function §,'§()
      {
         super();
      }
      
      public static function §^n§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §9?§(param1);
         return §9H§.encode(_loc2_);
      }
      
      public static function §1!0§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §9?§(param1);
         var _loc4_:§1d§;
         return (_loc4_ = new §1d§(param2)).encode(_loc3_);
      }
      
      public static function §9?§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §+S§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§?+§(param1);
         §28§(_loc4_,param2);
      }
      
      public static function §28§(param1:ByteArray, param2:Function) : void
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
