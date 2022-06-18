package § 6§
{
   import §"!@§.§3!+§;
   import §"!@§.§8W§;
   import §0!F§.§8!;§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §'r§ extends EventDispatcher
   {
      
      protected static const §9!F§:Number = 1000;
      
      protected static const §'!0§:Number = 60;
       
      
      protected var §+4§:Dictionary;
      
      protected var §4!O§:Dictionary;
      
      protected var §-!<§:Dictionary;
      
      protected var §8!1§:Dictionary;
      
      protected var §,p§:Boolean;
      
      protected var §'!U§:String;
      
      protected var §7!#§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §'r§(param1:String)
      {
         super();
         this.§7!#§ = param1;
         this.§+4§ = new Dictionary();
         this.§4!O§ = new Dictionary();
         this.§-!<§ = new Dictionary();
         this.§8!1§ = new Dictionary();
         this.§,p§ = false;
      }
      
      private function §5!V§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-u§));
         this.§'!U§ = null;
      }
      
      public function § !#§(param1:String) : Boolean
      {
         if(this.§'!U§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §!-§() : String
      {
         var _loc1_:Number = §'!0§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §'!0§;
         var _loc3_:int = _loc1_ % §'!0§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §6=§(param1:String) : int
      {
         var _loc2_:§8!;§ = null;
         if(this.§+4§[param1])
         {
            _loc2_ = this.§+4§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §5n§(param1:String) : int
      {
         var _loc2_:§8!;§ = null;
         if(this.§4!O§[param1])
         {
            _loc2_ = this.§4!O§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §!?§(param1:String) : Boolean
      {
         if(this.§6=§(param1) > 0 || this.§5n§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §^!<§(param1:String, param2:Boolean = true) : void
      {
         this.§-!<§[param1] = param2;
      }
      
      public function §?!'§(param1:String, param2:Boolean = true) : void
      {
         this.§8!1§[param1] = param2;
      }
      
      public function §'w§(param1:String, param2:int) : void
      {
         var _loc3_:§8!;§ = new §8!;§(param2);
         this.§+4§[param1] = _loc3_;
      }
      
      public function §?!I§(param1:String, param2:int) : void
      {
         var _loc3_:§8!;§ = new §8!;§(param2);
         this.§4!O§[param1] = _loc3_;
      }
      
      public function §[i§(param1:String, param2:int = -1) : int
      {
         return §3!+§.§0f§(param1,param2 != -1 ? int(param2) : int(this.§6=§(param1)));
      }
      
      public function §2z§(param1:§8W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[y§())
         {
            _loc2_ += this.§6=§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §;9§(param1:§8W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[y§())
         {
            _loc2_ += this.§[i§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>B§() : int
      {
         var _loc3_:§8W§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §3!+§.§+A§())
         {
            _loc3_ = §3!+§.§ r§(_loc2_);
            _loc4_ = this.§;9§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §3[§(param1:§8W§) : int
      {
         return param1.§[y§().length * 3;
      }
      
      public function §5w§(param1:§8W§) : int
      {
         return param1.§[y§().length;
      }
      
      public function §"!U§(param1:§8W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[y§())
         {
            if(this.§5n§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §78§() : Dictionary
      {
         return this.§-!<§;
      }
      
      public function get §9l§() : Boolean
      {
         return this.§,p§;
      }
      
      public function set §9l§(param1:Boolean) : void
      {
         this.§,p§ = param1;
      }
      
      public function get §;!G§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §'"§() : String
      {
         return this.§'!U§;
      }
      
      public function §9v§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§8W§ = null;
         var _loc7_:§8W§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §3!+§.§[Z§)
         {
            return true;
         }
         if(this.§6=§(param1) > 0)
         {
            return true;
         }
         if(this.§5n§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §3!+§.§ -§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §3!+§.§ -§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§6=§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§5n§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §9!?§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §5!O§(param1:String) : void
      {
      }
      
      public function §!'§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §[!§() : Dictionary
      {
         return this.§-!<§;
      }
   }
}
