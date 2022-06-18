package §3V§
{
   import §'5§.§1`§;
   import §'5§.§=8§;
   import §@!;§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §,!§
   {
       
      
      public function §,!§()
      {
         super();
      }
      
      public static function §08§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §#N§(param1);
         return §=8§.encode(_loc2_);
      }
      
      public static function §+1§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §#N§(param1);
         var _loc4_:§1`§;
         return (_loc4_ = new §1`§(param2)).encode(_loc3_);
      }
      
      public static function §#N§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §?B§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§05§(param1);
         §3A§(_loc4_,param2);
      }
      
      public static function §3A§(param1:ByteArray, param2:Function) : void
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
