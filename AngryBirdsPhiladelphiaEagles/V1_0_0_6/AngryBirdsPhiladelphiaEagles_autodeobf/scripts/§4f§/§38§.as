package §4f§
{
   import §1E§.§2h§;
   import §1E§.§8P§;
   import §;!B§.§;f§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §38§ extends EventDispatcher
   {
      
      protected static const §4!P§:Number = 1000;
      
      protected static const §@! §:Number = 60;
       
      
      protected var §-!-§:Dictionary;
      
      protected var §"y§:Dictionary;
      
      protected var §9!<§:Dictionary;
      
      protected var §0O§:Dictionary;
      
      protected var §5!;§:Boolean;
      
      protected var §3!B§:String;
      
      protected var §=e§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §38§(param1:String)
      {
         super();
         this.§=e§ = param1;
         this.§-!-§ = new Dictionary();
         this.§"y§ = new Dictionary();
         this.§9!<§ = new Dictionary();
         this.§0O§ = new Dictionary();
         this.§5!;§ = false;
      }
      
      private function §+!1§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§in§));
         this.§3!B§ = null;
      }
      
      public function §]!5§(param1:String) : Boolean
      {
         if(this.§3!B§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §[w§() : String
      {
         var _loc1_:Number = §@! § - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §@! §;
         var _loc3_:int = _loc1_ % §@! §;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §&[§(param1:String) : int
      {
         var _loc2_:§;f§ = null;
         if(this.§-!-§[param1])
         {
            _loc2_ = this.§-!-§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,h§(param1:String) : int
      {
         var _loc2_:§;f§ = null;
         if(this.§"y§[param1])
         {
            _loc2_ = this.§"y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§&[§(param1) > 0 || this.§,h§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §-!P§(param1:String, param2:Boolean = true) : void
      {
         this.§9!<§[param1] = param2;
      }
      
      public function §]-§(param1:String, param2:Boolean = true) : void
      {
         this.§0O§[param1] = param2;
      }
      
      public function §@v§(param1:String, param2:int) : void
      {
         var _loc3_:§;f§ = new §;f§(param2);
         this.§-!-§[param1] = _loc3_;
      }
      
      public function §'!6§(param1:String, param2:int) : void
      {
         var _loc3_:§;f§ = new §;f§(param2);
         this.§"y§[param1] = _loc3_;
      }
      
      public function §^!3§(param1:String, param2:int = -1) : int
      {
         return §2h§.§;W§(param1,param2 != -1 ? int(param2) : int(this.§&[§(param1)));
      }
      
      public function §8J§(param1:§8P§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§8r§())
         {
            _loc2_ += this.§&[§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0,§(param1:§8P§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§8r§())
         {
            _loc2_ += this.§^!3§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §2e§() : int
      {
         var _loc3_:§8P§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §2h§.§01§())
         {
            _loc3_ = §2h§.§&I§(_loc2_);
            _loc4_ = this.§0,§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §?! §(param1:§8P§) : int
      {
         return param1.§8r§().length * 3;
      }
      
      public function §^!P§(param1:§8P§) : int
      {
         return param1.§8r§().length;
      }
      
      public function §?!E§(param1:§8P§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§8r§())
         {
            if(this.§,h§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §]E§() : Dictionary
      {
         return this.§9!<§;
      }
      
      public function get §-!F§() : Boolean
      {
         return this.§5!;§;
      }
      
      public function set §-!F§(param1:Boolean) : void
      {
         this.§5!;§ = param1;
      }
      
      public function get §+^§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §3T§() : String
      {
         return this.§3!B§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§8P§ = null;
         var _loc7_:§8P§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §2h§.§+!>§)
         {
            return true;
         }
         if(this.§&[§(param1) > 0)
         {
            return true;
         }
         if(this.§,h§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §2h§.§,?§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §2h§.§,?§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§&[§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§,h§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §2^§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function § d§(param1:String) : void
      {
      }
      
      public function §`!0§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §@!D§() : Dictionary
      {
         return this.§9!<§;
      }
   }
}
