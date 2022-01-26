package §_-5J§
{
   import §_-4R§.§_-kz§;
   import §_-Y-§.§_-2D§;
   import §_-Y-§.§_-A5§;
   import §_-ZG§.Base64;
   import §_-lG§.§_-Z9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-Ab§ extends EventDispatcher
   {
      
      protected static const §_-i3§:Number = 1000;
      
      protected static const §_-UZ§:Number = 60;
       
      
      protected var §_-ha§:Dictionary;
      
      protected var §_-jJ§:Dictionary;
      
      protected var §_-Fy§:Dictionary;
      
      protected var §_-qF§:Dictionary;
      
      protected var §_-ii§:Boolean;
      
      protected var §_-Q8§:String;
      
      protected var §_-kM§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-Ab§(param1:String)
      {
         super();
         this.§_-kM§ = param1;
         this.§_-ha§ = new Dictionary();
         this.§_-jJ§ = new Dictionary();
         this.§_-Fy§ = new Dictionary();
         this.§_-qF§ = new Dictionary();
         this.§_-ii§ = false;
         this.mMightyEagleTimer = new Timer(§_-i3§,§_-UZ§);
         this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-SU§);
      }
      
      private function §_-SU§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-6R§));
         this.§_-Q8§ = null;
      }
      
      public function §_-T1§(param1:String) : void
      {
         if(!this.mMightyEagleTimer.running)
         {
            this.mMightyEagleTimer.reset();
            this.mMightyEagleTimer.start();
            this.§_-Q8§ = param1;
         }
      }
      
      public function §_-bM§(param1:String) : Boolean
      {
         if(this.§_-Q8§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-N5§() : String
      {
         var _loc1_:Number = §_-UZ§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-UZ§;
         var _loc3_:int = _loc1_ % §_-UZ§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-3u§(param1:String) : int
      {
         var _loc2_:§_-kz§ = null;
         if(this.§_-ha§[param1])
         {
            _loc2_ = this.§_-ha§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-Zf§(param1:String) : int
      {
         var _loc2_:§_-kz§ = null;
         if(this.§_-jJ§[param1])
         {
            _loc2_ = this.§_-jJ§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-ph§(param1:String) : String
      {
         var _loc2_:§_-2D§ = §_-A5§.§_-Ji§(param1);
         return §_-Z9§.§_-Wt§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-3u§(param1),this.§_-i7§(param1),this.§_-Zf§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
      }
      
      public function §_-uS§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(this.§_-kM§ + "/submitscore");
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§_-2D§ = §_-A5§.§_-Ji§(param1);
         _loc2_.data = Base64.encode(JSON.stringify({
            "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
            "level":param1,
            "points":this.§_-3u§(param1),
            "stars":this.§_-i7§(param1),
            "destructionPercentage":this.§_-Zf§(param1),
            "security":this.§_-ph§(param1)
         }));
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-RG§);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      private function §_-RG§(param1:Event) : void
      {
      }
      
      public function §_-Mc§(param1:String, param2:Boolean = true) : void
      {
         this.§_-Fy§[param1] = param2;
      }
      
      public function §_-X0§(param1:String, param2:Boolean = true) : void
      {
         this.§_-Fy§[param1] = param2;
      }
      
      public function §_-sy§(param1:String, param2:int) : void
      {
         var _loc3_:§_-kz§ = new §_-kz§(param2);
         this.§_-ha§[param1] = _loc3_;
      }
      
      public function §_-A2§(param1:String, param2:int) : void
      {
         var _loc3_:§_-kz§ = new §_-kz§(param2);
         this.§_-jJ§[param1] = _loc3_;
      }
      
      public function §_-i7§(param1:String, param2:int = -1) : int
      {
         return §_-A5§.§_-ww§(param1,param2 != -1 ? int(param2) : int(this.§_-3u§(param1)));
      }
      
      public function §_-VN§(param1:§_-2D§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-k1§())
         {
            _loc2_ += this.§_-3u§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-lO§(param1:§_-2D§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-k1§())
         {
            _loc2_ += this.§_-i7§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-OO§(param1:§_-2D§) : int
      {
         return param1.§_-k1§().length * 3;
      }
      
      public function §_-nH§(param1:§_-2D§) : int
      {
         return param1.§_-k1§().length;
      }
      
      public function §_-Ty§(param1:§_-2D§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-k1§())
         {
            if(this.§_-Zf§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-HW§() : Dictionary
      {
         return this.§_-Fy§;
      }
      
      public function get §_-m4§() : Dictionary
      {
         return this.§_-Fy§;
      }
      
      public function get §_-PE§() : Boolean
      {
         return this.§_-ii§;
      }
      
      public function set §_-PE§(param1:Boolean) : void
      {
         this.§_-ii§ = param1;
      }
      
      public function get §_-QV§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-re§() : String
      {
         return this.§_-Q8§;
      }
   }
}
