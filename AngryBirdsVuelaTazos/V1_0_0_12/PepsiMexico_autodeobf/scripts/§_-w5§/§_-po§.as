package §_-w5§
{
   import §_-Hs§.each;
   import §_-RG§.Base64;
   import §_-Su§.§_-8v§;
   import §_-Su§.§_-N3§;
   import §_-Xr§.§_-mU§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-po§ extends EventDispatcher
   {
      
      protected static const §_-Vz§:Number = 1000;
      
      protected static const §_-jh§:Number = 60;
       
      
      protected var §_-Dy§:Dictionary;
      
      protected var §_-W9§:Dictionary;
      
      protected var §_-du§:Dictionary;
      
      protected var §_-Wg§:Dictionary;
      
      protected var §_-8I§:Boolean;
      
      protected var §_-8Y§:String;
      
      protected var §_-tf§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-po§(param1:String)
      {
         super();
         this.§_-tf§ = param1;
         this.§_-Dy§ = new Dictionary();
         this.§_-W9§ = new Dictionary();
         this.§_-du§ = new Dictionary();
         this.§_-Wg§ = new Dictionary();
         this.§_-8I§ = false;
         this.mMightyEagleTimer = new Timer(§_-Vz§,§_-jh§);
         this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-rU§);
      }
      
      private function §_-rU§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-Qu§));
         this.§_-8Y§ = null;
      }
      
      public function §_-9f§(param1:String) : void
      {
         if(!this.mMightyEagleTimer.running)
         {
            this.mMightyEagleTimer.reset();
            this.mMightyEagleTimer.start();
            this.§_-8Y§ = param1;
         }
      }
      
      public function §_-pA§(param1:String) : Boolean
      {
         if(this.§_-8Y§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-m6§() : String
      {
         var _loc1_:Number = §_-jh§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-jh§;
         var _loc3_:int = _loc1_ % §_-jh§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-YB§(param1:String) : int
      {
         var _loc2_:§_-mU§ = null;
         if(this.§_-Dy§[param1])
         {
            _loc2_ = this.§_-Dy§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-F9§(param1:String) : int
      {
         var _loc2_:§_-mU§ = null;
         if(this.§_-W9§[param1])
         {
            _loc2_ = this.§_-W9§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-qZ§(param1:String) : String
      {
         var _loc2_:§_-N3§ = §_-8v§.§_-Zh§(param1);
         return each.§_-hU§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-YB§(param1),this.§_-Rg§(param1),this.§_-F9§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
      }
      
      public function §_-fO§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(this.§_-tf§ + "/submitscore");
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§_-N3§ = §_-8v§.§_-Zh§(param1);
         _loc2_.data = Base64.encode(JSON.stringify({
            "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
            "level":param1,
            "points":this.§_-YB§(param1),
            "stars":this.§_-Rg§(param1),
            "destructionPercentage":this.§_-F9§(param1),
            "security":this.§_-qZ§(param1)
         }));
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-Xx§);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      private function §_-Xx§(param1:Event) : void
      {
      }
      
      public function §_-BV§(param1:String, param2:Boolean = true) : void
      {
         this.§_-du§[param1] = param2;
      }
      
      public function §_-DW§(param1:String, param2:Boolean = true) : void
      {
         this.§_-du§[param1] = param2;
      }
      
      public function §_-7P§(param1:String, param2:int) : void
      {
         var _loc3_:§_-mU§ = new §_-mU§(param2);
         this.§_-Dy§[param1] = _loc3_;
      }
      
      public function §_-ey§(param1:String, param2:int) : void
      {
         var _loc3_:§_-mU§ = new §_-mU§(param2);
         this.§_-W9§[param1] = _loc3_;
      }
      
      public function §_-Rg§(param1:String, param2:int = -1) : int
      {
         return §_-8v§.§_-nk§(param1,param2 != -1 ? int(param2) : int(this.§_-YB§(param1)));
      }
      
      public function §_-t2§(param1:§_-N3§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-GV§())
         {
            _loc2_ += this.§_-YB§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-nt§(param1:§_-N3§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-GV§())
         {
            _loc2_ += this.§_-Rg§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-hv§(param1:§_-N3§) : int
      {
         return param1.§_-GV§().length * 3;
      }
      
      public function §_-Vj§(param1:§_-N3§) : int
      {
         return param1.§_-GV§().length;
      }
      
      public function §_-aQ§(param1:§_-N3§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-GV§())
         {
            if(this.§_-F9§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-R§() : Dictionary
      {
         return this.§_-du§;
      }
      
      public function get §_-XD§() : Dictionary
      {
         return this.§_-du§;
      }
      
      public function get §_-1t§() : Boolean
      {
         return this.§_-8I§;
      }
      
      public function set §_-1t§(param1:Boolean) : void
      {
         this.§_-8I§ = param1;
      }
      
      public function get §_-le§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-9r§() : String
      {
         return this.§_-8Y§;
      }
   }
}
