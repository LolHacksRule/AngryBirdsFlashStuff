package §[a§
{
   import §!!§.§@+§;
   import §!!§.LevelManager;
   import §&!h§.§?!K§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §2!T§ extends EventDispatcher
   {
      
      protected static const §7!Q§:Number = 1000;
      
      protected static const §4f§:Number = 60;
       
      
      protected var §21§:Dictionary;
      
      protected var §1!B§:Dictionary;
      
      protected var §?E§:Dictionary;
      
      protected var §9s§:Dictionary;
      
      protected var §#!i§:Boolean;
      
      protected var §7!c§:String;
      
      protected var §0'§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §2!T§(param1:String)
      {
         super();
         this.§0'§ = param1;
         this.§21§ = new Dictionary();
         this.§1!B§ = new Dictionary();
         this.§?E§ = new Dictionary();
         this.§9s§ = new Dictionary();
         this.§#!i§ = false;
      }
      
      private function §,!@§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§&x§));
         this.§7!c§ = null;
      }
      
      public function §"!9§(param1:String) : Boolean
      {
         if(this.§7!c§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §];§() : String
      {
         var _loc1_:Number = §4f§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §4f§;
         var _loc3_:int = _loc1_ % §4f§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§?!K§ = null;
         if(this.§21§[param1])
         {
            _loc2_ = this.§21§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§?!K§ = null;
         if(this.§1!B§[param1])
         {
            _loc2_ = this.§1!B§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+G§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §`!I§(param1:String, param2:Boolean = true) : void
      {
         this.§?E§[param1] = param2;
      }
      
      public function §6!I§(param1:String, param2:Boolean = true) : void
      {
         this.§9s§[param1] = param2;
      }
      
      public function §,x§(param1:String, param2:int) : void
      {
         var _loc3_:§?!K§ = new §?!K§(param2);
         this.§21§[param1] = _loc3_;
      }
      
      public function §#]§(param1:String, param2:int) : void
      {
         var _loc3_:§?!K§ = new §?!K§(param2);
         this.§1!B§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§'!J§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §9!C§(param1:§@+§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-K§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §^!E§(param1:§@+§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-K§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§@+§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§`!v§())
         {
            _loc3_ = LevelManager.§'v§(_loc2_);
            _loc4_ = this.§^!E§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[y§(param1:§@+§) : int
      {
         return param1.§-K§().length * 3;
      }
      
      public function §%!u§(param1:§@+§) : int
      {
         return param1.§-K§().length;
      }
      
      public function §<!=§(param1:§@+§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§-K§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §5!g§() : Dictionary
      {
         return this.§?E§;
      }
      
      public function get §4!f§() : Boolean
      {
         return this.§#!i§;
      }
      
      public function set §4!f§(param1:Boolean) : void
      {
         this.§#!i§ = param1;
      }
      
      public function get §<!l§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §,!k§() : String
      {
         return this.§7!c§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§@+§ = null;
         var _loc7_:§@+§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§3!&§)
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
            if((_loc6_ = LevelManager.§,m§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§,m§(_loc4_ - 1 + "-1"))
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
      
      public function get §1!1§() : Dictionary
      {
         return this.§?E§;
      }
   }
}
