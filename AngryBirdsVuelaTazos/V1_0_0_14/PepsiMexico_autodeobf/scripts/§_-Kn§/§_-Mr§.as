package §_-Kn§
{
   import §_-2z§.§_-rz§;
   import §_-5a§.§_-Gn§;
   import §_-9C§.§_-6O§;
   import §_-Eo§.Base64;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-Mr§ extends EventDispatcher
   {
      
      public static const §_-YR§:String = "scoresLoaded";
       
      
      private var §_-G8§:String;
      
      private var §_-su§:Boolean = true;
      
      private var §_-XR§:Array;
      
      public function §_-Mr§(param1:String)
      {
         super();
         this.§_-G8§ = param1;
      }
      
      public function §_-f8§() : void
      {
         if(!this.§_-su§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-G8§,
            "player":§_-Gn§.§_-B1§
         };
         _loc3_.data = "json=" + Base64.encode(§_-rz§.encode(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-t-§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-U7§);
         _loc3_.url = §_-Tj§.§_-4w§;
         this.§_-su§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §_-t-§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-U7§(param1:IOErrorEvent) : void
      {
         this.§_-su§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-6O§.§_-Mi§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§_-XR§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-YR§);
         dispatchEvent(_loc3_);
         this.§_-su§ = true;
      }
      
      public function get §_-ML§() : Boolean
      {
         return this.§_-su§;
      }
      
      public function get §_-3r§() : Array
      {
         return this.§_-XR§;
      }
   }
}
