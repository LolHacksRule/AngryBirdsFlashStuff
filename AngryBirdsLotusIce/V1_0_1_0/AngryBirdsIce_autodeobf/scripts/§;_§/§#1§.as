package §;_§
{
   import §0!!§.§2N§;
   import §3"§.§&9§;
   import §3"§.§0$§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §#1§ extends EventDispatcher
   {
      
      protected static const §<!0§:Number = 1000;
      
      protected static const §'c§:Number = 60;
       
      
      protected var §4r§:Dictionary;
      
      protected var §3l§:Dictionary;
      
      protected var §-!?§:Dictionary;
      
      protected var §@!8§:Dictionary;
      
      protected var §%!=§:Boolean;
      
      protected var §-6§:String;
      
      protected var §"!5§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §#1§(param1:String)
      {
         super();
         this.§"!5§ = param1;
         this.§4r§ = new Dictionary();
         this.§3l§ = new Dictionary();
         this.§-!?§ = new Dictionary();
         this.§@!8§ = new Dictionary();
         this.§%!=§ = false;
      }
      
      private function §%7§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§0f§));
         this.§-6§ = null;
      }
      
      public function §0=§(param1:String) : Boolean
      {
         if(this.§-6§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §3m§() : String
      {
         var _loc1_:Number = §'c§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §'c§;
         var _loc3_:int = _loc1_ % §'c§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §5!4§(param1:String) : int
      {
         var _loc2_:§2N§ = null;
         if(this.§4r§[param1])
         {
            _loc2_ = this.§4r§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §!!@§(param1:String) : int
      {
         var _loc2_:§2N§ = null;
         if(this.§3l§[param1])
         {
            _loc2_ = this.§3l§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§5!4§(param1) > 0 || this.§!!@§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §6§(param1:String, param2:Boolean = true) : void
      {
         this.§-!?§[param1] = param2;
      }
      
      public function §6w§(param1:String, param2:Boolean = true) : void
      {
         this.§-!?§[param1] = param2;
      }
      
      public function §,! §(param1:String, param2:int) : void
      {
         var _loc3_:§2N§ = new §2N§(param2);
         this.§4r§[param1] = _loc3_;
      }
      
      public function §=+§(param1:String, param2:int) : void
      {
         var _loc3_:§2N§ = new §2N§(param2);
         this.§3l§[param1] = _loc3_;
      }
      
      public function §1!8§(param1:String, param2:int = -1) : int
      {
         return §0$§.§5Y§(param1,param2 != -1 ? int(param2) : int(this.§5!4§(param1)));
      }
      
      public function §3<§(param1:§&9§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ ;§())
         {
            _loc2_ += this.§5!4§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!!E§(param1:§&9§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ ;§())
         {
            _loc2_ += this.§1!8§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §4q§() : int
      {
         var _loc3_:§&9§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §0$§.§ l§())
         {
            _loc3_ = §0$§.§]>§(_loc2_);
            _loc4_ = this.§!!E§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §9b§(param1:§&9§) : int
      {
         return param1.§ ;§().length * 3;
      }
      
      public function §'o§(param1:§&9§) : int
      {
         return param1.§ ;§().length;
      }
      
      public function §@!=§(param1:§&9§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ ;§())
         {
            if(this.§!!@§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §!@§() : Dictionary
      {
         return this.§-!?§;
      }
      
      public function get §&,§() : Dictionary
      {
         return this.§-!?§;
      }
      
      public function get §7!@§() : Boolean
      {
         return this.§%!=§;
      }
      
      public function set §7!@§(param1:Boolean) : void
      {
         this.§%!=§ = param1;
      }
      
      public function get §[w§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §'!3§() : String
      {
         return this.§-6§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§&9§ = null;
         var _loc7_:§&9§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §0$§.§!!C§)
         {
            return true;
         }
         if(this.§5!4§(param1) > 0)
         {
            return true;
         }
         if(this.§!!@§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §0$§.§,o§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §0$§.§,o§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§5!4§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§!!@§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §-!7§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
