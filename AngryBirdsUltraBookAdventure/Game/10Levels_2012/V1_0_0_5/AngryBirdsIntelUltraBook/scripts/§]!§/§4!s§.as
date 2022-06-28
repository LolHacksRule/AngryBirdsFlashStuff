package §]!§
{
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §4!s§ extends EventDispatcher
   {
      
      protected static const §8I§:Number = 1000;
      
      protected static const §+!G§:Number = 60;
       
      
      protected var §0!s§:Dictionary;
      
      protected var §59§:Dictionary;
      
      protected var §9!b§:Dictionary;
      
      protected var §4B§:Dictionary;
      
      protected var §`!p§:Boolean;
      
      protected var §`!2§:String;
      
      protected var §3l§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §4!s§(param1:String)
      {
         super();
         this.§3l§ = param1;
         this.§0!s§ = new Dictionary();
         this.§59§ = new Dictionary();
         this.§9!b§ = new Dictionary();
         this.§4B§ = new Dictionary();
         this.§`!p§ = false;
      }
      
      private function §0!C§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1§));
         this.§`!2§ = null;
      }
      
      public function §]!U§(param1:String) : Boolean
      {
         if(this.§`!2§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §3p§() : String
      {
         var _loc1_:Number = §+!G§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §+!G§;
         var _loc3_:int = _loc1_ % §+!G§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§&'§ = null;
         if(this.§0!s§[param1])
         {
            _loc2_ = this.§0!s§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§&'§ = null;
         if(this.§59§[param1])
         {
            _loc2_ = this.§59§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%H§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §#_§(param1:String, param2:Boolean = true) : void
      {
         this.§9!b§[param1] = param2;
      }
      
      public function §8!7§(param1:String, param2:Boolean = true) : void
      {
         this.§4B§[param1] = param2;
      }
      
      public function §,!i§(param1:String, param2:int) : void
      {
         var _loc3_:§&'§ = new §&'§(param2);
         this.§0!s§[param1] = _loc3_;
      }
      
      public function §5U§(param1:String, param2:int) : void
      {
         var _loc3_:§&'§ = new §&'§(param2);
         this.§59§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§@!Z§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §7!>§(param1:§4n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3!"§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §&!N§(param1:§4n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3!"§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§4n§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§1K§())
         {
            _loc3_ = LevelManager.§`!-§(_loc2_);
            _loc4_ = this.§&!N§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §#O§(param1:§4n§) : int
      {
         return param1.§3!"§().length * 3;
      }
      
      public function §'!O§(param1:§4n§) : int
      {
         return param1.§3!"§().length;
      }
      
      public function §`!8§(param1:§4n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3!"§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §38§() : Dictionary
      {
         return this.§9!b§;
      }
      
      public function get §3!h§() : Boolean
      {
         return this.§`!p§;
      }
      
      public function set §3!h§(param1:Boolean) : void
      {
         this.§`!p§ = param1;
      }
      
      public function get §#J§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §^!8§() : String
      {
         return this.§`!2§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§4n§ = null;
         var _loc7_:§4n§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§3!_§)
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
            if((_loc6_ = LevelManager.§2!9§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§2!9§(_loc4_ - 1 + "-1"))
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
      
      public function get § !H§() : Dictionary
      {
         return this.§9!b§;
      }
   }
}
