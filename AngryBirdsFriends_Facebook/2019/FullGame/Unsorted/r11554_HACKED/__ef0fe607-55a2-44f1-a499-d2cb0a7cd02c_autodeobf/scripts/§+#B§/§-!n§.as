package §+#B§
{
   import §5$>§.§0#V§;
   import §5$>§.§4!O§;
   import §9#K§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §-!n§
   {
       
      
      public function §-!n§()
      {
         super();
      }
      
      public static function §>!4§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §+"F§(param1);
         return §4!O§.encode(_loc2_);
      }
      
      public static function §+"2§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §+"F§(param1);
         return new §0#V§(param2).encode(_loc3_);
      }
      
      public static function §+"F§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §%!g§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§&g§(param1);
         §!!D§(_loc4_,param2);
      }
      
      public static function §!!D§(param1:ByteArray, param2:Function) : void
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
