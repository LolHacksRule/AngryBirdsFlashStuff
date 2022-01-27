package §,i§
{
   import §,J§.§04§;
   import §,J§.§7!A§;
   import §4!9§.§5O§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §6!B§ extends EventDispatcher
   {
      
      protected static const §3v§:Number = 1000;
      
      protected static const §4T§:Number = 60;
       
      
      protected var §5U§:Dictionary;
      
      protected var §4m§:Dictionary;
      
      protected var §4!B§:Dictionary;
      
      protected var §`!>§:Dictionary;
      
      protected var §@!9§:Boolean;
      
      protected var §+!C§:String;
      
      protected var §6!K§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §6!B§(param1:String)
      {
         super();
         this.§6!K§ = param1;
         this.§5U§ = new Dictionary();
         this.§4m§ = new Dictionary();
         this.§4!B§ = new Dictionary();
         this.§`!>§ = new Dictionary();
         this.§@!9§ = false;
      }
      
      private function §>!,§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§9!Z§));
         this.§+!C§ = null;
      }
      
      public function §+d§(param1:String) : Boolean
      {
         if(this.§+!C§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4!?§() : String
      {
         var _loc1_:Number = §4T§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §4T§;
         var _loc3_:int = _loc1_ % §4T§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §3!Q§(param1:String) : int
      {
         var _loc2_:§5O§ = null;
         if(this.§5U§[param1])
         {
            _loc2_ = this.§5U§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=f§(param1:String) : int
      {
         var _loc2_:§5O§ = null;
         if(this.§4m§[param1])
         {
            _loc2_ = this.§4m§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%R§(param1:String) : Boolean
      {
         if(this.§3!Q§(param1) > 0 || this.§=f§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function § !4§(param1:String, param2:Boolean = true) : void
      {
         this.§4!B§[param1] = param2;
      }
      
      public function § -§(param1:String, param2:Boolean = true) : void
      {
         this.§`!>§[param1] = param2;
      }
      
      public function §6!R§(param1:String, param2:int) : void
      {
         var _loc3_:§5O§ = new §5O§(param2);
         this.§5U§[param1] = _loc3_;
      }
      
      public function §<V§(param1:String, param2:int) : void
      {
         var _loc3_:§5O§ = new §5O§(param2);
         this.§4m§[param1] = _loc3_;
      }
      
      public function §%9§(param1:String, param2:int = -1) : int
      {
         return §7!A§.§2!!§(param1,param2 != -1 ? int(param2) : int(this.§3!Q§(param1)));
      }
      
      public function §,1§(param1:§04§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+a§())
         {
            _loc2_ += this.§3!Q§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!z§(param1:§04§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+a§())
         {
            _loc2_ += this.§%9§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §&!O§() : int
      {
         var _loc3_:§04§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §7!A§.§ try§())
         {
            _loc3_ = §7!A§.§>&§(_loc2_);
            _loc4_ = this.§!z§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §6!4§(param1:§04§) : int
      {
         return param1.§+a§().length * 3;
      }
      
      public function § !&§(param1:§04§) : int
      {
         return param1.§+a§().length;
      }
      
      public function §>#§(param1:§04§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+a§())
         {
            if(this.§=f§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §6!D§() : Dictionary
      {
         return this.§4!B§;
      }
      
      public function get §9e§() : Boolean
      {
         return this.§@!9§;
      }
      
      public function set §9e§(param1:Boolean) : void
      {
         this.§@!9§ = param1;
      }
      
      public function get §>G§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §1!1§() : String
      {
         return this.§+!C§;
      }
      
      public function §^!$§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§04§ = null;
         var _loc7_:§04§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §7!A§.§9#§)
         {
            return true;
         }
         if(this.§3!Q§(param1) > 0)
         {
            return true;
         }
         if(this.§=f§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §7!A§.§9<§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §7!A§.§9<§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§3!Q§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§=f§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §^J§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §3?§() : Dictionary
      {
         return this.§4!B§;
      }
   }
}
