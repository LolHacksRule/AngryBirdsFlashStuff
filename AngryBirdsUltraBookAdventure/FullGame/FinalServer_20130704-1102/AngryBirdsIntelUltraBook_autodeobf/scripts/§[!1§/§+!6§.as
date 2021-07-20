package §[!1§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §<-§.§2B§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §+!6§ extends EventDispatcher
   {
      
      protected static const §9!V§:Number = 1000;
      
      protected static const §!!E§:Number = 60;
       
      
      protected var §1!_§:Dictionary;
      
      protected var § !Z§:Dictionary;
      
      protected var §>Q§:Dictionary;
      
      protected var §8!T§:Dictionary;
      
      protected var §?!l§:Boolean;
      
      protected var §=i§:String;
      
      protected var §0!m§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §+!6§(param1:String)
      {
         super();
         this.§0!m§ = param1;
         this.§1!_§ = new Dictionary();
         this.§ !Z§ = new Dictionary();
         this.§>Q§ = new Dictionary();
         this.§8!T§ = new Dictionary();
         this.§?!l§ = false;
      }
      
      private function §3!E§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§>!]§));
         this.§=i§ = null;
      }
      
      public function §0!G§(param1:String) : Boolean
      {
         if(this.§=i§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4!C§() : String
      {
         var _loc1_:Number = §!!E§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §!!E§;
         var _loc3_:int = _loc1_ % §!!E§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§2B§ = null;
         if(this.§1!_§[param1])
         {
            _loc2_ = this.§1!_§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§2B§ = null;
         if(this.§ !Z§[param1])
         {
            _loc2_ = this.§ !Z§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!N§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §0^§(param1:String, param2:Boolean = true) : void
      {
         this.§>Q§[param1] = param2;
      }
      
      public function §8?§(param1:String, param2:Boolean = true) : void
      {
         this.§8!T§[param1] = param2;
      }
      
      public function §<C§(param1:String, param2:int) : void
      {
         var _loc3_:§2B§ = new §2B§(param2);
         this.§1!_§[param1] = _loc3_;
      }
      
      public function §3!L§(param1:String, param2:int) : void
      {
         var _loc3_:§2B§ = new §2B§(param2);
         this.§ !Z§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§2!&§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §4!`§(param1:§8K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9!P§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0q§(param1:§8K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9!P§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§8K§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§%!1§())
         {
            _loc3_ = LevelManager.§!!A§(_loc2_);
            _loc4_ = this.§0q§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §>9§(param1:§8K§) : int
      {
         return param1.§9!P§().length * 3;
      }
      
      public function §^!9§(param1:§8K§) : int
      {
         return param1.§9!P§().length;
      }
      
      public function §;C§(param1:§8K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9!P§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get § !l§() : Dictionary
      {
         return this.§>Q§;
      }
      
      public function get §&m§() : Boolean
      {
         return this.§?!l§;
      }
      
      public function set §&m§(param1:Boolean) : void
      {
         this.§?!l§ = param1;
      }
      
      public function get §7o§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §=m§() : String
      {
         return this.§=i§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§8K§ = null;
         var _loc7_:§8K§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§&!r§)
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
            if((_loc6_ = LevelManager.§`r§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§`r§(_loc4_ - 1 + "-1"))
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
      
      public function get §`"!§() : Dictionary
      {
         return this.§>Q§;
      }
   }
}
