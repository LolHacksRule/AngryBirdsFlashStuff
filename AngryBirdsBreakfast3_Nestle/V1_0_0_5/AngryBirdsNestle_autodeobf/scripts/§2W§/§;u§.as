package §2W§
{
   import §0!$§.Base64;
   import §1!L§.§+!u§;
   import §1!L§.§5N§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §;u§
   {
       
      
      public function §;u§()
      {
         super();
      }
      
      public static function §7W§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §1q§(param1);
         return §5N§.encode(_loc2_);
      }
      
      public static function §1O§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §1q§(param1);
         var _loc4_:§+!u§;
         return (_loc4_ = new §+!u§(param2)).encode(_loc3_);
      }
      
      public static function §1q§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §%!4§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§9!l§(param1);
         §=s§(_loc4_,param2);
      }
      
      public static function §=s§(param1:ByteArray, param2:Function) : void
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
