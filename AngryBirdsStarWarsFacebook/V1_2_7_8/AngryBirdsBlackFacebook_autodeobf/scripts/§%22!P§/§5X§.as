package §"!P§
{
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §7A§.§<1§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §5X§ extends EventDispatcher
   {
      
      protected static const §!"_§:Number = 1000;
      
      protected static const §1"y§:Number = 60;
       
      
      protected var §4"G§:Dictionary;
      
      protected var §,!j§:Dictionary;
      
      protected var §^"G§:Dictionary;
      
      protected var §9"u§:Dictionary;
      
      protected var §]s§:Boolean = false;
      
      protected var §=g§:String;
      
      protected var §?"]§:String;
      
      protected var § !p§:§7!m§;
      
      protected var §"#!§:Timer;
      
      public function §5X§(param1:String, param2:§7!m§)
      {
         super();
         this.§?"]§ = param1;
         this.§ !p§ = param2;
         this.§4"G§ = new Dictionary();
         this.§,!j§ = new Dictionary();
         this.§^"G§ = new Dictionary();
         this.§9"u§ = new Dictionary();
         this.§]s§ = false;
      }
      
      private function §'"&§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§5M§));
         this.§=g§ = null;
      }
      
      public function §%"a§(param1:String) : Boolean
      {
         if(this.§=g§ == param1)
         {
            return true;
         }
         if(this.§"#!§ && this.§"#!§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §5D§() : String
      {
         var _loc1_:Number = §1"y§ - this.§"#!§.currentCount;
         var _loc2_:int = _loc1_ / §1"y§;
         var _loc3_:int = _loc1_ % §1"y§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§<1§ = null;
         if(this.§4"G§[param1])
         {
            _loc2_ = this.§4"G§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§<1§ = null;
         if(this.§,!j§[param1])
         {
            _loc2_ = this.§,!j§[param1];
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
      
      public function §#!R§(param1:String, param2:Boolean = true) : void
      {
         this.§^"G§[param1] = param2;
      }
      
      public function §5!E§(param1:String, param2:Boolean = true) : void
      {
         this.§^"G§[param1] = param2;
      }
      
      public function §&'§(param1:String, param2:int) : void
      {
         var _loc3_:§<1§ = new §<1§(param2);
         this.§4"G§[param1] = _loc3_;
      }
      
      public function §?"I§(param1:String, param2:int) : void
      {
         var _loc3_:§<1§ = new §<1§(param2);
         this.§,!j§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.§ !p§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §["§(param1:§ "0§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§["'§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §-""§(param1:§ "0§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§["'§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §;!Q§() : int
      {
         var _loc3_:§ "0§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !p§.getEpisodeCount())
         {
            _loc3_ = this.§ !p§.getEpisode(_loc2_);
            _loc4_ = this.§-""§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §?"W§(param1:§ "0§) : int
      {
         return param1.§["'§().length * 3;
      }
      
      public function §@!0§(param1:§ "0§) : int
      {
         return param1.§["'§().length;
      }
      
      public function §=!T§(param1:§ "0§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§["'§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §]!O§() : Dictionary
      {
         return this.§^"G§;
      }
      
      public function get §-#&§() : Dictionary
      {
         return this.§^"G§;
      }
      
      public function get §0!w§() : Boolean
      {
         return this.§]s§;
      }
      
      public function set §0!w§(param1:Boolean) : void
      {
         this.§]s§ = param1;
      }
      
      public function get § !m§() : Timer
      {
         return this.§"#!§;
      }
      
      public function get §[#6§() : String
      {
         return this.§=g§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §7!m§.§;"E§)
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
         var _loc3_:§ "0§ = this.§ !p§.getEpisodeForLevel(param1);
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
