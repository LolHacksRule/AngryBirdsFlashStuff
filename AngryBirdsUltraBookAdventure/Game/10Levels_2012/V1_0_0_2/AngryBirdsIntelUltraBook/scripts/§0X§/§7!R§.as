package §0X§
{
   import §7!J§.§!!k§;
   import §7!J§.§^[§;
   import §^_§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §7!R§
   {
       
      
      public function §7!R§()
      {
         super();
      }
      
      public static function §41§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §%m§(param1);
         return §^[§.encode(_loc2_);
      }
      
      public static function § O§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §%m§(param1);
         var _loc4_:§!!k§;
         return (_loc4_ = new §!!k§(param2)).encode(_loc3_);
      }
      
      public static function §%m§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §1X§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§@!$§(param1);
         §6O§(_loc4_,param2);
      }
      
      public static function §6O§(param1:ByteArray, param2:Function) : void
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
