package §=,§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §<a§.§9U§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §!!W§ extends EventDispatcher
   {
      
      protected static const §?d§:Number = 1000;
      
      protected static const §85§:Number = 60;
       
      
      protected var §2!v§:Dictionary;
      
      protected var §>!§:Dictionary;
      
      protected var §-`§:Dictionary;
      
      protected var §7u§:Dictionary;
      
      protected var §0"0§:Boolean;
      
      protected var §8!R§:String;
      
      protected var §+]§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §!!W§(param1:String)
      {
         super();
         this.§+]§ = param1;
         this.§2!v§ = new Dictionary();
         this.§>!§ = new Dictionary();
         this.§-`§ = new Dictionary();
         this.§7u§ = new Dictionary();
         this.§0"0§ = false;
      }
      
      private function § ">§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-2§));
         this.§8!R§ = null;
      }
      
      public function §%!S§(param1:String) : Boolean
      {
         if(this.§8!R§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §8v§() : String
      {
         var _loc1_:Number = §85§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §85§;
         var _loc3_:int = _loc1_ % §85§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§9U§ = null;
         if(this.§2!v§[param1])
         {
            _loc2_ = this.§2!v§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§9U§ = null;
         if(this.§>!§[param1])
         {
            _loc2_ = this.§>!§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%6§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §5x§(param1:String, param2:Boolean = true) : void
      {
         this.§-`§[param1] = param2;
      }
      
      public function §14§(param1:String, param2:Boolean = true) : void
      {
         this.§7u§[param1] = param2;
      }
      
      public function §["$§(param1:String, param2:int) : void
      {
         var _loc3_:§9U§ = new §9U§(param2);
         this.§2!v§[param1] = _loc3_;
      }
      
      public function §<!,§(param1:String, param2:int) : void
      {
         var _loc3_:§9U§ = new §9U§(param2);
         this.§>!§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§`!^§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §1!%§(param1:§>x§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&<§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9o§(param1:§>x§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&<§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§>x§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§@!N§())
         {
            _loc3_ = LevelManager.§;X§(_loc2_);
            _loc4_ = this.§9o§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`!g§(param1:§>x§) : int
      {
         return param1.§&<§().length * 3;
      }
      
      public function §,!b§(param1:§>x§) : int
      {
         return param1.§&<§().length;
      }
      
      public function §7L§(param1:§>x§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&<§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`r§() : Dictionary
      {
         return this.§-`§;
      }
      
      public function get §>!k§() : Boolean
      {
         return this.§0"0§;
      }
      
      public function set §>!k§(param1:Boolean) : void
      {
         this.§0"0§ = param1;
      }
      
      public function get §]F§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §]!@§() : String
      {
         return this.§8!R§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§>x§ = null;
         var _loc7_:§>x§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§%!§)
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
            if((_loc6_ = LevelManager.§^_§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§^_§(_loc4_ - 1 + "-1"))
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
      
      public function get §+"?§() : Dictionary
      {
         return this.§-`§;
      }
   }
}
