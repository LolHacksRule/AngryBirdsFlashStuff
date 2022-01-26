package §_-sq§
{
   import §_-3P§.§_-SQ§;
   import §_-3P§.§_-dN§;
   import §_-HJ§.§_-SG§;
   import §_-ot§.Base64;
   import §_-r5§.§_-mU§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-rB§ extends EventDispatcher
   {
      
      protected static const §_-aR§:Number = 1000;
      
      protected static const §_-cq§:Number = 60;
       
      
      protected var §_-q5§:Dictionary;
      
      protected var §_-aH§:Dictionary;
      
      protected var §_-bH§:Dictionary;
      
      protected var §_-Qu§:Dictionary;
      
      protected var §_-Z3§:Boolean;
      
      protected var §_-ms§:String;
      
      protected var §_-dD§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-rB§(param1:String)
      {
         super();
         this.§_-dD§ = param1;
         this.§_-q5§ = new Dictionary();
         this.§_-aH§ = new Dictionary();
         this.§_-bH§ = new Dictionary();
         this.§_-Qu§ = new Dictionary();
         this.§_-Z3§ = false;
         this.mMightyEagleTimer = new Timer(§_-aR§,§_-cq§);
         this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-0P§);
      }
      
      private function §_-0P§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§ get§));
         this.§_-ms§ = null;
      }
      
      public function §_-qc§(param1:String) : void
      {
         if(!this.mMightyEagleTimer.running)
         {
            this.mMightyEagleTimer.reset();
            this.mMightyEagleTimer.start();
            this.§_-ms§ = param1;
         }
      }
      
      public function §_-mz§(param1:String) : Boolean
      {
         if(this.§_-ms§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-jO§() : String
      {
         var _loc1_:Number = §_-cq§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-cq§;
         var _loc3_:int = _loc1_ % §_-cq§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-wC§(param1:String) : int
      {
         var _loc2_:§_-SG§ = null;
         if(this.§_-q5§[param1])
         {
            _loc2_ = this.§_-q5§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-§(param1:String) : int
      {
         var _loc2_:§_-SG§ = null;
         if(this.§_-aH§[param1])
         {
            _loc2_ = this.§_-aH§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-5g§(param1:String) : String
      {
         var _loc2_:§_-SQ§ = §_-dN§.§_-dz§(param1);
         return §_-mU§.§_-CK§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-wC§(param1),this.§_-Wz§(param1),this.§_-§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
      }
      
      public function §_-hK§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(this.§_-dD§ + "/submitscore");
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§_-SQ§ = §_-dN§.§_-dz§(param1);
         _loc2_.data = Base64.encode(JSON.stringify({
            "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
            "level":param1,
            "points":this.§_-wC§(param1),
            "stars":this.§_-Wz§(param1),
            "destructionPercentage":this.§_-§(param1),
            "security":this.§_-5g§(param1)
         }));
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-46§);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      private function §_-46§(param1:Event) : void
      {
      }
      
      public function §_-cm§(param1:String, param2:Boolean = true) : void
      {
         this.§_-bH§[param1] = param2;
      }
      
      public function §_-js§(param1:String, param2:Boolean = true) : void
      {
         this.§_-bH§[param1] = param2;
      }
      
      public function §_-Xh§(param1:String, param2:int) : void
      {
         var _loc3_:§_-SG§ = new §_-SG§(param2);
         this.§_-q5§[param1] = _loc3_;
      }
      
      public function §_-rx§(param1:String, param2:int) : void
      {
         var _loc3_:§_-SG§ = new §_-SG§(param2);
         this.§_-aH§[param1] = _loc3_;
      }
      
      public function §_-Wz§(param1:String, param2:int = -1) : int
      {
         return §_-dN§.§_-fB§(param1,param2 != -1 ? int(param2) : int(this.§_-wC§(param1)));
      }
      
      public function §_-lS§(param1:§_-SQ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-Ir§())
         {
            _loc2_ += this.§_-wC§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-qF§(param1:§_-SQ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-Ir§())
         {
            _loc2_ += this.§_-Wz§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-YN§(param1:§_-SQ§) : int
      {
         return param1.§_-Ir§().length * 3;
      }
      
      public function §_-j9§(param1:§_-SQ§) : int
      {
         return param1.§_-Ir§().length;
      }
      
      public function §_-h-§(param1:§_-SQ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-Ir§())
         {
            if(this.§_-§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-Qv§() : Dictionary
      {
         return this.§_-bH§;
      }
      
      public function get §_-dV§() : Dictionary
      {
         return this.§_-bH§;
      }
      
      public function get §_-cr§() : Boolean
      {
         return this.§_-Z3§;
      }
      
      public function set §_-cr§(param1:Boolean) : void
      {
         this.§_-Z3§ = param1;
      }
      
      public function get §_-W-§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-Xj§() : String
      {
         return this.§_-ms§;
      }
   }
}
