package §_-wO§
{
   import §_-U0§.Base64;
   import §_-yD§.§_-E2§;
   import §_-yD§.§_-h4§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §_-eG§
   {
       
      
      public function §_-eG§()
      {
         super();
      }
      
      public static function §_-AJ§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §_-OT§(param1);
         return §_-E2§.encode(_loc2_);
      }
      
      public static function §_-fO§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §_-OT§(param1);
         var _loc4_:§_-h4§;
         return (_loc4_ = new §_-h4§(param2)).encode(_loc3_);
      }
      
      public static function §_-OT§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §_-h3§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§_-XS§(param1);
         §_-3a§(_loc4_,param2);
      }
      
      public static function §_-3a§(param1:ByteArray, param2:Function) : void
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
