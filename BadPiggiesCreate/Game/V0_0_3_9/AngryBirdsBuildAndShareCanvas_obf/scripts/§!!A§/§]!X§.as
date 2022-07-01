package §!!A§
{
   import §9[§.§+!^§;
   import §9[§.§["§;
   import §@!;§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §]!X§
   {
       
      
      public function §]!X§()
      {
         super();
      }
      
      public static function §4j§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §;R§(param1);
         return §["§.encode(_loc2_);
      }
      
      public static function §!^§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §;R§(param1);
         var _loc4_:§+!^§;
         return (_loc4_ = new §+!^§(param2)).encode(_loc3_);
      }
      
      public static function §;R§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §7![§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§@!L§(param1);
         §7z§(_loc4_,param2);
      }
      
      public static function §7z§(param1:ByteArray, param2:Function) : void
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
