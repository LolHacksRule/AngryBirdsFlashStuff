package §_-ef§
{
   import §_-PS§.§_-LZ§;
   import §_-PS§.§_-Xz§;
   import §_-XI§.§_-Er§;
   import §_-ex§.Base64;
   import §_-wC§.§_-TY§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-mL§ extends EventDispatcher
   {
      
      protected static const §_-zW§:Number = 1000;
      
      protected static const §_-0R§:Number = 60;
       
      
      protected var §_-2J§:Dictionary;
      
      protected var §_-4r§:Dictionary;
      
      protected var §_-eF§:Dictionary;
      
      protected var §_-85§:Dictionary;
      
      protected var §_-M2§:Boolean;
      
      protected var §_-8B§:String;
      
      protected var §_-mf§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-mL§(param1:String)
      {
         super();
         this.§_-mf§ = param1;
         this.§_-2J§ = new Dictionary();
         this.§_-4r§ = new Dictionary();
         this.§_-eF§ = new Dictionary();
         this.§_-85§ = new Dictionary();
         this.§_-M2§ = false;
         this.mMightyEagleTimer = new Timer(§_-zW§,§_-0R§);
         this.mMightyEagleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-ug§);
      }
      
      private function §_-ug§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-nU§));
         this.§_-8B§ = null;
      }
      
      public function §_-Ul§(param1:String) : void
      {
         if(!this.mMightyEagleTimer.running)
         {
            this.mMightyEagleTimer.reset();
            this.mMightyEagleTimer.start();
            this.§_-8B§ = param1;
         }
      }
      
      public function §_-Ru§(param1:String) : Boolean
      {
         if(this.§_-8B§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-tF§() : String
      {
         var _loc1_:Number = §_-0R§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-0R§;
         var _loc3_:int = _loc1_ % §_-0R§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-6X§(param1:String) : int
      {
         var _loc2_:§_-Er§ = null;
         if(this.§_-2J§[param1])
         {
            _loc2_ = this.§_-2J§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-PQ§(param1:String) : int
      {
         var _loc2_:§_-Er§ = null;
         if(this.§_-4r§[param1])
         {
            _loc2_ = this.§_-4r§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-U7§(param1:String) : String
      {
         var _loc2_:§_-LZ§ = §_-Xz§.§_-KM§(param1);
         return §_-TY§.§_-MG§([!!_loc2_ ? _loc2_.name : "unknownEpisode",param1,this.§_-6X§(param1),this.§_-Yj§(param1),this.§_-PQ§(param1),"dskfS!nuDy2i7rnDicsk38"].join("|"));
      }
      
      public function §_-Lu§(param1:String) : void
      {
         var _loc2_:URLRequest = new URLRequest(this.§_-mf§ + "/submitscore");
         _loc2_.method = URLRequestMethod.POST;
         _loc2_.contentType = "application/json";
         var _loc3_:§_-LZ§ = §_-Xz§.§_-KM§(param1);
         _loc2_.data = Base64.encode(JSON.stringify({
            "episode":(!!_loc3_ ? _loc3_.name : "unknownEpisode"),
            "level":param1,
            "points":this.§_-6X§(param1),
            "stars":this.§_-Yj§(param1),
            "destructionPercentage":this.§_-PQ§(param1),
            "security":this.§_-U7§(param1)
         }));
         var _loc4_:URLLoader;
         (_loc4_ = new URLLoader()).addEventListener(Event.COMPLETE,this.§_-jX§);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      private function §_-jX§(param1:Event) : void
      {
      }
      
      public function §_-Zt§(param1:String, param2:Boolean = true) : void
      {
         this.§_-eF§[param1] = param2;
      }
      
      public function §_-QR§(param1:String, param2:Boolean = true) : void
      {
         this.§_-eF§[param1] = param2;
      }
      
      public function §_-mD§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Er§ = new §_-Er§(param2);
         this.§_-2J§[param1] = _loc3_;
      }
      
      public function §extends§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Er§ = new §_-Er§(param2);
         this.§_-4r§[param1] = _loc3_;
      }
      
      public function §_-Yj§(param1:String, param2:int = -1) : int
      {
         return §_-Xz§.§_-Kz§(param1,param2 != -1 ? int(param2) : int(this.§_-6X§(param1)));
      }
      
      public function §_-8m§(param1:§_-LZ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-k2§())
         {
            _loc2_ += this.§_-6X§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-vk§(param1:§_-LZ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-k2§())
         {
            _loc2_ += this.§_-Yj§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-WX§(param1:§_-LZ§) : int
      {
         return param1.§_-k2§().length * 3;
      }
      
      public function §_-ey§(param1:§_-LZ§) : int
      {
         return param1.§_-k2§().length;
      }
      
      public function §_-3F§(param1:§_-LZ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-k2§())
         {
            if(this.§_-PQ§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-5O§() : Dictionary
      {
         return this.§_-eF§;
      }
      
      public function get §_-6A§() : Dictionary
      {
         return this.§_-eF§;
      }
      
      public function get §_-o8§() : Boolean
      {
         return this.§_-M2§;
      }
      
      public function set §_-o8§(param1:Boolean) : void
      {
         this.§_-M2§ = param1;
      }
      
      public function get §_-a0§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-KD§() : String
      {
         return this.§_-8B§;
      }
   }
}
