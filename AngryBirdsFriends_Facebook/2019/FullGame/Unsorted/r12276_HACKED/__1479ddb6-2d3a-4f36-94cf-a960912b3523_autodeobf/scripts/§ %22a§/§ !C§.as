package § "a§
{
   import §2E§.§[S§;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class § !C§ extends EventDispatcher
   {
      
      protected static const §;#j§:Number = 1000;
      
      protected static const §7!0§:Number = 60;
       
      
      protected var §6"#§:Dictionary;
      
      protected var §'!,§:Dictionary;
      
      protected var §?!j§:Dictionary;
      
      protected var §=<§:Dictionary;
      
      protected var §]$$§:Boolean = false;
      
      protected var §]$8§:String;
      
      protected var §1$$§:String;
      
      protected var mLevelManager:§4#?§;
      
      protected var § get§:Timer;
      
      public function § !C§(param1:String, param2:§4#?§)
      {
         super();
         this.§1$$§ = param1;
         this.mLevelManager = param2;
         this.§6"#§ = new Dictionary();
         this.§'!,§ = new Dictionary();
         this.§?!j§ = new Dictionary();
         this.§=<§ = new Dictionary();
         this.§]$$§ = false;
      }
      
      private function §7!=§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§8#c§));
         this.§]$8§ = null;
      }
      
      public function §&!T§(param1:String) : Boolean
      {
         if(this.§]$8§ == param1)
         {
            return true;
         }
         if(this.§ get§ && this.§ get§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §%$=§() : String
      {
         var _loc1_:Number = §7!0§ - this.§ get§.currentCount;
         var _loc2_:int = _loc1_ / §7!0§;
         var _loc3_:int = _loc1_ % §7!0§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§[S§ = null;
         if(this.§6"#§[param1])
         {
            _loc2_ = this.§6"#§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§[S§ = null;
         if(this.§'!,§[param1])
         {
            _loc2_ = this.§'!,§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §@"z§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §7P§(param1:String, param2:Boolean = true) : void
      {
         this.§?!j§[param1] = param2;
      }
      
      public function §&!-§(param1:String, param2:Boolean = true) : void
      {
         this.§?!j§[param1] = param2;
      }
      
      public function §?g§(param1:String, param2:int) : void
      {
         var _loc3_:§[S§ = new §[S§(param2);
         this.§6"#§[param1] = _loc3_;
      }
      
      public function §5"P§(param1:String, param2:int) : void
      {
         var _loc3_:§[S§ = new §[S§(param2);
         this.§'!,§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §6"s§(param1:§79§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §2#2§(param1:§79§) : int
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
         var _loc3_:§79§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§2#2§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §@r§(param1:§79§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function §2$4§(param1:§79§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §72§(param1:§79§) : int
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
      
      public function get §+O§() : Dictionary
      {
         return this.§?!j§;
      }
      
      public function get §-!h§() : Dictionary
      {
         return this.§?!j§;
      }
      
      public function get §<!0§() : Boolean
      {
         return this.§]$$§;
      }
      
      public function set §<!0§(param1:Boolean) : void
      {
         this.§]$$§ = param1;
      }
      
      public function get §#"[§() : Timer
      {
         return this.§ get§;
      }
      
      public function get §@"P§() : String
      {
         return this.§]$8§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §4#?§.§8!5§)
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
         var _loc3_:§79§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§9#D§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§=#f§(_loc4_ - 1);
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
