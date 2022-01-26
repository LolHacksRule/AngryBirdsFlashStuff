package §_-ic§
{
   import §_-IV§.§_-5e§;
   import §_-ZG§.Base64;
   import §_-bA§.§_-U7§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-EN§ extends EventDispatcher
   {
      
      public static const §_-eD§:String = "scoresLoaded";
       
      
      private var §_-L7§:String;
      
      private var §_-bN§:Boolean = true;
      
      private var §_-er§:Array;
      
      public function §_-EN§(param1:String)
      {
         super();
         this.§_-L7§ = param1;
      }
      
      public function §_-67§() : void
      {
         if(!this.§_-bN§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-L7§,
            "player":§_-5e§.§_-JC§
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-3r§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-uV§);
         _loc3_.url = §_-I8§.§_-vQ§;
         this.§_-bN§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §_-3r§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-uV§(param1:IOErrorEvent) : void
      {
         this.§_-bN§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-U7§.§_-qY§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§_-er§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-eD§);
         dispatchEvent(_loc3_);
         this.§_-bN§ = true;
      }
      
      public function get §if§() : Boolean
      {
         return this.§_-bN§;
      }
      
      public function get §_-uy§() : Array
      {
         return this.§_-er§;
      }
   }
}
