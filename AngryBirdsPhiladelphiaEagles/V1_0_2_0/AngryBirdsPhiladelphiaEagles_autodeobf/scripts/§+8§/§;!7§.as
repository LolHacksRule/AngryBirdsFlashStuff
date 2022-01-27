package §+8§
{
   import §9!0§.§3!2§;
   import §?!;§.§6H§;
   import §?!;§.§;h§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §;!7§ extends EventDispatcher
   {
      
      protected static const §8"§:Number = 1000;
      
      protected static const §>+§:Number = 60;
       
      
      protected var §4@§:Dictionary;
      
      protected var §;!E§:Dictionary;
      
      protected var §>S§:Dictionary;
      
      protected var §0U§:Dictionary;
      
      protected var §=!4§:Boolean;
      
      protected var §`!<§:String;
      
      protected var §@!L§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §;!7§(param1:String)
      {
         super();
         this.§@!L§ = param1;
         this.§4@§ = new Dictionary();
         this.§;!E§ = new Dictionary();
         this.§>S§ = new Dictionary();
         this.§0U§ = new Dictionary();
         this.§=!4§ = false;
      }
      
      private function §%!<§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§"!=§));
         this.§`!<§ = null;
      }
      
      public function §6S§(param1:String) : Boolean
      {
         if(this.§`!<§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §1N§() : String
      {
         var _loc1_:Number = §>+§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §>+§;
         var _loc3_:int = _loc1_ % §>+§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §=%§(param1:String) : int
      {
         var _loc2_:§3!2§ = null;
         if(this.§4@§[param1])
         {
            _loc2_ = this.§4@§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#!@§(param1:String) : int
      {
         var _loc2_:§3!2§ = null;
         if(this.§;!E§[param1])
         {
            _loc2_ = this.§;!E§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§=%§(param1) > 0 || this.§#!@§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §"!"§(param1:String, param2:Boolean = true) : void
      {
         this.§>S§[param1] = param2;
      }
      
      public function §5!B§(param1:String, param2:Boolean = true) : void
      {
         this.§0U§[param1] = param2;
      }
      
      public function §9!;§(param1:String, param2:int) : void
      {
         var _loc3_:§3!2§ = new §3!2§(param2);
         this.§4@§[param1] = _loc3_;
      }
      
      public function §4`§(param1:String, param2:int) : void
      {
         var _loc3_:§3!2§ = new §3!2§(param2);
         this.§;!E§[param1] = _loc3_;
      }
      
      public function §'7§(param1:String, param2:int = -1) : int
      {
         return §6H§.§ !J§(param1,param2 != -1 ? int(param2) : int(this.§=%§(param1)));
      }
      
      public function §%I§(param1:§;h§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5G§())
         {
            _loc2_ += this.§=%§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §4m§(param1:§;h§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5G§())
         {
            _loc2_ += this.§'7§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §?t§() : int
      {
         var _loc3_:§;h§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §6H§.§%a§())
         {
            _loc3_ = §6H§.§4_§(_loc2_);
            _loc4_ = this.§4m§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §7!M§(param1:§;h§) : int
      {
         return param1.§5G§().length * 3;
      }
      
      public function §8!3§(param1:§;h§) : int
      {
         return param1.§5G§().length;
      }
      
      public function §!!=§(param1:§;h§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5G§())
         {
            if(this.§#!@§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §+J§() : Dictionary
      {
         return this.§>S§;
      }
      
      public function get §<>§() : Boolean
      {
         return this.§=!4§;
      }
      
      public function set §<>§(param1:Boolean) : void
      {
         this.§=!4§ = param1;
      }
      
      public function get §-!L§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §%E§() : String
      {
         return this.§`!<§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§;h§ = null;
         var _loc7_:§;h§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §6H§.§-!<§)
         {
            return true;
         }
         if(this.§=%§(param1) > 0)
         {
            return true;
         }
         if(this.§#!@§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §6H§.§7`§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §6H§.§7`§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§=%§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§#!@§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §[!7§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §^!;§(param1:String) : void
      {
      }
      
      public function §>!M§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §"X§() : Dictionary
      {
         return this.§>S§;
      }
   }
}
