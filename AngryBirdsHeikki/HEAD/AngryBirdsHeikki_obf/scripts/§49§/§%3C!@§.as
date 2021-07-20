package §49§
{
   import §7e§.§#w§;
   import §7e§.§8!-§;
   import §9!Q§.§5!!§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<!@§ extends EventDispatcher
   {
      
      protected static const §!A§:Number = 1000;
      
      protected static const §[!>§:Number = 60;
       
      
      protected var §3![§:Dictionary;
      
      protected var §1^§:Dictionary;
      
      protected var §9!Z§:Dictionary;
      
      protected var §6!H§:Dictionary;
      
      protected var §-5§:Boolean;
      
      protected var §7!f§:String;
      
      protected var §;2§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<!@§(param1:String)
      {
         super();
         this.§;2§ = param1;
         this.§3![§ = new Dictionary();
         this.§1^§ = new Dictionary();
         this.§9!Z§ = new Dictionary();
         this.§6!H§ = new Dictionary();
         this.§-5§ = false;
      }
      
      private function §=M§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§!!M§));
         this.§7!f§ = null;
      }
      
      public function §7!]§(param1:String) : Boolean
      {
         if(this.§7!f§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §;L§() : String
      {
         var _loc1_:Number = §[!>§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §[!>§;
         var _loc3_:int = _loc1_ % §[!>§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §&!,§(param1:String) : int
      {
         var _loc2_:§5!!§ = null;
         if(this.§3![§[param1])
         {
            _loc2_ = this.§3![§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §2l§(param1:String) : int
      {
         var _loc2_:§5!!§ = null;
         if(this.§1^§[param1])
         {
            _loc2_ = this.§1^§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §&V§(param1:String) : Boolean
      {
         if(this.§&!,§(param1) > 0 || this.§2l§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §&z§(param1:String, param2:Boolean = true) : void
      {
         this.§9!Z§[param1] = param2;
      }
      
      public function §2f§(param1:String, param2:Boolean = true) : void
      {
         this.§6!H§[param1] = param2;
      }
      
      public function §-!F§(param1:String, param2:int) : void
      {
         var _loc3_:§5!!§ = new §5!!§(param2);
         this.§3![§[param1] = _loc3_;
      }
      
      public function §%!T§(param1:String, param2:int) : void
      {
         var _loc3_:§5!!§ = new §5!!§(param2);
         this.§1^§[param1] = _loc3_;
      }
      
      public function §>>§(param1:String, param2:int = -1) : int
      {
         return §#w§.§2!O§(param1,param2 != -1 ? int(param2) : int(this.§&!,§(param1)));
      }
      
      public function §'!h§(param1:§8!-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§19§())
         {
            _loc2_ += this.§&!,§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0!8§(param1:§8!-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§19§())
         {
            _loc2_ += this.§>>§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §[!?§() : int
      {
         var _loc3_:§8!-§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §#w§.§7_§())
         {
            _loc3_ = §#w§.§^!0§(_loc2_);
            _loc4_ = this.§0!8§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §5!L§(param1:§8!-§) : int
      {
         return param1.§19§().length * 3;
      }
      
      public function §?x§(param1:§8!-§) : int
      {
         return param1.§19§().length;
      }
      
      public function §9!a§(param1:§8!-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§19§())
         {
            if(this.§2l§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §[l§() : Dictionary
      {
         return this.§9!Z§;
      }
      
      public function get §+X§() : Boolean
      {
         return this.§-5§;
      }
      
      public function set §+X§(param1:Boolean) : void
      {
         this.§-5§ = param1;
      }
      
      public function get §'!&§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §4x§() : String
      {
         return this.§7!f§;
      }
      
      public function §@!L§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§8!-§ = null;
         var _loc7_:§8!-§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §#w§.§8!K§)
         {
            return true;
         }
         if(this.§&!,§(param1) > 0)
         {
            return true;
         }
         if(this.§2l§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §#w§.§%!C§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §#w§.§%!C§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§&!,§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§2l§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §7w§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §2!S§() : Dictionary
      {
         return this.§9!Z§;
      }
   }
}
