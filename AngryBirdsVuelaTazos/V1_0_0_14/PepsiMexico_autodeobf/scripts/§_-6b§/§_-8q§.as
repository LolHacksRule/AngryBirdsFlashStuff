package §_-6b§
{
   import §_-2z§.§_-rz§;
   import §_-Eo§.Base64;
   import §_-Fo§.§_-fT§;
   import §_-mc§.§_-TP§;
   import §_-uh§.§_-HB§;
   import §_-uh§.§_-z3§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-8q§ extends EventDispatcher
   {
      
      protected static const §_-vY§:Number = 1000;
      
      protected static const §_-jQ§:Number = 60;
       
      
      protected var §_-gV§:Dictionary;
      
      protected var §_-MQ§:Dictionary;
      
      protected var §_-lW§:Dictionary;
      
      protected var §_-BH§:Dictionary;
      
      protected var §_-Ue§:Boolean;
      
      protected var §_-zu§:String;
      
      protected var §_-pl§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-8q§(param1:String)
      {
         super();
         this.§_-pl§ = param1;
         this.§_-gV§ = new Dictionary();
         this.§_-MQ§ = new Dictionary();
         this.§_-lW§ = new Dictionary();
         this.§_-BH§ = new Dictionary();
         this.§_-Ue§ = false;
         this.mMightyEagleTimer = new Timer(§_-vY§,§_-jQ§);
         this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-yQ§);
      }
      
      private function §_-yQ§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-mv§));
         this.§_-zu§ = null;
      }
      
      public function §_-p1§(param1:String) : void
      {
         if(!this.mMightyEagleTimer.running)
         {
            this.mMightyEagleTimer.reset();
            this.mMightyEagleTimer.start();
            this.§_-zu§ = param1;
         }
      }
      
      public function §_-2L§(param1:String) : Boolean
      {
         if(this.§_-zu§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-LZ§() : String
      {
         var _loc1_:Number = §_-jQ§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-jQ§;
         var _loc3_:int = _loc1_ % §_-jQ§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-nT§(param1:String) : int
      {
         var _loc2_:§_-TP§ = null;
         if(this.§_-gV§[param1])
         {
            _loc2_ = this.§_-gV§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-fO§(param1:String) : int
      {
         var _loc2_:§_-TP§ = null;
         if(this.§_-MQ§[param1])
         {
            _loc2_ = this.§_-MQ§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-fr§(param1:String) : String
      {
         var _loc2_:§_-z3§ = §_-HB§.§_-Om§(param1);
         return §_-fT§.§_-Kw§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-nT§(param1),this.§_-Yx§(param1),this.§_-fO§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
      }
      
      public function §class§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(this.§_-pl§ + "/submitscore");
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§_-z3§ = §_-HB§.§_-Om§(param1);
         _loc2_.data = Base64.encode(§_-rz§.encode({
            "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
            "level":param1,
            "points":this.§_-nT§(param1),
            "stars":this.§_-Yx§(param1),
            "destructionPercentage":this.§_-fO§(param1),
            "security":this.§_-fr§(param1)
         }));
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-E3§);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      private function §_-E3§(param1:Event) : void
      {
      }
      
      public function §_-bL§(param1:String, param2:Boolean = true) : void
      {
         this.§_-lW§[param1] = param2;
      }
      
      public function §_-kz§(param1:String, param2:Boolean = true) : void
      {
         this.§_-lW§[param1] = param2;
      }
      
      public function §_-0a§(param1:String, param2:int) : void
      {
         var _loc3_:§_-TP§ = new §_-TP§(param2);
         this.§_-gV§[param1] = _loc3_;
      }
      
      public function §_-xG§(param1:String, param2:int) : void
      {
         var _loc3_:§_-TP§ = new §_-TP§(param2);
         this.§_-MQ§[param1] = _loc3_;
      }
      
      public function §_-Yx§(param1:String, param2:int = -1) : int
      {
         return §_-HB§.§_-1m§(param1,param2 != -1 ? int(param2) : int(this.§_-nT§(param1)));
      }
      
      public function §_-cr§(param1:§_-z3§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-Q6§())
         {
            _loc2_ += this.§_-nT§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-ma§(param1:§_-z3§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-Q6§())
         {
            _loc2_ += this.§_-Yx§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-jf§(param1:§_-z3§) : int
      {
         return param1.§_-Q6§().length * 3;
      }
      
      public function §_-9D§(param1:§_-z3§) : int
      {
         return param1.§_-Q6§().length;
      }
      
      public function §else §(param1:§_-z3§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-Q6§())
         {
            if(this.§_-fO§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-E6§() : Dictionary
      {
         return this.§_-lW§;
      }
      
      public function get §_-tm§() : Dictionary
      {
         return this.§_-lW§;
      }
      
      public function get §_-dG§() : Boolean
      {
         return this.§_-Ue§;
      }
      
      public function set §_-dG§(param1:Boolean) : void
      {
         this.§_-Ue§ = param1;
      }
      
      public function get §_-F7§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-I§() : String
      {
         return this.§_-zu§;
      }
   }
}
