package §?!O§
{
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §7p§.Integer;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UserProgress extends EventDispatcher
   {
      
      protected static const §4!3§:Number = 1000;
      
      protected static const §[!e§:Number = 60;
       
      
      protected var §!&§:Dictionary;
      
      protected var §&6§:Dictionary;
      
      protected var §'!b§:Dictionary;
      
      protected var § j§:Dictionary;
      
      protected var §1R§:Boolean;
      
      protected var §9!>§:String;
      
      protected var §9<§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function UserProgress(param1:String)
      {
         super();
         this.§9<§ = param1;
         this.§!&§ = new Dictionary();
         this.§&6§ = new Dictionary();
         this.§'!b§ = new Dictionary();
         this.§ j§ = new Dictionary();
         this.§1R§ = false;
      }
      
      private function §=!`§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§"c§));
         this.§9!>§ = null;
      }
      
      public function §3!d§(param1:String) : Boolean
      {
         if(this.§9!>§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §?!e§() : String
      {
         var _loc1_:Number = §[!e§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §[!e§;
         var _loc3_:int = _loc1_ % §[!e§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.§!&§[param1])
         {
            _loc2_ = this.§!&§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.§&6§[param1])
         {
            _loc2_ = this.§&6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7n§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §%!3§(param1:String, param2:Boolean = true) : void
      {
         this.§'!b§[param1] = param2;
      }
      
      public function §27§(param1:String, param2:Boolean = true) : void
      {
         this.§ j§[param1] = param2;
      }
      
      public function §@!f§(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.§!&§[param1] = _loc3_;
      }
      
      public function §&t§(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.§&6§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§+y§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §8i§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&W§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §,l§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&W§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:ChapterModel = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§??§())
         {
            _loc3_ = LevelManager.§;![§(_loc2_);
            _loc4_ = this.§,l§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §8!_§(param1:ChapterModel) : int
      {
         return param1.§&W§().length * 3;
      }
      
      public function §`=§(param1:ChapterModel) : int
      {
         return param1.§&W§().length;
      }
      
      public function §6Y§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&W§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`3§() : Dictionary
      {
         return this.§'!b§;
      }
      
      public function get §?m§() : Boolean
      {
         return this.§1R§;
      }
      
      public function set §?m§(param1:Boolean) : void
      {
         this.§1R§ = param1;
      }
      
      public function get §&!8§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §9!D§() : String
      {
         return this.§9!>§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:ChapterModel = null;
         var _loc7_:ChapterModel = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§>B§)
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
            _loc6_ = LevelManager.§;<§(param1);
            if(_loc6_.pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               _loc7_ = LevelManager.§;<§(_loc4_ - 1 + "-1");
               if(_loc7_)
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
      
      public function get §0!@§() : Dictionary
      {
         return this.§'!b§;
      }
   }
}
