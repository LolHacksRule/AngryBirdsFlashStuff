package §_-mc§
{
   import §_-Eo§.Base64;
   import §_-Pj§.§_-mR§;
   import §_-Pj§.§_-wG§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-Vi§
   {
       
      
      public function §_-Vi§()
      {
         super();
      }
      
      public static function §_-LF§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-d7§(param1);
         return §_-mR§.encode(_loc2_);
      }
      
      public static function §_-96§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-d7§(param1);
         var _loc4_:§_-wG§;
         return (_loc4_ = new §_-wG§(param2)).encode(_loc3_);
      }
      
      public static function §_-d7§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-8J§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-Zf§(param1);
         §_-nQ§(_loc4_,param2);
      }
      
      public static function §_-nQ§(param1:ByteArray, param2:Function) : void
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
