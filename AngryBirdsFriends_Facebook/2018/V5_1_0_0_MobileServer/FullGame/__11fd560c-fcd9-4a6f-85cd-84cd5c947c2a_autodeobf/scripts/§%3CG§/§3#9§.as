package §<G§
{
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §`7§.§;e§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §3#9§ extends EventDispatcher
   {
      
      protected static const §-!z§:Number = 1000;
      
      protected static const §5!O§:Number = 60;
       
      
      protected var §1>§:Dictionary;
      
      protected var §-#G§:Dictionary;
      
      protected var §##t§:Dictionary;
      
      protected var §2"Y§:Dictionary;
      
      protected var §?!b§:Boolean = false;
      
      protected var §8!#§:String;
      
      protected var §^"j§:String;
      
      protected var mLevelManager:§8=§;
      
      protected var §5b§:Timer;
      
      public function §3#9§(param1:String, param2:§8=§)
      {
         super();
         this.§^"j§ = param1;
         this.mLevelManager = param2;
         this.§1>§ = new Dictionary();
         this.§-#G§ = new Dictionary();
         this.§##t§ = new Dictionary();
         this.§2"Y§ = new Dictionary();
         this.§?!b§ = false;
      }
      
      private function §7"M§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§4"%§));
         this.§8!#§ = null;
      }
      
      public function §[!?§(param1:String) : Boolean
      {
         if(this.§8!#§ == param1)
         {
            return true;
         }
         if(this.§5b§ && this.§5b§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §]!"§() : String
      {
         var _loc1_:Number = §5!O§ - this.§5b§.currentCount;
         var _loc2_:int = _loc1_ / §5!O§;
         var _loc3_:int = _loc1_ % §5!O§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§;e§ = null;
         if(this.§1>§[param1])
         {
            _loc2_ = this.§1>§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§;e§ = null;
         if(this.§-#G§[param1])
         {
            _loc2_ = this.§-#G§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,!§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §<!e§(param1:String, param2:Boolean = true) : void
      {
         this.§##t§[param1] = param2;
      }
      
      public function §-"^§(param1:String, param2:Boolean = true) : void
      {
         this.§##t§[param1] = param2;
      }
      
      public function §&U§(param1:String, param2:int) : void
      {
         var _loc3_:§;e§ = new §;e§(param2);
         this.§1>§[param1] = _loc3_;
      }
      
      public function §5#+§(param1:String, param2:int) : void
      {
         var _loc3_:§;e§ = new §;e§(param2);
         this.§-#G§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §2"9§(param1:§"m§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1n§(param1:§"m§) : int
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
         var _loc3_:§"m§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§1n§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §]!u§(param1:§"m§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function §&#c§(param1:§"m§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §2!1§(param1:§"m§) : int
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
      
      public function get §"Z§() : Dictionary
      {
         return this.§##t§;
      }
      
      public function get §#!6§() : Dictionary
      {
         return this.§##t§;
      }
      
      public function get §-!!§() : Boolean
      {
         return this.§?!b§;
      }
      
      public function set §-!!§(param1:Boolean) : void
      {
         this.§?!b§ = param1;
      }
      
      public function get §@#L§() : Timer
      {
         return this.§5b§;
      }
      
      public function get §8#e§() : String
      {
         return this.§8!#§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §8=§.§1#K§)
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
         var _loc3_:§"m§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§[#2§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§<!u§(_loc4_ - 1);
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
