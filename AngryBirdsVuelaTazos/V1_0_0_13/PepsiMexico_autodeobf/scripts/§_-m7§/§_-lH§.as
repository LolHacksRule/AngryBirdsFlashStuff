package §_-m7§
{
   import §_-S9§.§_-o2§;
   import §_-a6§.§_-ds§;
   import §_-ex§.Base64;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-lH§ extends EventDispatcher
   {
      
      public static const §_-Ni§:String = "scoresLoaded";
       
      
      private var §_-hq§:String;
      
      private var §_-GU§:Boolean = true;
      
      private var §_-8o§:Array;
      
      public function §_-lH§(param1:String)
      {
         super();
         this.§_-hq§ = param1;
      }
      
      public function §_-2a§() : void
      {
         if(!this.§_-GU§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-hq§,
            "player":§_-ds§.§_-2B§
         };
         _loc3_.data = "json=" + Base64.encode(JSON.stringify(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-vi§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-mT§);
         _loc3_.url = §_-2U§.§_-i1§;
         this.§_-GU§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §_-vi§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-mT§(param1:IOErrorEvent) : void
      {
         this.§_-GU§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-o2§.§_-Yz§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§_-8o§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-Ni§);
         dispatchEvent(_loc3_);
         this.§_-GU§ = true;
      }
      
      public function get §_-j§() : Boolean
      {
         return this.§_-GU§;
      }
      
      public function get §_-xa§() : Array
      {
         return this.§_-8o§;
      }
   }
}
