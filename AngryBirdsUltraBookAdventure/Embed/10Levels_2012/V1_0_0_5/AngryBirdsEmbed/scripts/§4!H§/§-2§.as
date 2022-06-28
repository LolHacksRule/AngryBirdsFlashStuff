package §4!H§
{
   import §+!"§.Base64;
   import §>Z§.§!-§;
   import §>Z§.§3!?§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §-2§
   {
       
      
      public function §-2§()
      {
         super();
      }
      
      public static function §=]§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §[!C§(param1);
         return §!-§.encode(_loc2_);
      }
      
      public static function §?!!§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §[!C§(param1);
         var _loc4_:§3!?§;
         return (_loc4_ = new §3!?§(param2)).encode(_loc3_);
      }
      
      public static function §[!C§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §4X§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§71§(param1);
         §^!8§(_loc4_,param2);
      }
      
      public static function §^!8§(param1:ByteArray, param2:Function) : void
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
