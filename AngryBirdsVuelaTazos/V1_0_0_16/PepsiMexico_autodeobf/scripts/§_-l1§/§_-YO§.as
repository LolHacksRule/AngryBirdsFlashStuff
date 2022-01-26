package §_-l1§
{
   import §_-IV§.§_-dW§;
   import §_-Qx§.§_-JO§;
   import §_-Qx§.§_-Sf§;
   import §_-ZA§.§_-tg§;
   import §_-e3§.Base64;
   import §_-hq§.§_-AD§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-YO§ extends EventDispatcher
   {
      
      protected static const §_-iM§:Number = 1000;
      
      protected static const §_-jG§:Number = 60;
       
      
      protected var §_-Xw§:Dictionary;
      
      protected var §_-Z1§:Dictionary;
      
      protected var §_-dQ§:Dictionary;
      
      protected var §_-e0§:Dictionary;
      
      protected var §_-Cz§:Boolean;
      
      protected var §_-XE§:String;
      
      protected var §_-xu§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-YO§(param1:String)
      {
         super();
         this.§_-xu§ = param1;
         this.§_-Xw§ = new Dictionary();
         this.§_-Z1§ = new Dictionary();
         this.§_-dQ§ = new Dictionary();
         this.§_-e0§ = new Dictionary();
         this.§_-Cz§ = false;
         this.mMightyEagleTimer = new Timer(§_-iM§,§_-jG§);
         this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-uc§);
      }
      
      private function §_-uc§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-gC§));
         this.§_-XE§ = null;
      }
      
      public function §_-fA§(param1:String) : void
      {
         if(!this.mMightyEagleTimer.running)
         {
            this.mMightyEagleTimer.reset();
            this.mMightyEagleTimer.start();
            this.§_-XE§ = param1;
         }
      }
      
      public function §_-Ds§(param1:String) : Boolean
      {
         if(this.§_-XE§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-on§() : String
      {
         var _loc1_:Number = §_-jG§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-jG§;
         var _loc3_:int = _loc1_ % §_-jG§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-xN§(param1:String) : int
      {
         var _loc2_:§_-dW§ = null;
         if(this.§_-Xw§[param1])
         {
            _loc2_ = this.§_-Xw§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-Qi§(param1:String) : int
      {
         var _loc2_:§_-dW§ = null;
         if(this.§_-Z1§[param1])
         {
            _loc2_ = this.§_-Z1§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-L3§(param1:String) : String
      {
         var _loc2_:§_-JO§ = §_-Sf§.§_-in§(param1);
         return §_-tg§.§_-bG§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-xN§(param1),this.§_-Al§(param1),this.§_-Qi§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
      }
      
      public function §_-1O§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(this.§_-xu§ + "/submitscore");
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§_-JO§ = §_-Sf§.§_-in§(param1);
         _loc2_.data = Base64.encode(§_-AD§.encode({
            "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
            "level":param1,
            "points":this.§_-xN§(param1),
            "stars":this.§_-Al§(param1),
            "destructionPercentage":this.§_-Qi§(param1),
            "security":this.§_-L3§(param1)
         }));
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-bS§);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      private function §_-bS§(param1:Event) : void
      {
      }
      
      public function §_-Ak§(param1:String, param2:Boolean = true) : void
      {
         this.§_-dQ§[param1] = param2;
      }
      
      public function §_-yY§(param1:String, param2:Boolean = true) : void
      {
         this.§_-dQ§[param1] = param2;
      }
      
      public function §_-ux§(param1:String, param2:int) : void
      {
         var _loc3_:§_-dW§ = new §_-dW§(param2);
         this.§_-Xw§[param1] = _loc3_;
      }
      
      public function §_-Li§(param1:String, param2:int) : void
      {
         var _loc3_:§_-dW§ = new §_-dW§(param2);
         this.§_-Z1§[param1] = _loc3_;
      }
      
      public function §_-Al§(param1:String, param2:int = -1) : int
      {
         return §_-Sf§.§_-mF§(param1,param2 != -1 ? int(param2) : int(this.§_-xN§(param1)));
      }
      
      public function §_-Xq§(param1:§_-JO§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-h0§())
         {
            _loc2_ += this.§_-xN§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-xE§(param1:§_-JO§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-h0§())
         {
            _loc2_ += this.§_-Al§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-GO§(param1:§_-JO§) : int
      {
         return param1.§_-h0§().length * 3;
      }
      
      public function §_-XA§(param1:§_-JO§) : int
      {
         return param1.§_-h0§().length;
      }
      
      public function §_-B5§(param1:§_-JO§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-h0§())
         {
            if(this.§_-Qi§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-9w§() : Dictionary
      {
         return this.§_-dQ§;
      }
      
      public function get §_-xq§() : Dictionary
      {
         return this.§_-dQ§;
      }
      
      public function get §_-mT§() : Boolean
      {
         return this.§_-Cz§;
      }
      
      public function set §_-mT§(param1:Boolean) : void
      {
         this.§_-Cz§ = param1;
      }
      
      public function get §_-QN§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-vO§() : String
      {
         return this.§_-XE§;
      }
   }
}
