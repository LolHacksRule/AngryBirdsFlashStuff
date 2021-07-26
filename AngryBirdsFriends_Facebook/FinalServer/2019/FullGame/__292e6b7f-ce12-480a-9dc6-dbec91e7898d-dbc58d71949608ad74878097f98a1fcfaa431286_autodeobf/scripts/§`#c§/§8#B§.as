package §`#c§
{
   import §#"4§.§'#B§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §8#B§ extends EventDispatcher
   {
      
      protected static const §#!G§:Number = 1000;
      
      protected static const §`!'§:Number = 60;
       
      
      protected var §<!V§:Dictionary;
      
      protected var §="D§:Dictionary;
      
      protected var §[!"§:Dictionary;
      
      protected var §&!p§:Dictionary;
      
      protected var §<"<§:Boolean = false;
      
      protected var §8!n§:String;
      
      protected var §!#s§:String;
      
      protected var mLevelManager:§]#q§;
      
      protected var §#$$§:Timer;
      
      public function §8#B§(param1:String, param2:§]#q§)
      {
         super();
         this.§!#s§ = param1;
         this.mLevelManager = param2;
         this.§<!V§ = new Dictionary();
         this.§="D§ = new Dictionary();
         this.§[!"§ = new Dictionary();
         this.§&!p§ = new Dictionary();
         this.§<"<§ = false;
      }
      
      private function §?$4§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§+]§));
         this.§8!n§ = null;
      }
      
      public function §1#9§(param1:String) : Boolean
      {
         if(this.§8!n§ == param1)
         {
            return true;
         }
         if(this.§#$$§ && this.§#$$§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §!"J§() : String
      {
         var _loc1_:Number = §`!'§ - this.§#$$§.currentCount;
         var _loc2_:int = _loc1_ / §`!'§;
         var _loc3_:int = _loc1_ % §`!'§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§'#B§ = null;
         if(this.§<!V§[param1])
         {
            _loc2_ = this.§<!V§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§'#B§ = null;
         if(this.§="D§[param1])
         {
            _loc2_ = this.§="D§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §&#2§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §=W§(param1:String, param2:Boolean = true) : void
      {
         this.§[!"§[param1] = param2;
      }
      
      public function §-!8§(param1:String, param2:Boolean = true) : void
      {
         this.§[!"§[param1] = param2;
      }
      
      public function §[1§(param1:String, param2:int) : void
      {
         var _loc3_:§'#B§ = new §'#B§(param2);
         this.§<!V§[param1] = _loc3_;
      }
      
      public function § d§(param1:String, param2:int) : void
      {
         var _loc3_:§'#B§ = new §'#B§(param2);
         this.§="D§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §8"I§(param1:§3!,§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §`!t§(param1:§3!,§) : int
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
         var _loc3_:§3!,§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§`!t§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §<!S§(param1:§3!,§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function §=#[§(param1:§3!,§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §#!r§(param1:§3!,§) : int
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
      
      public function get §-#'§() : Dictionary
      {
         return this.§[!"§;
      }
      
      public function get §&1§() : Dictionary
      {
         return this.§[!"§;
      }
      
      public function get §2]§() : Boolean
      {
         return this.§<"<§;
      }
      
      public function set §2]§(param1:Boolean) : void
      {
         this.§<"<§ = param1;
      }
      
      public function get §]$2§() : Timer
      {
         return this.§#$$§;
      }
      
      public function get §%V§() : String
      {
         return this.§8!n§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §]#q§.§47§)
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
         var _loc3_:§3!,§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§]! §(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§1!d§(_loc4_ - 1);
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
