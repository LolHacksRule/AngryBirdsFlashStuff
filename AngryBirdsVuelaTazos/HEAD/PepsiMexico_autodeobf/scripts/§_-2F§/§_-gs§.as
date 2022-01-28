package §_-2F§
{
   import §_-gM§.Base64;
   import §_-tb§.§_-Ta§;
   import §_-tb§.§_-qq§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-gs§
   {
       
      
      public function §_-gs§()
      {
         super();
      }
      
      public static function §_-Jj§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = each(param1);
         return §_-qq§.encode(_loc2_);
      }
      
      public static function §_-dL§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = each(param1);
         var _loc4_:§_-Ta§;
         return (_loc4_ = new §_-Ta§(param2)).encode(_loc3_);
      }
      
      public static function each(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-KP§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-br§(param1);
         §_-Ro§(_loc4_,param2);
      }
      
      public static function §_-Ro§(param1:ByteArray, param2:Function) : void
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
