package §9!?§
{
   import §8!=§.§]Q§;
   import §<!M§.§#W§;
   import §<!M§.§[i§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §9!7§ extends EventDispatcher
   {
      
      protected static const §&,§:Number = 1000;
      
      protected static const §[X§:Number = 60;
       
      
      protected var §^u§:Dictionary;
      
      protected var §%6§:Dictionary;
      
      protected var §,!$§:Dictionary;
      
      protected var §1!0§:Dictionary;
      
      protected var §%!E§:Boolean;
      
      protected var §-!&§:String;
      
      protected var §1N§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §9!7§(param1:String)
      {
         super();
         this.§1N§ = param1;
         this.§^u§ = new Dictionary();
         this.§%6§ = new Dictionary();
         this.§,!$§ = new Dictionary();
         this.§1!0§ = new Dictionary();
         this.§%!E§ = false;
      }
      
      private function §1!J§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§ _§));
         this.§-!&§ = null;
      }
      
      public function §9T§(param1:String) : Boolean
      {
         if(this.§-!&§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §1H§() : String
      {
         var _loc1_:Number = §[X§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §[X§;
         var _loc3_:int = _loc1_ % §[X§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §9B§(param1:String) : int
      {
         var _loc2_:§]Q§ = null;
         if(this.§^u§[param1])
         {
            _loc2_ = this.§^u§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §&H§(param1:String) : int
      {
         var _loc2_:§]Q§ = null;
         if(this.§%6§[param1])
         {
            _loc2_ = this.§%6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§9B§(param1) > 0 || this.§&H§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §>W§(param1:String, param2:Boolean = true) : void
      {
         this.§,!$§[param1] = param2;
      }
      
      public function §1!E§(param1:String, param2:Boolean = true) : void
      {
         this.§1!0§[param1] = param2;
      }
      
      public function §7n§(param1:String, param2:int) : void
      {
         var _loc3_:§]Q§ = new §]Q§(param2);
         this.§^u§[param1] = _loc3_;
      }
      
      public function §+!A§(param1:String, param2:int) : void
      {
         var _loc3_:§]Q§ = new §]Q§(param2);
         this.§%6§[param1] = _loc3_;
      }
      
      public function §;<§(param1:String, param2:int = -1) : int
      {
         return §[i§.§>!;§(param1,param2 != -1 ? int(param2) : int(this.§9B§(param1)));
      }
      
      public function §^X§(param1:§#W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§;"§())
         {
            _loc2_ += this.§9B§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>O§(param1:§#W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§;"§())
         {
            _loc2_ += this.§;<§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §return§() : int
      {
         var _loc3_:§#W§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §[i§.§7x§())
         {
            _loc3_ = §[i§.§'4§(_loc2_);
            _loc4_ = this.§>O§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §@!D§(param1:§#W§) : int
      {
         return param1.§;"§().length * 3;
      }
      
      public function §%!&§(param1:§#W§) : int
      {
         return param1.§;"§().length;
      }
      
      public function §!4§(param1:§#W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§;"§())
         {
            if(this.§&H§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §8s§() : Dictionary
      {
         return this.§,!$§;
      }
      
      public function get §2h§() : Boolean
      {
         return this.§%!E§;
      }
      
      public function set §2h§(param1:Boolean) : void
      {
         this.§%!E§ = param1;
      }
      
      public function get §!_§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §65§() : String
      {
         return this.§-!&§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#W§ = null;
         var _loc7_:§#W§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §[i§.§-Y§)
         {
            return true;
         }
         if(this.§9B§(param1) > 0)
         {
            return true;
         }
         if(this.§&H§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §[i§.§#D§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §[i§.§#D§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§9B§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§&H§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §13§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §?h§(param1:String) : void
      {
      }
      
      public function §5-§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §"B§() : Dictionary
      {
         return this.§,!$§;
      }
   }
}
