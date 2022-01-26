package §0!!§
{
   import §;8§.Base64;
   import §>e§.§%u§;
   import §>e§.§6T§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §4C§
   {
       
      
      public function §4C§()
      {
         super();
      }
      
      public static function §84§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = § 1§(param1);
         return §%u§.encode(_loc2_);
      }
      
      public static function §#X§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = § 1§(param1);
         var _loc4_:§6T§;
         return (_loc4_ = new §6T§(param2)).encode(_loc3_);
      }
      
      public static function § 1§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §2!'§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§4U§(param1);
         §9!G§(_loc4_,param2);
      }
      
      public static function §9!G§(param1:ByteArray, param2:Function) : void
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
