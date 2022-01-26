package §_-TQ§
{
   import §_-RG§.Base64;
   import §_-rR§.§_-7q§;
   import §_-uG§.§_-vK§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-Lw§ extends EventDispatcher
   {
      
      public static const §_-FE§:String = "scoresLoaded";
       
      
      private var §_-Ha§:String;
      
      private var §_-5h§:Boolean = true;
      
      private var §_-pe§:Array;
      
      public function §_-Lw§(param1:String)
      {
         super();
         this.§_-Ha§ = param1;
      }
      
      public function §_-L9§() : void
      {
         if(!this.§_-5h§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-Ha§,
            "player":§_-7q§.§_-Eg§
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§true§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-On§);
         _loc3_.url = §_-0Y§.§_-YA§;
         this.§_-5h§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §true§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-On§(param1:IOErrorEvent) : void
      {
         this.§_-5h§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-vK§.§_-Jv§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§_-pe§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-FE§);
         dispatchEvent(_loc3_);
         this.§_-5h§ = true;
      }
      
      public function get §_-TS§() : Boolean
      {
         return this.§_-5h§;
      }
      
      public function get §_-Ei§() : Array
      {
         return this.§_-pe§;
      }
   }
}
