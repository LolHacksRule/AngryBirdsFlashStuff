package §_-ry§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-0C5§;
   import §_-eS§.§_-BK§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-00s§ extends EventDispatcher
   {
      
      protected static const §_-02F§:Number = 1000;
      
      protected static const §_-vH§:Number = 60;
       
      
      protected var §_-092§:Dictionary;
      
      protected var §_-5r§:Dictionary;
      
      protected var §_-08w§:Dictionary;
      
      protected var §_-WH§:Dictionary;
      
      protected var §_-BR§:Boolean;
      
      protected var §_-UA§:String;
      
      protected var §_-pl§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-00s§(param1:String)
      {
         super();
         this.§_-pl§ = param1;
         this.§_-092§ = new Dictionary();
         this.§_-5r§ = new Dictionary();
         this.§_-08w§ = new Dictionary();
         this.§_-WH§ = new Dictionary();
         this.§_-BR§ = false;
      }
      
      private function §_-NO§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-Nd§));
         this.§_-UA§ = null;
      }
      
      public function §_-DG§(param1:String) : Boolean
      {
         if(this.§_-UA§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-FM§() : String
      {
         var _loc1_:Number = §_-vH§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-vH§;
         var _loc3_:int = _loc1_ % §_-vH§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§_-BK§ = null;
         if(this.§_-092§[param1])
         {
            _loc2_ = this.§_-092§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function getEagleScoreForLevel(param1:String) : int
      {
         var _loc2_:§_-BK§ = null;
         if(this.§_-5r§[param1])
         {
            _loc2_ = this.§_-5r§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-Z3§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.getEagleScoreForLevel(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §_-09L§(param1:String, param2:Boolean = true) : void
      {
         this.§_-08w§[param1] = param2;
      }
      
      public function §_-fc§(param1:String, param2:Boolean = true) : void
      {
         this.§_-WH§[param1] = param2;
      }
      
      public function §_-eF§(param1:String, param2:int) : void
      {
         var _loc3_:§_-BK§ = new §_-BK§(param2);
         this.§_-092§[param1] = _loc3_;
      }
      
      public function §_-09c§(param1:String, param2:int) : void
      {
         var _loc3_:§_-BK§ = new §_-BK§(param2);
         this.§_-5r§[param1] = _loc3_;
      }
      
      public function getStarsForLevel(param1:String, param2:int = -1) : int
      {
         return LevelManager.§_-g0§(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §_-Od§(param1:§_-0C5§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-3R§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-Zh§(param1:§_-0C5§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-3R§())
         {
            _loc2_ += this.getStarsForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function getTotalStars() : int
      {
         var _loc3_:§_-0C5§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§_-td§())
         {
            _loc3_ = LevelManager.§_-h8§(_loc2_);
            _loc4_ = this.§_-Zh§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §_-C§(param1:§_-0C5§) : int
      {
         return param1.§_-3R§().length * 3;
      }
      
      public function §_-q4§(param1:§_-0C5§) : int
      {
         return param1.§_-3R§().length;
      }
      
      public function §_-80§(param1:§_-0C5§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-3R§())
         {
            if(this.getEagleScoreForLevel(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-0Es§() : Dictionary
      {
         return this.§_-08w§;
      }
      
      public function get §_-nn§() : Boolean
      {
         return this.§_-BR§;
      }
      
      public function set §_-nn§(param1:Boolean) : void
      {
         this.§_-BR§ = param1;
      }
      
      public function get §_-Br§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-fR§() : String
      {
         return this.§_-UA§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§_-0C5§ = null;
         var _loc7_:§_-0C5§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == LevelManager.§_-1q§)
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
            if((_loc6_ = LevelManager.§_-N9§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = LevelManager.§_-N9§(_loc4_ - 1 + "-1"))
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
      
      public function get §_-0-n§() : Dictionary
      {
         return this.§_-08w§;
      }
   }
}
