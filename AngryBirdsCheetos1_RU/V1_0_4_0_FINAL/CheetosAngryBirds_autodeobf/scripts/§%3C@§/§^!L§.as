package §<@§
{
   import §,+§.§@!E§;
   import §39§.§-W§;
   import §39§.§6R§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §^!L§ extends EventDispatcher
   {
      
      protected static const §9]§:Number = 1000;
      
      protected static const §4_§:Number = 60;
       
      
      protected var §2!;§:Dictionary;
      
      protected var §]!?§:Dictionary;
      
      protected var §1!'§:Dictionary;
      
      protected var §]!,§:Dictionary;
      
      protected var § !Z§:Boolean;
      
      protected var §%]§:String;
      
      protected var §`c§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §^!L§(param1:String)
      {
         super();
         this.§`c§ = param1;
         this.§2!;§ = new Dictionary();
         this.§]!?§ = new Dictionary();
         this.§1!'§ = new Dictionary();
         this.§]!,§ = new Dictionary();
         this.§ !Z§ = false;
      }
      
      private function §,!§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1w§));
         this.§%]§ = null;
      }
      
      public function §<+§(param1:String) : Boolean
      {
         if(this.§%]§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §=Z§() : String
      {
         var _loc1_:Number = §4_§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §4_§;
         var _loc3_:int = _loc1_ % §4_§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §,!H§(param1:String) : int
      {
         var _loc2_:§@!E§ = null;
         if(this.§2!;§[param1])
         {
            _loc2_ = this.§2!;§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!^§(param1:String) : int
      {
         var _loc2_:§@!E§ = null;
         if(this.§]!?§[param1])
         {
            _loc2_ = this.§]!?§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%#§(param1:String) : Boolean
      {
         if(this.§,!H§(param1) > 0 || this.§8!^§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §[n§(param1:String, param2:Boolean = true) : void
      {
         this.§1!'§[param1] = param2;
      }
      
      public function § !-§(param1:String, param2:Boolean = true) : void
      {
         this.§]!,§[param1] = param2;
      }
      
      public function §each §(param1:String, param2:int) : void
      {
         var _loc3_:§@!E§ = new §@!E§(param2);
         this.§2!;§[param1] = _loc3_;
      }
      
      public function §[!!§(param1:String, param2:int) : void
      {
         var _loc3_:§@!E§ = new §@!E§(param2);
         this.§]!?§[param1] = _loc3_;
      }
      
      public function §<v§(param1:String, param2:int = -1) : int
      {
         return §-W§.§#V§(param1,param2 != -1 ? int(param2) : int(this.§,!H§(param1)));
      }
      
      public function §#!J§(param1:§6R§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ !>§())
         {
            _loc2_ += this.§,!H§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §-!V§(param1:§6R§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ !>§())
         {
            _loc2_ += this.§<v§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9g§() : int
      {
         var _loc3_:§6R§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §-W§.§84§())
         {
            _loc3_ = §-W§.§`L§(_loc2_);
            _loc4_ = this.§-!V§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §]!D§(param1:§6R§) : int
      {
         return param1.§ !>§().length * 3;
      }
      
      public function §9!^§(param1:§6R§) : int
      {
         return param1.§ !>§().length;
      }
      
      public function §3o§(param1:§6R§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ !>§())
         {
            if(this.§8!^§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`v§() : Dictionary
      {
         return this.§1!'§;
      }
      
      public function get §^!6§() : Boolean
      {
         return this.§ !Z§;
      }
      
      public function set §^!6§(param1:Boolean) : void
      {
         this.§ !Z§ = param1;
      }
      
      public function get §7P§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §2!K§() : String
      {
         return this.§%]§;
      }
      
      public function §-#§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§6R§ = null;
         var _loc7_:§6R§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §-W§.§!!F§)
         {
            return true;
         }
         if(this.§,!H§(param1) > 0)
         {
            return true;
         }
         if(this.§8!^§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §-W§.§54§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §-W§.§54§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§,!H§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§8!^§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §;L§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §9!a§(param1:String) : void
      {
      }
      
      public function § P§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §6!"§() : Dictionary
      {
         return this.§1!'§;
      }
   }
}
