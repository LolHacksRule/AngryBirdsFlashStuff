package §_-re§
{
   import §_-MP§.§_-N5§;
   import §_-MP§.§_-ZZ§;
   import §_-Me§.§_-61§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class static extends EventDispatcher
   {
      
      protected static const §_-R5§:Number = 1000;
      
      protected static const §_-v3§:Number = 60;
       
      
      protected var §_-VM§:Dictionary;
      
      protected var §_-nu§:Dictionary;
      
      protected var §_-x4§:Dictionary;
      
      protected var §_-p4§:Dictionary;
      
      protected var §_-PG§:Boolean;
      
      protected var §_-8x§:String;
      
      protected var §_-jl§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function static(param1:String)
      {
         super();
         this.§_-jl§ = param1;
         this.§_-VM§ = new Dictionary();
         this.§_-nu§ = new Dictionary();
         this.§_-x4§ = new Dictionary();
         this.§_-p4§ = new Dictionary();
         this.§_-PG§ = false;
      }
      
      private function §_-ES§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-nt§));
         this.§_-8x§ = null;
      }
      
      public function §_-pn§(param1:String) : Boolean
      {
         if(this.§_-8x§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-PO§() : String
      {
         var _loc1_:Number = §_-v3§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-v3§;
         var _loc3_:int = _loc1_ % §_-v3§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-Ex§(param1:String) : int
      {
         var _loc2_:§_-61§ = null;
         if(this.§_-VM§[param1])
         {
            _loc2_ = this.§_-VM§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-tS§(param1:String) : int
      {
         var _loc2_:§_-61§ = null;
         if(this.§_-nu§[param1])
         {
            _loc2_ = this.§_-nu§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-n9§(param1:String) : Boolean
      {
         if(this.§_-Ex§(param1) > 0 || this.§_-tS§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §_-5R§(param1:String, param2:Boolean = true) : void
      {
         this.§_-x4§[param1] = param2;
      }
      
      public function §_-Tg§(param1:String, param2:Boolean = true) : void
      {
         this.§_-x4§[param1] = param2;
      }
      
      public function §_-Xq§(param1:String, param2:int) : void
      {
         var _loc3_:§_-61§ = new §_-61§(param2);
         this.§_-VM§[param1] = _loc3_;
      }
      
      public function §_-7F§(param1:String, param2:int) : void
      {
         var _loc3_:§_-61§ = new §_-61§(param2);
         this.§_-nu§[param1] = _loc3_;
      }
      
      public function §_-h6§(param1:String, param2:int = -1) : int
      {
         return §_-N5§.§_-9k§(param1,param2 != -1 ? int(param2) : int(this.§_-Ex§(param1)));
      }
      
      public function §_-b2§(param1:§_-ZZ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-j-§())
         {
            _loc2_ += this.§_-Ex§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-II§(param1:§_-ZZ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-j-§())
         {
            _loc2_ += this.§_-h6§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-la§() : int
      {
         var _loc3_:§_-ZZ§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §_-N5§.§_-XV§())
         {
            _loc3_ = §_-N5§.§_-UW§(_loc2_);
            _loc4_ = this.§_-II§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §_-q6§(param1:§_-ZZ§) : int
      {
         return param1.§_-j-§().length * 3;
      }
      
      public function §_-Oj§(param1:§_-ZZ§) : int
      {
         return param1.§_-j-§().length;
      }
      
      public function §_-c6§(param1:§_-ZZ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-j-§())
         {
            if(this.§_-tS§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-3H§() : Dictionary
      {
         return this.§_-x4§;
      }
      
      public function get §_-P-§() : Dictionary
      {
         return this.§_-x4§;
      }
      
      public function get §_-jN§() : Boolean
      {
         return this.§_-PG§;
      }
      
      public function set §_-jN§(param1:Boolean) : void
      {
         this.§_-PG§ = param1;
      }
      
      public function get §_-Fe§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-kC§() : String
      {
         return this.§_-8x§;
      }
      
      public function §_-yG§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§_-ZZ§ = null;
         var _loc7_:§_-ZZ§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §_-N5§.§try§)
         {
            return true;
         }
         if(this.§_-Ex§(param1) > 0)
         {
            return true;
         }
         if(this.§_-tS§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §_-N5§.§_-Do§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §_-N5§.§_-Do§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§_-Ex§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§_-tS§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
