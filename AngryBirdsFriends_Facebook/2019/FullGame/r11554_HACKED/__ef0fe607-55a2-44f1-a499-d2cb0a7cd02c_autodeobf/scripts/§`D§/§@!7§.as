package §`D§
{
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §+#B§.§["Q§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §@!7§ extends EventDispatcher
   {
      
      protected static const §^"L§:Number = 1000;
      
      protected static const §+W§:Number = 60;
       
      
      protected var §8#a§:Dictionary;
      
      protected var §?!§:Dictionary;
      
      protected var §1=§:Dictionary;
      
      protected var §@!X§:Dictionary;
      
      protected var §=!X§:Boolean = false;
      
      protected var §'#;§:String;
      
      protected var §@"3§:String;
      
      protected var mLevelManager:§'![§;
      
      protected var §-#T§:Timer;
      
      public function §@!7§(param1:String, param2:§'![§)
      {
         super();
         this.§@"3§ = param1;
         this.mLevelManager = param2;
         this.§8#a§ = new Dictionary();
         this.§?!§ = new Dictionary();
         this.§1=§ = new Dictionary();
         this.§@!X§ = new Dictionary();
         this.§=!X§ = false;
      }
      
      private function §&$9§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§5"q§));
         this.§'#;§ = null;
      }
      
      public function §2"+§(param1:String) : Boolean
      {
         if(this.§'#;§ == param1)
         {
            return true;
         }
         if(this.§-#T§ && this.§-#T§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §[""§() : String
      {
         var _loc1_:Number = §+W§ - this.§-#T§.currentCount;
         var _loc2_:int = _loc1_ / §+W§;
         var _loc3_:int = _loc1_ % §+W§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§["Q§ = null;
         if(this.§8#a§[param1])
         {
            _loc2_ = this.§8#a§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§["Q§ = null;
         if(this.§?!§[param1])
         {
            _loc2_ = this.§?!§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §""3§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §`#M§(param1:String, param2:Boolean = true) : void
      {
         this.§1=§[param1] = param2;
      }
      
      public function §4G§(param1:String, param2:Boolean = true) : void
      {
         this.§1=§[param1] = param2;
      }
      
      public function §<$#§(param1:String, param2:int) : void
      {
         var _loc3_:§["Q§ = new §["Q§(param2);
         this.§8#a§[param1] = _loc3_;
      }
      
      public function §5!+§(param1:String, param2:int) : void
      {
         var _loc3_:§["Q§ = new §["Q§(param2);
         this.§?!§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §-"e§(param1:§[#5§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=! §(param1:§[#5§) : int
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
         var _loc3_:§[#5§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§=! §(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §8!`§(param1:§[#5§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function §]-§(param1:§[#5§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §8#C§(param1:§[#5§) : int
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
      
      public function get §&#L§() : Dictionary
      {
         return this.§1=§;
      }
      
      public function get §?L§() : Dictionary
      {
         return this.§1=§;
      }
      
      public function get §6x§() : Boolean
      {
         return this.§=!X§;
      }
      
      public function set §6x§(param1:Boolean) : void
      {
         this.§=!X§ = param1;
      }
      
      public function get §["7§() : Timer
      {
         return this.§-#T§;
      }
      
      public function get §#$7§() : String
      {
         return this.§'#;§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §'![§.§%!Y§)
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
         var _loc3_:§[#5§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§!#d§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§7$"§(_loc4_ - 1);
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
