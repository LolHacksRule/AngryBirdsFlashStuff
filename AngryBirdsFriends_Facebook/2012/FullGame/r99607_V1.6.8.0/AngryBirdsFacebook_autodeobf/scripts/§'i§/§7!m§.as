package §'i§
{
   import §<!<§.§,V§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §7!m§ extends EventDispatcher
   {
      
      protected static const §^!o§:Number = 1000;
      
      protected static const §=M§:Number = 60;
       
      
      protected var §>n§:Dictionary;
      
      protected var §<8§:Dictionary;
      
      protected var §7<§:Dictionary;
      
      protected var §0'§:Dictionary;
      
      protected var §+!k§:Boolean;
      
      protected var §#!8§:String;
      
      protected var §&!M§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §7!m§(param1:String)
      {
         super();
         this.§&!M§ = param1;
         this.§>n§ = new Dictionary();
         this.§<8§ = new Dictionary();
         this.§7<§ = new Dictionary();
         this.§0'§ = new Dictionary();
         this.§+!k§ = false;
      }
      
      private function §7u§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§6x§));
         this.§#!8§ = null;
      }
      
      public function §!!8§(param1:String) : Boolean
      {
         if(this.§#!8§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §]!b§() : String
      {
         var _loc1_:Number = §=M§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §=M§;
         var _loc3_:int = _loc1_ % §=M§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§,V§ = null;
         if(this.§>n§[param1])
         {
            _loc2_ = this.§>n§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§,V§ = null;
         if(this.§<8§[param1])
         {
            _loc2_ = this.§<8§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8r§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §?$§(param1:String, param2:Boolean = true) : void
      {
         this.§7<§[param1] = param2;
      }
      
      public function § ""§(param1:String, param2:Boolean = true) : void
      {
         this.§0'§[param1] = param2;
      }
      
      public function §'!X§(param1:String, param2:int) : void
      {
         var _loc3_:§,V§ = new §,V§(param2);
         this.§>n§[param1] = _loc3_;
      }
      
      public function §[y§(param1:String, param2:int) : void
      {
         var _loc3_:§,V§ = new §,V§(param2);
         this.§<8§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§6K§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §1"$§(param1:§]f§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5!p§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@y§(param1:§]f§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5!p§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§]f§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§%3§())
         {
            _loc3_ = LevelManager.§3"1§(_loc2_);
            _loc4_ = this.§@y§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §56§(param1:§]f§) : int
      {
         return param1.§5!p§().length * 3;
      }
      
      public function §6!X§(param1:§]f§) : int
      {
         return param1.§5!p§().length;
      }
      
      public function §8!^§(param1:§]f§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5!p§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §&a§() : Dictionary
      {
         return this.§7<§;
      }
      
      public function get §8!l§() : Boolean
      {
         return this.§+!k§;
      }
      
      public function set §8!l§(param1:Boolean) : void
      {
         this.§+!k§ = param1;
      }
      
      public function get §+"'§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §,j§() : String
      {
         return this.§#!8§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§]f§ = null;
         var _loc7_:§]f§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§9""§)
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
            if((_loc6_ = LevelManager.§"!r§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§"!r§(_loc4_ - 1 + "-1"))
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
      
      public function get § !B§() : Dictionary
      {
         return this.§7<§;
      }
   }
}
