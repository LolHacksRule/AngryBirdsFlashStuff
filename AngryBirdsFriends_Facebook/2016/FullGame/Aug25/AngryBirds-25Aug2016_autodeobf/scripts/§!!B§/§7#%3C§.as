package §!!B§
{
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §>!#§.§>p§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §7#<§ extends EventDispatcher
   {
      
      protected static const §&!Q§:Number = 1000;
      
      protected static const §""q§:Number = 60;
       
      
      protected var §'"§:Dictionary;
      
      protected var §0"M§:Dictionary;
      
      protected var §"!w§:Dictionary;
      
      protected var §]!?§:Dictionary;
      
      protected var §[7§:Boolean = false;
      
      protected var §[!C§:String;
      
      protected var §3"=§:String;
      
      protected var mLevelManager:§#!?§;
      
      protected var §2#G§:Timer;
      
      public function §7#<§(param1:String, param2:§#!?§)
      {
         super();
         this.§3"=§ = param1;
         this.mLevelManager = param2;
         this.§'"§ = new Dictionary();
         this.§0"M§ = new Dictionary();
         this.§"!w§ = new Dictionary();
         this.§]!?§ = new Dictionary();
         this.§[7§ = false;
      }
      
      private function § [§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§>!+§));
         this.§[!C§ = null;
      }
      
      public function §,!?§(param1:String) : Boolean
      {
         if(this.§[!C§ == param1)
         {
            return true;
         }
         if(this.§2#G§ && this.§2#G§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §3"7§() : String
      {
         var _loc1_:Number = §""q§ - this.§2#G§.currentCount;
         var _loc2_:int = _loc1_ / §""q§;
         var _loc3_:int = _loc1_ % §""q§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§>p§ = null;
         if(this.§'"§[param1])
         {
            _loc2_ = this.§'"§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§>p§ = null;
         if(this.§0"M§[param1])
         {
            _loc2_ = this.§0"M§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4! §(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §?!p§(param1:String, param2:Boolean = true) : void
      {
         this.§"!w§[param1] = param2;
      }
      
      public function §=8§(param1:String, param2:Boolean = true) : void
      {
         this.§"!w§[param1] = param2;
      }
      
      public function §&#f§(param1:String, param2:int) : void
      {
         var _loc3_:§>p§ = new §>p§(param2);
         this.§'"§[param1] = _loc3_;
      }
      
      public function §1$,§(param1:String, param2:int) : void
      {
         var _loc3_:§>p§ = new §>p§(param2);
         this.§0"M§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §!"P§(param1:§=!Z§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1#N§(param1:§=!Z§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§=!Z§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§1#N§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §5#A§(param1:§=!Z§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function § !m§(param1:§=!Z§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §;]§(param1:§=!Z§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §6P§() : Dictionary
      {
         return this.§"!w§;
      }
      
      public function get §+$,§() : Dictionary
      {
         return this.§"!w§;
      }
      
      public function get §^"8§() : Boolean
      {
         return this.§[7§;
      }
      
      public function set §^"8§(param1:Boolean) : void
      {
         this.§[7§ = param1;
      }
      
      public function get §[T§() : Timer
      {
         return this.§2#G§;
      }
      
      public function get §,"V§() : String
      {
         return this.§[!C§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §#!?§.§%$7§)
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
         var _loc3_:§=!Z§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§ use§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§%#7§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.getEagleScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
   }
}
