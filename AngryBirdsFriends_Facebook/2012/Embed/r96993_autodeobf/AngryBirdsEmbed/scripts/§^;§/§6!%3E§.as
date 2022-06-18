package §^;§
{
   import §-!C§.§#!G§;
   import §-!C§.§=W§;
   import §4!'§.§#,§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §6!>§ extends EventDispatcher
   {
      
      protected static const §9A§:Number = 1000;
      
      protected static const §],§:Number = 60;
       
      
      protected var §9y§:Dictionary;
      
      protected var §=v§:Dictionary;
      
      protected var §65§:Dictionary;
      
      protected var §>I§:Dictionary;
      
      protected var §'1§:Boolean;
      
      protected var §,A§:String;
      
      protected var §7!+§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §6!>§(param1:String)
      {
         super();
         this.§7!+§ = param1;
         this.§9y§ = new Dictionary();
         this.§=v§ = new Dictionary();
         this.§65§ = new Dictionary();
         this.§>I§ = new Dictionary();
         this.§'1§ = false;
      }
      
      private function §0d§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§^!<§));
         this.§,A§ = null;
      }
      
      public function §;'§(param1:String) : Boolean
      {
         if(this.§,A§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §^x§() : String
      {
         var _loc1_:Number = §],§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §],§;
         var _loc3_:int = _loc1_ % §],§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §%D§(param1:String) : int
      {
         var _loc2_:§#,§ = null;
         if(this.§9y§[param1])
         {
            _loc2_ = this.§9y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4f§(param1:String) : int
      {
         var _loc2_:§#,§ = null;
         if(this.§=v§[param1])
         {
            _loc2_ = this.§=v§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§%D§(param1) > 0 || this.§4f§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §=U§(param1:String, param2:Boolean = true) : void
      {
         this.§65§[param1] = param2;
      }
      
      public function §1§(param1:String, param2:Boolean = true) : void
      {
         this.§>I§[param1] = param2;
      }
      
      public function §&J§(param1:String, param2:int) : void
      {
         var _loc3_:§#,§ = new §#,§(param2);
         this.§9y§[param1] = _loc3_;
      }
      
      public function §"s§(param1:String, param2:int) : void
      {
         var _loc3_:§#,§ = new §#,§(param2);
         this.§=v§[param1] = _loc3_;
      }
      
      public function §1W§(param1:String, param2:int = -1) : int
      {
         return §#!G§.§!%§(param1,param2 != -1 ? int(param2) : int(this.§%D§(param1)));
      }
      
      public function §7=§(param1:§=W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"z§())
         {
            _loc2_ += this.§%D§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7X§(param1:§=W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"z§())
         {
            _loc2_ += this.§1W§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §<d§() : int
      {
         var _loc3_:§=W§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §#!G§.§^!?§())
         {
            _loc3_ = §#!G§.§^<§(_loc2_);
            _loc4_ = this.§7X§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function § 7§(param1:§=W§) : int
      {
         return param1.§"z§().length * 3;
      }
      
      public function §8=§(param1:§=W§) : int
      {
         return param1.§"z§().length;
      }
      
      public function §96§(param1:§=W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"z§())
         {
            if(this.§4f§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §?p§() : Dictionary
      {
         return this.§65§;
      }
      
      public function get §2!=§() : Boolean
      {
         return this.§'1§;
      }
      
      public function set §2!=§(param1:Boolean) : void
      {
         this.§'1§ = param1;
      }
      
      public function get §<!2§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §3i§() : String
      {
         return this.§,A§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§=W§ = null;
         var _loc7_:§=W§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §#!G§.§#%§)
         {
            return true;
         }
         if(this.§%D§(param1) > 0)
         {
            return true;
         }
         if(this.§4f§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §#!G§.§6P§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §#!G§.§6P§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§%D§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§4f§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function § t§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §9$§(param1:String) : void
      {
      }
      
      public function §7!'§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §4H§() : Dictionary
      {
         return this.§65§;
      }
   }
}
