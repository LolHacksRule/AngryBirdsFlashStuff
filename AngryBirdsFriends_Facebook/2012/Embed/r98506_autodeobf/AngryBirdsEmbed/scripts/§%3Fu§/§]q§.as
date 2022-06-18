package §?u§
{
   import §8!G§.§-Z§;
   import §8!G§.§>!C§;
   import §>K§.§%H§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]q§ extends EventDispatcher
   {
      
      protected static const §2V§:Number = 1000;
      
      protected static const §@!<§:Number = 60;
       
      
      protected var §9E§:Dictionary;
      
      protected var §"!A§:Dictionary;
      
      protected var §^!5§:Dictionary;
      
      protected var §,0§:Dictionary;
      
      protected var §"8§:Boolean;
      
      protected var §8!-§:String;
      
      protected var §]M§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §]q§(param1:String)
      {
         super();
         this.§]M§ = param1;
         this.§9E§ = new Dictionary();
         this.§"!A§ = new Dictionary();
         this.§^!5§ = new Dictionary();
         this.§,0§ = new Dictionary();
         this.§"8§ = false;
      }
      
      private function §&!#§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§4!?§));
         this.§8!-§ = null;
      }
      
      public function §&!F§(param1:String) : Boolean
      {
         if(this.§8!-§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4!3§() : String
      {
         var _loc1_:Number = §@!<§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §@!<§;
         var _loc3_:int = _loc1_ % §@!<§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §>P§(param1:String) : int
      {
         var _loc2_:§%H§ = null;
         if(this.§9E§[param1])
         {
            _loc2_ = this.§9E§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §"w§(param1:String) : int
      {
         var _loc2_:§%H§ = null;
         if(this.§"!A§[param1])
         {
            _loc2_ = this.§"!A§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§>P§(param1) > 0 || this.§"w§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §8y§(param1:String, param2:Boolean = true) : void
      {
         this.§^!5§[param1] = param2;
      }
      
      public function §]!I§(param1:String, param2:Boolean = true) : void
      {
         this.§,0§[param1] = param2;
      }
      
      public function §23§(param1:String, param2:int) : void
      {
         var _loc3_:§%H§ = new §%H§(param2);
         this.§9E§[param1] = _loc3_;
      }
      
      public function §7+§(param1:String, param2:int) : void
      {
         var _loc3_:§%H§ = new §%H§(param2);
         this.§"!A§[param1] = _loc3_;
      }
      
      public function §=!=§(param1:String, param2:int = -1) : int
      {
         return §-Z§.§4!=§(param1,param2 != -1 ? int(param2) : int(this.§>P§(param1)));
      }
      
      public function § !'§(param1:§>!C§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^J§())
         {
            _loc2_ += this.§>P§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=G§(param1:§>!C§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^J§())
         {
            _loc2_ += this.§=!=§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §#!J§() : int
      {
         var _loc3_:§>!C§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §-Z§.§`I§())
         {
            _loc3_ = §-Z§.§=!<§(_loc2_);
            _loc4_ = this.§=G§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`S§(param1:§>!C§) : int
      {
         return param1.§^J§().length * 3;
      }
      
      public function §'#§(param1:§>!C§) : int
      {
         return param1.§^J§().length;
      }
      
      public function §'N§(param1:§>!C§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^J§())
         {
            if(this.§"w§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §8t§() : Dictionary
      {
         return this.§^!5§;
      }
      
      public function get §&r§() : Boolean
      {
         return this.§"8§;
      }
      
      public function set §&r§(param1:Boolean) : void
      {
         this.§"8§ = param1;
      }
      
      public function get § !J§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §'-§() : String
      {
         return this.§8!-§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§>!C§ = null;
         var _loc7_:§>!C§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §-Z§.§5a§)
         {
            return true;
         }
         if(this.§>P§(param1) > 0)
         {
            return true;
         }
         if(this.§"w§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §-Z§.§ H§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §-Z§.§ H§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§>P§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§"w§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §08§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §'!F§(param1:String) : void
      {
      }
      
      public function §%c§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §!J§() : Dictionary
      {
         return this.§^!5§;
      }
   }
}
