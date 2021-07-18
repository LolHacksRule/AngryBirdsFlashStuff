package §4D§
{
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §"H§ extends EventDispatcher
   {
      
      protected static const §=!0§:Number = 1000;
      
      protected static const §#y§:Number = 60;
       
      
      protected var §&!Q§:Dictionary;
      
      protected var §?!C§:Dictionary;
      
      protected var §;" §:Dictionary;
      
      protected var §]!Z§:Dictionary;
      
      protected var §&!E§:Boolean;
      
      protected var §[l§:String;
      
      protected var §@"R§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §"H§(param1:String)
      {
         super();
         this.§@"R§ = param1;
         this.§&!Q§ = new Dictionary();
         this.§?!C§ = new Dictionary();
         this.§;" § = new Dictionary();
         this.§]!Z§ = new Dictionary();
         this.§&!E§ = false;
      }
      
      private function §&!g§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§[!y§));
         this.§[l§ = null;
      }
      
      public function §7q§(param1:String) : Boolean
      {
         if(this.§[l§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §7i§() : String
      {
         var _loc1_:Number = §#y§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §#y§;
         var _loc3_:int = _loc1_ % §#y§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§9!D§ = null;
         if(this.§&!Q§[param1])
         {
            _loc2_ = this.§&!Q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§9!D§ = null;
         if(this.§?!C§[param1])
         {
            _loc2_ = this.§?!C§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>!<§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §?!q§(param1:String, param2:Boolean = true) : void
      {
         this.§;" §[param1] = param2;
      }
      
      public function §2"2§(param1:String, param2:Boolean = true) : void
      {
         this.§]!Z§[param1] = param2;
      }
      
      public function §!y§(param1:String, param2:int) : void
      {
         var _loc3_:§9!D§ = new §9!D§(param2);
         this.§&!Q§[param1] = _loc3_;
      }
      
      public function §3!Z§(param1:String, param2:int) : void
      {
         var _loc3_:§9!D§ = new §9!D§(param2);
         this.§?!C§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§=S§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §0!P§(param1:§3-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-"K§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §[!a§(param1:§3-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-"K§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§3-§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§0"5§())
         {
            _loc3_ = LevelManager.§1!m§(_loc2_);
            _loc4_ = this.§[!a§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §3W§(param1:§3-§) : int
      {
         return param1.§-"K§().length * 3;
      }
      
      public function §="'§(param1:§3-§) : int
      {
         return param1.§-"K§().length;
      }
      
      public function §]L§(param1:§3-§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-"K§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §2%§() : Dictionary
      {
         return this.§;" §;
      }
      
      public function get §"-§() : Boolean
      {
         return this.§&!E§;
      }
      
      public function set §"-§(param1:Boolean) : void
      {
         this.§&!E§ = param1;
      }
      
      public function get §?b§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §@m§() : String
      {
         return this.§[l§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§3-§ = null;
         var _loc7_:§3-§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§1!c§)
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
            if((_loc6_ = LevelManager.§5!T§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§5!T§(_loc4_ - 1 + "-1"))
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
      
      public function get §"!1§() : Dictionary
      {
         return this.§;" §;
      }
   }
}
