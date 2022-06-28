package §^!W§
{
   import §3!G§.§<!#§;
   import §3!G§.LevelManager;
   import §]+§.§=E§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §'Q§ extends EventDispatcher
   {
      
      protected static const §-&§:Number = 1000;
      
      protected static const §=!+§:Number = 60;
       
      
      protected var §3!Q§:Dictionary;
      
      protected var §#![§:Dictionary;
      
      protected var §"G§:Dictionary;
      
      protected var §'!c§:Dictionary;
      
      protected var §1!?§:Boolean;
      
      protected var §7n§:String;
      
      protected var § j§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §'Q§(param1:String)
      {
         super();
         this.§ j§ = param1;
         this.§3!Q§ = new Dictionary();
         this.§#![§ = new Dictionary();
         this.§"G§ = new Dictionary();
         this.§'!c§ = new Dictionary();
         this.§1!?§ = false;
      }
      
      private function §=!§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-[§));
         this.§7n§ = null;
      }
      
      public function §0b§(param1:String) : Boolean
      {
         if(this.§7n§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §>B§() : String
      {
         var _loc1_:Number = §=!+§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §=!+§;
         var _loc3_:int = _loc1_ % §=!+§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§=E§ = null;
         if(this.§3!Q§[param1])
         {
            _loc2_ = this.§3!Q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§=E§ = null;
         if(this.§#![§[param1])
         {
            _loc2_ = this.§#![§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §9!,§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §,!j§(param1:String, param2:Boolean = true) : void
      {
         this.§"G§[param1] = param2;
      }
      
      public function §6!E§(param1:String, param2:Boolean = true) : void
      {
         this.§'!c§[param1] = param2;
      }
      
      public function §!!O§(param1:String, param2:int) : void
      {
         var _loc3_:§=E§ = new §=E§(param2);
         this.§3!Q§[param1] = _loc3_;
      }
      
      public function §-!N§(param1:String, param2:int) : void
      {
         var _loc3_:§=E§ = new §=E§(param2);
         this.§#![§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§1z§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §@!9§(param1:§<!#§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9f§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §^P§(param1:§<!#§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9f§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§<!#§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§?p§())
         {
            _loc3_ = LevelManager.§'J§(_loc2_);
            _loc4_ = this.§^P§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §&!^§(param1:§<!#§) : int
      {
         return param1.§9f§().length * 3;
      }
      
      public function §'!8§(param1:§<!#§) : int
      {
         return param1.§9f§().length;
      }
      
      public function §0,§(param1:§<!#§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9f§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §8!r§() : Dictionary
      {
         return this.§"G§;
      }
      
      public function get §'!>§() : Boolean
      {
         return this.§1!?§;
      }
      
      public function set §'!>§(param1:Boolean) : void
      {
         this.§1!?§ = param1;
      }
      
      public function get §"]§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §?!'§() : String
      {
         return this.§7n§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§<!#§ = null;
         var _loc7_:§<!#§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§3!§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = LevelManager.§1H§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§1H§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.getScoreForLevel(_loc3_) > 0)
               {
                  return true;
               }
               if(this.getEagleScoreForLevel(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §=!N§() : Dictionary
      {
         return this.§"G§;
      }
   }
}
