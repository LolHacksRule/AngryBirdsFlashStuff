package §_-iZ§
{
   import §_-aV§.§_-DM§;
   import §_-gM§.Base64;
   import §_-jO§.§_-z5§;
   import §_-s-§.§_-hQ§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-2f§ extends EventDispatcher
   {
      
      public static const §_-lc§:String = "scoresLoaded";
       
      
      private var §_-9m§:String;
      
      private var §_-sG§:Boolean = true;
      
      private var §_-9h§:Array;
      
      public function §_-2f§(param1:String)
      {
         super();
         this.§_-9m§ = param1;
      }
      
      public function §_-EI§() : void
      {
         if(!this.§_-sG§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-9m§,
            "player":§_-z5§.§_-gt§
         };
         _loc3_.data = "json=" + Base64.encode(§_-hQ§.encode(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-ON§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.get);
         _loc3_.url = §_-q0§.§_-Fa§;
         this.§_-sG§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §_-ON§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function get(param1:IOErrorEvent) : void
      {
         this.§_-sG§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-DM§.§_-KR§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§_-9h§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-lc§);
         dispatchEvent(_loc3_);
         this.§_-sG§ = true;
      }
      
      public function get §_-7w§() : Boolean
      {
         return this.§_-sG§;
      }
      
      public function get §_-1D§() : Array
      {
         return this.§_-9h§;
      }
   }
}
