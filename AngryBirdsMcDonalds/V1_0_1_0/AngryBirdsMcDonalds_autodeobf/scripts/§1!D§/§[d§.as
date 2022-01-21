package §1!D§
{
   import §1!?§.§0R§;
   import §1!?§.§5!^§;
   import §`!W§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §[d§
   {
       
      
      public function §[d§()
      {
         super();
      }
      
      public static function §9$§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §!U§(param1);
         return §0R§.encode(_loc2_);
      }
      
      public static function §]F§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §!U§(param1);
         var _loc4_:§5!^§;
         return (_loc4_ = new §5!^§(param2)).encode(_loc3_);
      }
      
      public static function §!U§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §6J§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§>!H§(param1);
         §7=§(_loc4_,param2);
      }
      
      public static function §7=§(param1:ByteArray, param2:Function) : void
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
