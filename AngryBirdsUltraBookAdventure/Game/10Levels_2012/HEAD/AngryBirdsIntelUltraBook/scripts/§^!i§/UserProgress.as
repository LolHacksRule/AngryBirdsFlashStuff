package §^!i§
{
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §9!!§.Integer;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UserProgress extends EventDispatcher
   {
      
      protected static const § I§:Number = 1000;
      
      protected static const §9!5§:Number = 60;
       
      
      protected var §?5§:Dictionary;
      
      protected var §8#§:Dictionary;
      
      protected var §"!=§:Dictionary;
      
      protected var §&!?§:Dictionary;
      
      protected var §;!A§:Boolean;
      
      protected var §0K§:String;
      
      protected var §6![§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function UserProgress(param1:String)
      {
         super();
         this.§6![§ = param1;
         this.§?5§ = new Dictionary();
         this.§8#§ = new Dictionary();
         this.§"!=§ = new Dictionary();
         this.§&!?§ = new Dictionary();
         this.§;!A§ = false;
      }
      
      private function §63§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§+!N§));
         this.§0K§ = null;
      }
      
      public function §8E§(param1:String) : Boolean
      {
         if(this.§0K§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §&!d§() : String
      {
         var _loc1_:Number = §9!5§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §9!5§;
         var _loc3_:int = _loc1_ % §9!5§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.§?5§[param1])
         {
            _loc2_ = this.§?5§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.§8#§[param1])
         {
            _loc2_ = this.§8#§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §41§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §+!O§(param1:String, param2:Boolean = true) : void
      {
         this.§"!=§[param1] = param2;
      }
      
      public function §,n§(param1:String, param2:Boolean = true) : void
      {
         this.§&!?§[param1] = param2;
      }
      
      public function §,g§(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.§?5§[param1] = _loc3_;
      }
      
      public function §;!+§(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.§8#§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§%!"§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §8!6§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-Y§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8!2§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-Y§())
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
         while(_loc2_ < LevelManager.§8H§())
         {
            _loc3_ = LevelManager.§ m§(_loc2_);
            _loc4_ = this.§8!2§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §@!3§(param1:ChapterModel) : int
      {
         return param1.§-Y§().length * 3;
      }
      
      public function §#!-§(param1:ChapterModel) : int
      {
         return param1.§-Y§().length;
      }
      
      public function §]!$§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-Y§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §=0§() : Dictionary
      {
         return this.§"!=§;
      }
      
      public function get §6!a§() : Boolean
      {
         return this.§;!A§;
      }
      
      public function set §6!a§(param1:Boolean) : void
      {
         this.§;!A§ = param1;
      }
      
      public function get §&C§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §@o§() : String
      {
         return this.§0K§;
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
         if(param1 == LevelManager.§get §)
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
            _loc6_ = LevelManager.§'!7§(param1);
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
               _loc7_ = LevelManager.§'!7§(_loc4_ - 1 + "-1");
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
      
      public function get §]!e§() : Dictionary
      {
         return this.§"!=§;
      }
   }
}
