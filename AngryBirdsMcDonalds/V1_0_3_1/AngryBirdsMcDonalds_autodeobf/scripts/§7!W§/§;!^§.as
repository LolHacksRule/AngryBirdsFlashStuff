package §7!W§
{
   import §?I§.§'e§;
   import §finally§.§8k§;
   import §finally§.§?_§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §;!^§ extends EventDispatcher
   {
      
      protected static const §;$§:Number = 1000;
      
      protected static const §,!U§:Number = 60;
       
      
      protected var §@X§:Dictionary;
      
      protected var §[!i§:Dictionary;
      
      protected var §1!_§:Dictionary;
      
      protected var §5n§:Dictionary;
      
      protected var §+q§:Boolean;
      
      protected var §9x§:String;
      
      protected var §`!=§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §;!^§(param1:String)
      {
         super();
         this.§`!=§ = param1;
         this.§@X§ = new Dictionary();
         this.§[!i§ = new Dictionary();
         this.§1!_§ = new Dictionary();
         this.§5n§ = new Dictionary();
         this.§+q§ = false;
      }
      
      private function §'!#§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§>Q§));
         this.§9x§ = null;
      }
      
      public function §1!k§(param1:String) : Boolean
      {
         if(this.§9x§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §=!Y§() : String
      {
         var _loc1_:Number = §,!U§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §,!U§;
         var _loc3_:int = _loc1_ % §,!U§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §?!M§(param1:String) : int
      {
         var _loc2_:§'e§ = null;
         if(this.§@X§[param1])
         {
            _loc2_ = this.§@X§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7w§(param1:String) : int
      {
         var _loc2_:§'e§ = null;
         if(this.§[!i§[param1])
         {
            _loc2_ = this.§[!i§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=!O§(param1:String) : Boolean
      {
         if(this.§?!M§(param1) > 0 || this.§7w§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §"c§(param1:String, param2:Boolean = true) : void
      {
         this.§1!_§[param1] = param2;
      }
      
      public function §%t§(param1:String, param2:Boolean = true) : void
      {
         this.§5n§[param1] = param2;
      }
      
      public function §4!C§(param1:String, param2:int) : void
      {
         var _loc3_:§'e§ = new §'e§(param2);
         this.§@X§[param1] = _loc3_;
      }
      
      public function §+E§(param1:String, param2:int) : void
      {
         var _loc3_:§'e§ = new §'e§(param2);
         this.§[!i§[param1] = _loc3_;
      }
      
      public function §]!$§(param1:String, param2:int = -1) : int
      {
         return §8k§.§]!<§(param1,param2 != -1 ? int(param2) : int(this.§?!M§(param1)));
      }
      
      public function §1!'§(param1:§?_§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%q§())
         {
            _loc2_ += this.§?!M§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §4m§(param1:§?_§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%q§())
         {
            _loc2_ += this.§]!$§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'!R§() : int
      {
         var _loc3_:§?_§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §8k§.§`m§())
         {
            _loc3_ = §8k§.§',§(_loc2_);
            _loc4_ = this.§4m§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §?i§(param1:§?_§) : int
      {
         return param1.§%q§().length * 3;
      }
      
      public function §4!`§(param1:§?_§) : int
      {
         return param1.§%q§().length;
      }
      
      public function §20§(param1:§?_§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%q§())
         {
            if(this.§7w§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §&!'§() : Dictionary
      {
         return this.§1!_§;
      }
      
      public function get §,L§() : Boolean
      {
         return this.§+q§;
      }
      
      public function set §,L§(param1:Boolean) : void
      {
         this.§+q§ = param1;
      }
      
      public function get §9h§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §9!>§() : String
      {
         return this.§9x§;
      }
      
      public function §7!g§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§?_§ = null;
         var _loc7_:§?_§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §8k§.§58§)
         {
            return true;
         }
         if(this.§?!M§(param1) > 0)
         {
            return true;
         }
         if(this.§7w§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §8k§.§@!T§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §8k§.§@!T§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§?!M§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§7w§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §+!]§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §?K§() : Dictionary
      {
         return this.§1!_§;
      }
   }
}
