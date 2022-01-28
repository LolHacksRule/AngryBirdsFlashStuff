package §_-9q§
{
   import §_-2F§.§_-F6§;
   import §_-7x§.§_-4O§;
   import §_-7x§.§_-MT§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-K-§ extends EventDispatcher
   {
      
      protected static const §_-jx§:Number = 1000;
      
      protected static const §_-WT§:Number = 60;
       
      
      protected var §_-P2§:Dictionary;
      
      protected var §_-uK§:Dictionary;
      
      protected var §_-Ub§:Dictionary;
      
      protected var §_-nS§:Dictionary;
      
      protected var §_-vJ§:Boolean;
      
      protected var §_-F2§:String;
      
      protected var §_-BS§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-K-§(param1:String)
      {
         super();
         this.§_-BS§ = param1;
         this.§_-P2§ = new Dictionary();
         this.§_-uK§ = new Dictionary();
         this.§_-Ub§ = new Dictionary();
         this.§_-nS§ = new Dictionary();
         this.§_-vJ§ = false;
      }
      
      private function §_-KE§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-hH§));
         this.§_-F2§ = null;
      }
      
      public function §_-Dm§(param1:String) : Boolean
      {
         if(this.§_-F2§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-n§() : String
      {
         var _loc1_:Number = §_-WT§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-WT§;
         var _loc3_:int = _loc1_ % §_-WT§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-GE§(param1:String) : int
      {
         var _loc2_:§_-F6§ = null;
         if(this.§_-P2§[param1])
         {
            _loc2_ = this.§_-P2§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-Lt§(param1:String) : int
      {
         var _loc2_:§_-F6§ = null;
         if(this.§_-uK§[param1])
         {
            _loc2_ = this.§_-uK§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-az§(param1:String) : Boolean
      {
         if(this.§_-GE§(param1) > 0 || this.§_-Lt§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §_-U3§(param1:String, param2:Boolean = true) : void
      {
         this.§_-Ub§[param1] = param2;
      }
      
      public function §_-oB§(param1:String, param2:Boolean = true) : void
      {
         this.§_-Ub§[param1] = param2;
      }
      
      public function §_-wL§(param1:String, param2:int) : void
      {
         var _loc3_:§_-F6§ = new §_-F6§(param2);
         this.§_-P2§[param1] = _loc3_;
      }
      
      public function §_-mn§(param1:String, param2:int) : void
      {
         var _loc3_:§_-F6§ = new §_-F6§(param2);
         this.§_-uK§[param1] = _loc3_;
      }
      
      public function §_-0u§(param1:String, param2:int = -1) : int
      {
         return §_-4O§.§_-4w§(param1,param2 != -1 ? int(param2) : int(this.§_-GE§(param1)));
      }
      
      public function §_-4R§(param1:§_-MT§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-yR§())
         {
            _loc2_ += this.§_-GE§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-ww§(param1:§_-MT§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-yR§())
         {
            _loc2_ += this.§_-0u§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-ao§() : int
      {
         var _loc3_:§_-MT§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §_-4O§.§_-P3§())
         {
            _loc3_ = §_-4O§.§_-yd§(_loc2_);
            _loc4_ = this.§_-ww§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §_-g8§(param1:§_-MT§) : int
      {
         return param1.§_-yR§().length * 3;
      }
      
      public function §_-0e§(param1:§_-MT§) : int
      {
         return param1.§_-yR§().length;
      }
      
      public function §_-vP§(param1:§_-MT§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-yR§())
         {
            if(this.§_-Lt§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-kv§() : Dictionary
      {
         return this.§_-Ub§;
      }
      
      public function get §_-cH§() : Dictionary
      {
         return this.§_-Ub§;
      }
      
      public function get §_-Om§() : Boolean
      {
         return this.§_-vJ§;
      }
      
      public function set §_-Om§(param1:Boolean) : void
      {
         this.§_-vJ§ = param1;
      }
      
      public function get §_-fC§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-K0§() : String
      {
         return this.§_-F2§;
      }
      
      public function §_-RG§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§_-MT§ = null;
         var _loc7_:§_-MT§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §_-4O§.§_-Jw§)
         {
            return true;
         }
         if(this.§_-GE§(param1) > 0)
         {
            return true;
         }
         if(this.§_-Lt§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §_-4O§.§_-ED§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §_-4O§.§_-ED§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§_-GE§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§_-Lt§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
