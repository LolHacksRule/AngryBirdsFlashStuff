package §`"§
{
   import §`!s§.§9!i§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §3h§ extends EventDispatcher
   {
      
      protected static const §,!X§:Number = 1000;
      
      protected static const §-V§:Number = 60;
       
      
      protected var §"!l§:Dictionary;
      
      protected var §7!v§:Dictionary;
      
      protected var §<d§:Dictionary;
      
      protected var §?_§:Dictionary;
      
      protected var §3]§:Boolean = false;
      
      protected var §%p§:String;
      
      protected var §;B§:String;
      
      protected var §#n§:§-g§;
      
      protected var §1M§:Timer;
      
      public function §3h§(param1:String, param2:§-g§)
      {
         super();
         this.§;B§ = param1;
         this.§#n§ = param2;
         this.§"!l§ = new Dictionary();
         this.§7!v§ = new Dictionary();
         this.§<d§ = new Dictionary();
         this.§?_§ = new Dictionary();
         this.§3]§ = false;
      }
      
      private function §30§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§4" §));
         this.§%p§ = null;
      }
      
      public function §5!T§(param1:String) : Boolean
      {
         if(this.§%p§ == param1)
         {
            return true;
         }
         if(this.§1M§ && this.§1M§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §2!w§() : String
      {
         var _loc1_:Number = §-V§ - this.§1M§.currentCount;
         var _loc2_:int = _loc1_ / §-V§;
         var _loc3_:int = _loc1_ % §-V§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§9!i§ = null;
         if(this.§"!l§[param1])
         {
            _loc2_ = this.§"!l§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4F§(param1:String) : int
      {
         var _loc2_:§9!i§ = null;
         if(this.§7!v§[param1])
         {
            _loc2_ = this.§7!v§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §@6§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§4F§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§<d§[param1] = param2;
      }
      
      public function §`7§(param1:String, param2:Boolean = true) : void
      {
         this.§<d§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§9!i§ = new §9!i§(param2);
         this.§"!l§[param1] = _loc3_;
      }
      
      public function §]!7§(param1:String, param2:int) : void
      {
         var _loc3_:§9!i§ = new §9!i§(param2);
         this.§7!v§[param1] = _loc3_;
      }
      
      public function §-t§(param1:String, param2:int = -1) : int
      {
         return this.§#n§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §3K§(param1:§4<§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!+§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §-!=§(param1:§4<§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!+§())
         {
            _loc2_ += this.§-t§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'w§() : int
      {
         var _loc3_:§4<§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#n§.getEpisodeCount())
         {
            _loc3_ = this.§#n§.getEpisode(_loc2_);
            _loc4_ = this.§-!=§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §^z§(param1:§4<§) : int
      {
         return param1.§4!+§().length * 3;
      }
      
      public function §6g§(param1:§4<§) : int
      {
         return param1.§4!+§().length;
      }
      
      public function §#§(param1:§4<§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!+§())
         {
            if(this.§4F§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §^h§() : Dictionary
      {
         return this.§<d§;
      }
      
      public function get §`!9§() : Dictionary
      {
         return this.§<d§;
      }
      
      public function get §+6§() : Boolean
      {
         return this.§3]§;
      }
      
      public function set §+6§(param1:Boolean) : void
      {
         this.§3]§ = param1;
      }
      
      public function get §%!_§() : Timer
      {
         return this.§1M§;
      }
      
      public function get §=d§() : String
      {
         return this.§%p§;
      }
      
      public function §=!#§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §-g§.§@!w§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§4F§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§4<§ = this.§#n§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§!u§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§`![§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§4F§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7!k§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
