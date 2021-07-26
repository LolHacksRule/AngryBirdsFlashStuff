package §^"H§
{
   import §&!_§.§@"E§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]!l§ extends EventDispatcher
   {
      
      protected static const §^x§:Number = 1000;
      
      protected static const §;!z§:Number = 60;
       
      
      protected var §#![§:Dictionary;
      
      protected var §3L§:Dictionary;
      
      protected var §6#;§:Dictionary;
      
      protected var §`#S§:Dictionary;
      
      protected var §`!m§:Boolean = false;
      
      protected var § "W§:String;
      
      protected var §0#`§:String;
      
      protected var mLevelManager:§;"n§;
      
      protected var §6#w§:Timer;
      
      public function §]!l§(param1:String, param2:§;"n§)
      {
         super();
         this.§0#`§ = param1;
         this.mLevelManager = param2;
         this.§#![§ = new Dictionary();
         this.§3L§ = new Dictionary();
         this.§6#;§ = new Dictionary();
         this.§`#S§ = new Dictionary();
         this.§`!m§ = false;
      }
      
      private function §91§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§6#%§));
         this.§ "W§ = null;
      }
      
      public function §^#9§(param1:String) : Boolean
      {
         if(this.§ "W§ == param1)
         {
            return true;
         }
         if(this.§6#w§ && this.§6#w§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §@"N§() : String
      {
         var _loc1_:Number = §;!z§ - this.§6#w§.currentCount;
         var _loc2_:int = _loc1_ / §;!z§;
         var _loc3_:int = _loc1_ % §;!z§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§@"E§ = null;
         if(this.§#![§[param1])
         {
            _loc2_ = this.§#![§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§@"E§ = null;
         if(this.§3L§[param1])
         {
            _loc2_ = this.§3L§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §6!b§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §`"B§(param1:String, param2:Boolean = true) : void
      {
         this.§6#;§[param1] = param2;
      }
      
      public function §#!F§(param1:String, param2:Boolean = true) : void
      {
         this.§6#;§[param1] = param2;
      }
      
      public function §?L§(param1:String, param2:int) : void
      {
         var _loc3_:§@"E§ = new §@"E§(param2);
         this.§#![§[param1] = _loc3_;
      }
      
      public function §2#+§(param1:String, param2:int) : void
      {
         var _loc3_:§@"E§ = new §@"E§(param2);
         this.§3L§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return this.mLevelManager.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §-5§(param1:§ T§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.getLevelNames())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function § $3§(param1:§ T§) : int
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
         var _loc3_:§ T§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.mLevelManager.getEpisodeCount())
         {
            _loc3_ = this.mLevelManager.getEpisode(_loc2_);
            _loc4_ = this.§ $3§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §["B§(param1:§ T§) : int
      {
         return param1.getLevelNames().length * 3;
      }
      
      public function §]""§(param1:§ T§) : int
      {
         return param1.getLevelNames().length;
      }
      
      public function §`c§(param1:§ T§) : int
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
      
      public function get §@d§() : Dictionary
      {
         return this.§6#;§;
      }
      
      public function get §0"`§() : Dictionary
      {
         return this.§6#;§;
      }
      
      public function get §;?§() : Boolean
      {
         return this.§`!m§;
      }
      
      public function set §;?§(param1:Boolean) : void
      {
         this.§`!m§ = param1;
      }
      
      public function get §`"#§() : Timer
      {
         return this.§6#w§;
      }
      
      public function get §2#K§() : String
      {
         return this.§ "W§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §;"n§.§34§)
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
         var _loc3_:§ T§ = this.mLevelManager.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§3!_§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§<#K§(_loc4_ - 1);
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
