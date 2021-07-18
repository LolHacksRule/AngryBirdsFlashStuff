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
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-gP§))
         {
            §_-at§ = "scoresLoaded";
         }
      }
      
      private var §_-nv§:String;
      
      private var §_-Y2§:Boolean = true;
      
      private var §if§:Array;
      
      public function §_-gP§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               addr19:
               this.§_-nv§ = param1;
            }
            return;
         }
         §§goto(addr19);
      }
      
      public function §_-qI§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc1_)
         {
            if(!this.§_-Y2§)
            {
               if(_loc6_ || this)
               {
                  §§goto(addr31);
               }
            }
            var _loc1_:String = "highscore";
            var _loc2_:URLLoader = new URLLoader();
            var _loc3_:URLRequest = new URLRequest();
            if(!(_loc5_ && this))
            {
               _loc3_.method = URLRequestMethod.POST;
               if(_loc6_ || _loc3_)
               {
                  _loc2_.dataFormat = URLLoaderDataFormat.TEXT;
               }
            }
            var _loc4_:Object = {
               "type":_loc1_,
               "levelId":this.§_-nv§,
               "player":§_-MC§.§_-7w§
            };
            _loc3_.data = "json=" + Base64.encode(§_-AD§.encode(_loc4_));
            _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
            _loc2_.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§_-wL§);
            _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§_-qT§);
            _loc3_.url = §_-Qu§.§_-BK§;
            if(!_loc5_)
            {
               this.§_-Y2§ = false;
               if(_loc6_ || _loc3_)
               {
                  addr132:
                  _loc2_.load(_loc3_);
               }
               return;
            }
            §§goto(addr132);
         }
         addr31:
      }
      
      private function §_-wL§(param1:HTTPStatusEvent) : void
      {
      }
      
      private function §_-qT§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-Y2§ = true;
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = §_-Rv§.§_-3a§((param1.currentTarget as URLLoader).data);
         if(_loc4_)
         {
            if(_loc2_ is Array)
            {
               if(!_loc5_)
               {
                  this.§if§ = _loc2_ as Array;
               }
            }
         }
         var _loc3_:Event = new Event(§_-at§);
         if(_loc4_)
         {
            dispatchEvent(_loc3_);
            if(_loc4_ || this)
            {
               addr66:
               this.§_-Y2§ = true;
            }
            return;
         }
         §§goto(addr66);
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
