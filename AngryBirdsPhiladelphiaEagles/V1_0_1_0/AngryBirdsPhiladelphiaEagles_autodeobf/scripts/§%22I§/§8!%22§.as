package §"I§
{
   import §-!5§.Base64;
   import §-e§.§!!-§;
   import §-e§.§<'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class §8!"§
   {
       
      
      public function §8!"§()
      {
         super();
      }
      
      public static function §!5§(param1:DisplayObject) : ByteArray
      {
         var _loc2_:BitmapData = §=7§(param1);
         return §<'§.encode(_loc2_);
      }
      
      public static function §7C§(param1:DisplayObject, param2:Number) : ByteArray
      {
         var _loc3_:BitmapData = §=7§(param1);
         var _loc4_:§!!-§;
         return (_loc4_ = new §!!-§(param2)).encode(_loc3_);
      }
      
      public static function §=7§(param1:DisplayObject) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,false);
         _loc2_.draw(param1);
         return _loc2_;
      }
      
      public static function §^>§(param1:String, param2:Function) : void
      {
         if(param1.indexOf("data:image/png;base64,") == 0)
         {
            param1 = param1.substr("data:image/png;base64,".length);
         }
         var _loc4_:ByteArray = Base64.§`!I§(param1);
         §>K§(_loc4_,param2);
      }
      
      public static function §>K§(param1:ByteArray, param2:Function) : void
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
