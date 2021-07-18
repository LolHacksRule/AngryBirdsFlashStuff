package §_-PD§
{
   import §_-W0§.§_-MC§;
   import §_-e3§.Base64;
   import §_-hq§.§_-AD§;
   import §_-zL§.§_-Rv§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §_-gP§ extends EventDispatcher
   {
      
      public static const §_-at§:String = "scoresLoaded";
       
      
      private var §_-nv§:String;
      
      private var §_-Y2§:Boolean = true;
      
      private var §if§:Array;
      
      public function §_-gP§(param1:String)
      {
         super();
         this.§_-nv§ = param1;
      }
      
      public function §_-qI§() : void
      {
         if(!this.§_-Y2§)
         {
            return;
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest();
         _loc3_.method = URLRequestMethod.POST;
         _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
         var _loc4_:Object = {
            "type":"highscore",
            "levelId":this.§_-nv§,
            "player":§_-MC§.§_-7w§
         };
         _loc3_.data = "json=" + Base64.encode(§_-AD§.encode(_loc4_));
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
         _loc3_.url = §_-Qu§.§_-BK§;
         this.§_-Y2§ = false;
         _loc2_.load(_loc3_);
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         this.§_-Y2§ = true;
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc2_ is Array)
         {
            this.§if§ = _loc2_ as Array;
         }
         var _loc3_:Event = new Event(§_-at§);
         dispatchEvent(_loc3_);
         this.§_-Y2§ = true;
      }
      
      public function get §_-ZQ§() : Boolean
      {
         return this.§_-Y2§;
      }
      
      public function get §_-G2§() : Array
      {
         return this.§if§;
      }
   }
}
