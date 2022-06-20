package §`M§
{
   import §6V§.§#j§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §6W§ extends EventDispatcher
   {
      
      protected static const §%"%§:Number = 1000;
      
      protected static const §4"i§:Number = 60;
       
      
      protected var §+#,§:Dictionary;
      
      protected var §7!u§:Dictionary;
      
      protected var §1"5§:Dictionary;
      
      protected var §%$8§:Dictionary;
      
      protected var §@$4§:Boolean = false;
      
      protected var §"!o§:String;
      
      protected var §3#?§:String;
      
      protected var mLevelManager:§^#Q§;
      
      protected var §@#`§:Timer;
      
      public function §6W§(param1:String, param2:§^#Q§)
      {
         super();
         this.§3#?§ = param1;
         this.mLevelManager = param2;
         this.§+#,§ = new Dictionary();
         this.§7!u§ = new Dictionary();
         this.§1"5§ = new Dictionary();
         this.§%$8§ = new Dictionary();
         this.§@$4§ = false;
      }
      
      private function §3F§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§=!9§));
         this.§"!o§ = null;
      }
      
      public function §`!A§(param1:String) : Boolean
      {
         if(this.§"!o§ == param1)
         {
            return true;
         }
         if(this.§@#`§ && this.§@#`§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §<O§() : String
      {
         var _loc1_:Number = §4"i§ - this.§@#`§.currentCount;
         var _loc2_:int = _loc1_ / §4"i§;
         var _loc3_:int = _loc1_ % §4"i§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§#j§ = null;
         if(this.§+#,§[param1])
         {
            _loc2_ = this.§+#,§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§#j§ = null;
         if(this.§7!u§[param1])
         {
            _loc2_ = this.§7!u§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,A§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §&#z§(param1:String, param2:Boolean = true) : void
      {
         this.§1"5§[param1] = param2;
      }
      
      public function §0A§(param1:String, param2:Boolean = true) : void
      {
         this.§1"5§[param1] = param2;
      }
      
      public function §9!G§(param1:String, param2:int) : void
      {
         var _loc3_:§#j§ = new §#j§(param2);
         this.§+#,§[param1] = _loc3_;
      }
      
      public function §>!c§(param1:String, param2:int) : void
      {
         var _loc3_:§#j§ = new §#j§(param2);
         this.§7!u§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §?G§(param1:§9##§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@"V§(param1:§9##§) : int
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
         var _loc3_:§9##§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§@"V§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §%n§(param1:§9##§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function §26§(param1:§9##§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §8M§(param1:§9##§) : int
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
      
      public function get §?!Z§() : Dictionary
      {
         return this.§1"5§;
      }
      
      public function get §-"4§() : Dictionary
      {
         return this.§1"5§;
      }
      
      public function get §<"L§() : Boolean
      {
         return this.§@$4§;
      }
      
      public function set §<"L§(param1:Boolean) : void
      {
         this.§@$4§ = param1;
      }
      
      public function get §3$3§() : Timer
      {
         return this.§@#`§;
      }
      
      public function get §`U§() : String
      {
         return this.§"!o§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §^#Q§.§ $>§)
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
         var _loc3_:§9##§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§"">§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§>K§(_loc4_ - 1);
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
