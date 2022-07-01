package §<Y§
{
   import §-!0§.§1^§;
   import §-!0§.§4!N§;
   import §8!Q§.§2!7§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §;!i§ extends EventDispatcher
   {
      
      protected static const §]!+§:Number = 1000;
      
      protected static const §#!l§:Number = 60;
       
      
      protected var §[!q§:Dictionary;
      
      protected var §+!>§:Dictionary;
      
      protected var §break§:Dictionary;
      
      protected var §+§:Dictionary;
      
      protected var §2'§:Boolean;
      
      protected var §,!B§:String;
      
      protected var §1!D§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §;!i§(param1:String)
      {
         super();
         this.§1!D§ = param1;
         this.§[!q§ = new Dictionary();
         this.§+!>§ = new Dictionary();
         this.§break§ = new Dictionary();
         this.§+§ = new Dictionary();
         this.§2'§ = false;
      }
      
      private function §,!2§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§>W§));
         this.§,!B§ = null;
      }
      
      public function §&!R§(param1:String) : Boolean
      {
         if(this.§,!B§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §56§() : String
      {
         var _loc1_:Number = §#!l§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §#!l§;
         var _loc3_:int = _loc1_ % §#!l§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §!7§(param1:String) : int
      {
         var _loc2_:§2!7§ = null;
         if(this.§[!q§[param1])
         {
            _loc2_ = this.§[!q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!O§(param1:String) : int
      {
         var _loc2_:§2!7§ = null;
         if(this.§+!>§[param1])
         {
            _loc2_ = this.§+!>§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§!7§(param1) > 0 || this.§8!O§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §#+§(param1:String, param2:Boolean = true) : void
      {
         this.§break§[param1] = param2;
      }
      
      public function §&,§(param1:String, param2:Boolean = true) : void
      {
         this.§break§[param1] = param2;
      }
      
      public function §8!f§(param1:String, param2:int) : void
      {
         var _loc3_:§2!7§ = new §2!7§(param2);
         this.§[!q§[param1] = _loc3_;
      }
      
      public function §]!L§(param1:String, param2:int) : void
      {
         var _loc3_:§2!7§ = new §2!7§(param2);
         this.§+!>§[param1] = _loc3_;
      }
      
      public function §"!%§(param1:String, param2:int = -1) : int
      {
         return §1^§.§>6§(param1,param2 != -1 ? int(param2) : int(this.§!7§(param1)));
      }
      
      public function §,!6§(param1:§4!N§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ >§())
         {
            _loc2_ += this.§!7§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!k§(param1:§4!N§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ >§())
         {
            _loc2_ += this.§"!%§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §#!p§() : int
      {
         var _loc3_:§4!N§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §1^§.§9!d§())
         {
            _loc3_ = §1^§.§?!0§(_loc2_);
            _loc4_ = this.§!k§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §null §(param1:§4!N§) : int
      {
         return param1.§ >§().length * 3;
      }
      
      public function §<3§(param1:§4!N§) : int
      {
         return param1.§ >§().length;
      }
      
      public function §]!-§(param1:§4!N§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ >§())
         {
            if(this.§8!O§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §3%§() : Dictionary
      {
         return this.§break§;
      }
      
      public function get §1h§() : Dictionary
      {
         return this.§break§;
      }
      
      public function get §throw§() : Boolean
      {
         return this.§2'§;
      }
      
      public function set §throw§(param1:Boolean) : void
      {
         this.§2'§ = param1;
      }
      
      public function get §!P§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §`!%§() : String
      {
         return this.§,!B§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§4!N§ = null;
         var _loc7_:§4!N§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §1^§.§;!8§)
         {
            return true;
         }
         if(this.§!7§(param1) > 0)
         {
            return true;
         }
         if(this.§8!O§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §1^§.§['§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §1^§.§['§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§!7§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§8!O§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function § true§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
