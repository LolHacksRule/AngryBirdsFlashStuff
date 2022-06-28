package §,!J§
{
   import §5=§.Integer;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class UserProgress extends EventDispatcher
   {
      
      protected static const §'E§:Number = 1000;
      
      protected static const §'!D§:Number = 60;
       
      
      protected var §4?§:Dictionary;
      
      protected var §8!j§:Dictionary;
      
      protected var §>!J§:Dictionary;
      
      protected var §[!;§:Dictionary;
      
      protected var §-j§:Boolean;
      
      protected var §@g§:String;
      
      protected var § l§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function UserProgress(param1:String)
      {
         super();
         this.§ l§ = param1;
         this.§4?§ = new Dictionary();
         this.§8!j§ = new Dictionary();
         this.§>!J§ = new Dictionary();
         this.§[!;§ = new Dictionary();
         this.§-j§ = false;
      }
      
      private function §!A§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§]!X§));
         this.§@g§ = null;
      }
      
      public function §2!+§(param1:String) : Boolean
      {
         if(this.§@g§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §#=§() : String
      {
         var _loc1_:Number = §'!D§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §'!D§;
         var _loc3_:int = _loc1_ % §'!D§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.§4?§[param1])
         {
            _loc2_ = this.§4?§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:Integer = null;
         if(this.§8!j§[param1])
         {
            _loc2_ = this.§8!j§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function § R§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §-!F§(param1:String, param2:Boolean = true) : void
      {
         this.§>!J§[param1] = param2;
      }
      
      public function §0!Z§(param1:String, param2:Boolean = true) : void
      {
         this.§[!;§[param1] = param2;
      }
      
      public function §6s§(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.§4?§[param1] = _loc3_;
      }
      
      public function §3!Z§(param1:String, param2:int) : void
      {
         var _loc3_:Integer = new Integer(param2);
         this.§8!j§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§8!R§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §;b§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"4§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §]J§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"4§())
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
         while(_loc2_ < LevelManager.§3!3§())
         {
            _loc3_ = LevelManager.§7Z§(_loc2_);
            _loc4_ = this.§]J§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §7!d§(param1:ChapterModel) : int
      {
         return param1.§"4§().length * 3;
      }
      
      public function §#!c§(param1:ChapterModel) : int
      {
         return param1.§"4§().length;
      }
      
      public function §`!E§(param1:ChapterModel) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"4§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §true §() : Dictionary
      {
         return this.§>!J§;
      }
      
      public function get §5n§() : Boolean
      {
         return this.§-j§;
      }
      
      public function set §5n§(param1:Boolean) : void
      {
         this.§-j§ = param1;
      }
      
      public function get §;!a§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §=!R§() : String
      {
         return this.§@g§;
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
         if(param1 == LevelManager.§@E§)
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
            _loc6_ = LevelManager.§6X§(param1);
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
               _loc7_ = LevelManager.§6X§(_loc4_ - 1 + "-1");
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
      
      public function get §2U§() : Dictionary
      {
         return this.§>!J§;
      }
   }
}
