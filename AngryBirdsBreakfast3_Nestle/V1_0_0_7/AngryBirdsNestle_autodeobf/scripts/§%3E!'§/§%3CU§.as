package §>!'§
{
   import §!!&§.§0!_§;
   import §!P§.§4K§;
   import §!P§.§5!1§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<U§ extends EventDispatcher
   {
      
      protected static const §-9§:Number = 1000;
      
      protected static const §%!,§:Number = 60;
       
      
      protected var §;"-§:Dictionary;
      
      protected var §!!$§:Dictionary;
      
      protected var § !+§:Dictionary;
      
      protected var §9!-§:Dictionary;
      
      protected var §`m§:Boolean = false;
      
      protected var §#Y§:String;
      
      protected var §1l§:String;
      
      protected var §97§:§5!1§;
      
      protected var § !q§:Timer;
      
      public function §<U§(param1:String, param2:§5!1§)
      {
         super();
         this.§1l§ = param1;
         this.§97§ = param2;
         this.§;"-§ = new Dictionary();
         this.§!!$§ = new Dictionary();
         this.§ !+§ = new Dictionary();
         this.§9!-§ = new Dictionary();
         this.§`m§ = false;
      }
      
      private function §]U§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-B§));
         this.§#Y§ = null;
      }
      
      public function §2!M§(param1:String) : Boolean
      {
         if(this.§#Y§ == param1)
         {
            return true;
         }
         if(this.§ !q§ && this.§ !q§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §=!Q§() : String
      {
         var _loc1_:Number = §%!,§ - this.§ !q§.currentCount;
         var _loc2_:int = _loc1_ / §%!,§;
         var _loc3_:int = _loc1_ % §%!,§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§0!_§ = null;
         if(this.§;"-§[param1])
         {
            _loc2_ = this.§;"-§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+T§(param1:String) : int
      {
         var _loc2_:§0!_§ = null;
         if(this.§!!$§[param1])
         {
            _loc2_ = this.§!!$§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,g§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§+T§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§ !+§[param1] = param2;
      }
      
      public function §3"0§(param1:String, param2:Boolean = true) : void
      {
         this.§ !+§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§0!_§ = new §0!_§(param2);
         this.§;"-§[param1] = _loc3_;
      }
      
      public function §;n§(param1:String, param2:int) : void
      {
         var _loc3_:§0!_§ = new §0!_§(param2);
         this.§!!$§[param1] = _loc3_;
      }
      
      public function §3i§(param1:String, param2:int = -1) : int
      {
         return this.§97§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §7A§(param1:§4K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§6!O§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function § H§(param1:§4K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§6!O§())
         {
            _loc2_ += this.§3i§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §04§() : int
      {
         var _loc3_:§4K§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§97§.getEpisodeCount())
         {
            _loc3_ = this.§97§.getEpisode(_loc2_);
            _loc4_ = this.§ H§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §&!3§(param1:§4K§) : int
      {
         return param1.§6!O§().length * 3;
      }
      
      public function §>!q§(param1:§4K§) : int
      {
         return param1.§6!O§().length;
      }
      
      public function §[!k§(param1:§4K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§6!O§())
         {
            if(this.§+T§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §%m§() : Dictionary
      {
         return this.§ !+§;
      }
      
      public function get §6"!§() : Dictionary
      {
         return this.§ !+§;
      }
      
      public function get §"-§() : Boolean
      {
         return this.§`m§;
      }
      
      public function set §"-§(param1:Boolean) : void
      {
         this.§`m§ = param1;
      }
      
      public function get §#E§() : Timer
      {
         return this.§ !q§;
      }
      
      public function get §1z§() : String
      {
         return this.§#Y§;
      }
      
      public function §"!`§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §5!1§.§-H§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§+T§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§4K§ = this.§97§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§0"%§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§3m§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§+T§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2!,§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
