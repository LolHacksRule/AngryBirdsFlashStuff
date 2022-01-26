package §_-XI§
{
   import §_-7h§.§_-E8§;
   import §_-7h§.§_-jA§;
   import §_-ex§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-BJ§
   {
       
      
      public function §_-BJ§()
      {
         super();
      }
      
      public static function §_-t1§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-sw§(param1);
         return §_-jA§.encode(_loc2_);
      }
      
      public static function §_-kH§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-sw§(param1);
         var _loc4_:§_-E8§;
         return (_loc4_ = new §_-E8§(param2)).encode(_loc3_);
      }
      
      public static function §_-sw§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-LN§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-h8§(param1);
         §_-jK§(_loc4_,param2);
      }
      
      public static function §_-jK§(param1:ByteArray, param2:Function) : void
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
