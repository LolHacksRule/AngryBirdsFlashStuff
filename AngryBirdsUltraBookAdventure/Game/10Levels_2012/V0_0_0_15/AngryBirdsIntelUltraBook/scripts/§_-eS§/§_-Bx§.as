package §_-eS§
{
   import §_-04w§.§_-Nu§;
   import §_-04w§.§_-xS§;
   import §_-0BH§.Base64;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-Bx§
   {
       
      
      public function §_-Bx§()
      {
         super();
      }
      
      public static function §_-wD§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-n5§(param1);
         return §_-Nu§.encode(_loc2_);
      }
      
      public static function §_-RH§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-n5§(param1);
         var _loc4_:§_-xS§;
         return (_loc4_ = new §_-xS§(param2)).encode(_loc3_);
      }
      
      public static function §_-n5§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-60§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-72§(param1);
         §_-R7§(_loc4_,param2);
      }
      
      public static function §_-R7§(param1:ByteArray, param2:Function) : void
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
