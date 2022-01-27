package §9!0§
{
   import §9!A§.§7t§;
   import §9!A§.§`!7§;
   import §@V§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §<=§
   {
       
      
      public function §<=§()
      {
         super();
      }
      
      public static function get(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §!f§(param1);
         return §7t§.encode(_loc2_);
      }
      
      public static function § !"§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §!f§(param1);
         var _loc4_:§`!7§;
         return (_loc4_ = new §`!7§(param2)).encode(_loc3_);
      }
      
      public static function §!f§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §=!#§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§&!-§(param1);
         §9q§(_loc4_,param2);
      }
      
      public static function §9q§(param1:ByteArray, param2:Function) : void
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
