package §"!6§
{
   import §'O§.§>q§;
   import §0H§.§1l§;
   import §0H§.§7M§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §`c§ extends EventDispatcher
   {
      
      protected static const §0v§:Number = 1000;
      
      protected static const §2w§:Number = 60;
       
      
      protected var §-!B§:Dictionary;
      
      protected var §[c§:Dictionary;
      
      protected var §@! §:Dictionary;
      
      protected var §#<§:Dictionary;
      
      protected var §]w§:Boolean;
      
      protected var §2!9§:String;
      
      protected var §]!B§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §`c§(param1:String)
      {
         super();
         this.§]!B§ = param1;
         this.§-!B§ = new Dictionary();
         this.§[c§ = new Dictionary();
         this.§@! § = new Dictionary();
         this.§#<§ = new Dictionary();
         this.§]w§ = false;
      }
      
      private function §0!A§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§,7§));
         this.§2!9§ = null;
      }
      
      public function §^!5§(param1:String) : Boolean
      {
         if(this.§2!9§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §8$§() : String
      {
         var _loc1_:Number = §2w§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §2w§;
         var _loc3_:int = _loc1_ % §2w§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §"!B§(param1:String) : int
      {
         var _loc2_:§>q§ = null;
         if(this.§-!B§[param1])
         {
            _loc2_ = this.§-!B§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §6K§(param1:String) : int
      {
         var _loc2_:§>q§ = null;
         if(this.§[c§[param1])
         {
            _loc2_ = this.§[c§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §!!X§(param1:String) : Boolean
      {
         if(this.§"!B§(param1) > 0 || this.§6K§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §-V§(param1:String, param2:Boolean = true) : void
      {
         this.§@! §[param1] = param2;
      }
      
      public function §!j§(param1:String, param2:Boolean = true) : void
      {
         this.§#<§[param1] = param2;
      }
      
      public function §#!^§(param1:String, param2:int) : void
      {
         var _loc3_:§>q§ = new §>q§(param2);
         this.§-!B§[param1] = _loc3_;
      }
      
      public function §#!J§(param1:String, param2:int) : void
      {
         var _loc3_:§>q§ = new §>q§(param2);
         this.§[c§[param1] = _loc3_;
      }
      
      public function §;!X§(param1:String, param2:int = -1) : int
      {
         return §7M§.§=2§(param1,param2 != -1 ? int(param2) : int(this.§"!B§(param1)));
      }
      
      public function §"<§(param1:§1l§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%![§())
         {
            _loc2_ += this.§"!B§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1q§(param1:§1l§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%![§())
         {
            _loc2_ += this.§;!X§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!k§() : int
      {
         var _loc3_:§1l§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §7M§.§<h§())
         {
            _loc3_ = §7M§.§8!Q§(_loc2_);
            _loc4_ = this.§1q§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §;!2§(param1:§1l§) : int
      {
         return param1.§%![§().length * 3;
      }
      
      public function §,!B§(param1:§1l§) : int
      {
         return param1.§%![§().length;
      }
      
      public function §&1§(param1:§1l§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%![§())
         {
            if(this.§6K§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`2§() : Dictionary
      {
         return this.§@! §;
      }
      
      public function get §7!?§() : Boolean
      {
         return this.§]w§;
      }
      
      public function set §7!?§(param1:Boolean) : void
      {
         this.§]w§ = param1;
      }
      
      public function get §0p§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §[w§() : String
      {
         return this.§2!9§;
      }
      
      public function §`l§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§1l§ = null;
         var _loc7_:§1l§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §7M§.§+!E§)
         {
            return true;
         }
         if(this.§"!B§(param1) > 0)
         {
            return true;
         }
         if(this.§6K§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §7M§.§`N§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §7M§.§`N§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§"!B§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§6K§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §5]§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §,!Q§(param1:String) : void
      {
      }
      
      public function §+F§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §0'§() : Dictionary
      {
         return this.§@! §;
      }
   }
}
