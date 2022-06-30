package §=!S§
{
   import §1!K§.Base64;
   import §4!#§.§&t§;
   import §4!#§.§]!>§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §4!Z§
   {
       
      
      public function §4!Z§()
      {
         super();
      }
      
      public static function §6G§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §3h§(param1);
         return §]!>§.encode(_loc2_);
      }
      
      public static function §#a§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §3h§(param1);
         var _loc4_:§&t§;
         return (_loc4_ = new §&t§(param2)).encode(_loc3_);
      }
      
      public static function §3h§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §#Y§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§0!_§(param1);
         §7!@§(_loc4_,param2);
      }
      
      public static function §7!@§(param1:ByteArray, param2:Function) : void
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
