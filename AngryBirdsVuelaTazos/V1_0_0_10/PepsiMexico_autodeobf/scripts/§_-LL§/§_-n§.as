package §_-LL§
{
   import §_-2t§.§_-S-§;
   import §_-Hn§.§_-gJ§;
   import §_-ot§.Base64;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-n§ extends EventDispatcher
   {
      
      public static const §_-dh§:String = "scoresLoaded";
       
      
      private var §_-EH§:String;
      
      private var §_-NX§:Boolean = true;
      
      private var §_-eU§:Array;
      
      public function §_-n§(param1:String)
      {
         super();
         this.§_-EH§ = param1;
      }
      
      public function §_-vF§() : void
      {
         if(!this.§_-NX§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-EH§,
            "player":§_-gJ§.§_-Fb§
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-qk§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-k§);
         _loc3_.url = §_-5e§.§_-QQ§;
         this.§_-NX§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §_-qk§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-k§(param1:IOErrorEvent) : void
      {
         this.§_-NX§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-S-§.§_-d1§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§_-eU§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-dh§);
         dispatchEvent(_loc3_);
         this.§_-NX§ = true;
      }
      
      public function get §_-v2§() : Boolean
      {
         return this.§_-NX§;
      }
      
      public function get §_-Kh§() : Array
      {
         return this.§_-eU§;
      }
   }
}
