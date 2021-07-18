package § "4§
{
   import §1!i§.§;7§;
   import §?m§.§+"2§;
   import §?m§.§3![§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §8!R§ extends EventDispatcher
   {
      
      protected static const §>w§:Number = 1000;
      
      protected static const §=k§:Number = 60;
       
      
      protected var §,`§:Dictionary;
      
      protected var §-!T§:Dictionary;
      
      protected var §7#_§:Dictionary;
      
      protected var §&#^§:Dictionary;
      
      protected var §<e§:Boolean = false;
      
      protected var §1"N§:String;
      
      protected var §@#L§:String;
      
      protected var §+!b§:§+"2§;
      
      protected var §,'§:Timer;
      
      public function §8!R§(param1:String, param2:§+"2§)
      {
         super();
         this.§@#L§ = param1;
         this.§+!b§ = param2;
         this.§,`§ = new Dictionary();
         this.§-!T§ = new Dictionary();
         this.§7#_§ = new Dictionary();
         this.§&#^§ = new Dictionary();
         this.§<e§ = false;
      }
      
      private function §3"P§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§>!w§));
         this.§1"N§ = null;
      }
      
      public function §=!d§(param1:String) : Boolean
      {
         if(this.§1"N§ == param1)
         {
            return true;
         }
         if(this.§,'§ && this.§,'§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §;#N§() : String
      {
         var _loc1_:Number = §=k§ - this.§,'§.currentCount;
         var _loc2_:int = _loc1_ / §=k§;
         var _loc3_:int = _loc1_ % §=k§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§;7§ = null;
         if(this.§,`§[param1])
         {
            _loc2_ = this.§,`§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§;7§ = null;
         if(this.§-!T§[param1])
         {
            _loc2_ = this.§-!T§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §1!H§(param1:String, param2:Boolean = true) : void
      {
         this.§7#_§[param1] = param2;
      }
      
      public function §8"W§(param1:String, param2:Boolean = true) : void
      {
         this.§7#_§[param1] = param2;
      }
      
      public function §9!R§(param1:String, param2:int) : void
      {
         var _loc3_:§;7§ = new §;7§(param2);
         this.§,`§[param1] = _loc3_;
      }
      
      public function §]"D§(param1:String, param2:int) : void
      {
         var _loc3_:§;7§ = new §;7§(param2);
         this.§-!T§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.§+!b§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §]#B§(param1:§3![§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0!_§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'e§(param1:§3![§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0!_§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@!L§() : int
      {
         var _loc3_:§3![§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!b§.getEpisodeCount())
         {
            _loc3_ = this.§+!b§.getEpisode(_loc2_);
            _loc4_ = this.§'e§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §3h§(param1:§3![§) : int
      {
         return param1.§0!_§().length * 3;
      }
      
      public function §[#`§(param1:§3![§) : int
      {
         return param1.§0!_§().length;
      }
      
      public function §`"q§(param1:§3![§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0!_§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §4l§() : Dictionary
      {
         return this.§7#_§;
      }
      
      public function get §7!"§() : Dictionary
      {
         return this.§7#_§;
      }
      
      public function get §0#9§() : Boolean
      {
         return this.§<e§;
      }
      
      public function set §0#9§(param1:Boolean) : void
      {
         this.§<e§ = param1;
      }
      
      public function get §[#C§() : Timer
      {
         return this.§,'§;
      }
      
      public function get §+!+§() : String
      {
         return this.§1"N§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §+"2§.§7!k§)
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
         var _loc3_:§3![§ = this.§+!b§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.getLevelIndex(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.getLevelName(_loc4_ - 1);
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
   }
}
