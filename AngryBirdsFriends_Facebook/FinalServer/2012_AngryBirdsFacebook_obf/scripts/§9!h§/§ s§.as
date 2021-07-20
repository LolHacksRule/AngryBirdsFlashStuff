package §9!h§
{
   import §%!'§.§-§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class § s§ extends EventDispatcher
   {
      
      protected static const §?m§:Number = 1000;
      
      protected static const §6F§:Number = 60;
       
      
      protected var §+";§:Dictionary;
      
      protected var §?!m§:Dictionary;
      
      protected var §3!F§:Dictionary;
      
      protected var §<;§:Dictionary;
      
      protected var §?!l§:Boolean;
      
      protected var §0!K§:String;
      
      protected var §0Z§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function § s§(param1:String)
      {
         super();
         this.§0Z§ = param1;
         this.§+";§ = new Dictionary();
         this.§?!m§ = new Dictionary();
         this.§3!F§ = new Dictionary();
         this.§<;§ = new Dictionary();
         this.§?!l§ = false;
      }
      
      private function §;!;§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§+!v§));
         this.§0!K§ = null;
      }
      
      public function §,H§(param1:String) : Boolean
      {
         if(this.§0!K§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §+K§() : String
      {
         var _loc1_:Number = §6F§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §6F§;
         var _loc3_:int = _loc1_ % §6F§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§-§ = null;
         if(this.§+";§[param1])
         {
            _loc2_ = this.§+";§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§-§ = null;
         if(this.§?!m§[param1])
         {
            _loc2_ = this.§?!m§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=!W§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §!"9§(param1:String, param2:Boolean = true) : void
      {
         this.§3!F§[param1] = param2;
      }
      
      public function §0g§(param1:String, param2:Boolean = true) : void
      {
         this.§<;§[param1] = param2;
      }
      
      public function §"!P§(param1:String, param2:int) : void
      {
         var _loc3_:§-§ = new §-§(param2);
         this.§+";§[param1] = _loc3_;
      }
      
      public function §""C§(param1:String, param2:int) : void
      {
         var _loc3_:§-§ = new §-§(param2);
         this.§?!m§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§-!w§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §6;§(param1:§=!-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0U§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9!C§(param1:§=!-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0U§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§=!-§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§>!3§())
         {
            _loc3_ = LevelManager.§9"&§(_loc2_);
            _loc4_ = this.§9!C§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §!5§(param1:§=!-§) : int
      {
         return param1.§0U§().length * 3;
      }
      
      public function §+"1§(param1:§=!-§) : int
      {
         return param1.§0U§().length;
      }
      
      public function §8!;§(param1:§=!-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0U§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`"4§() : Dictionary
      {
         return this.§3!F§;
      }
      
      public function get §+!x§() : Boolean
      {
         return this.§?!l§;
      }
      
      public function set §+!x§(param1:Boolean) : void
      {
         this.§?!l§ = param1;
      }
      
      public function get §!"K§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §`!m§() : String
      {
         return this.§0!K§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§=!-§ = null;
         var _loc7_:§=!-§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§!1§)
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
            if((_loc6_ = LevelManager.§0"§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§0"§(_loc4_ - 1 + "-1"))
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
      
      public function get §8"8§() : Dictionary
      {
         return this.§3!F§;
      }
   }
}
