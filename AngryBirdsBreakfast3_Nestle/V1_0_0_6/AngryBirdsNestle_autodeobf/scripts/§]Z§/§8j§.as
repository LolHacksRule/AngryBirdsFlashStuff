package §]Z§
{
   import § !T§.§ q§;
   import § !T§.§=!x§;
   import §2W§.§2E§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §8j§ extends EventDispatcher
   {
      
      protected static const §9"-§:Number = 1000;
      
      protected static const §"!9§:Number = 60;
       
      
      protected var §>`§:Dictionary;
      
      protected var §2!!§:Dictionary;
      
      protected var §[!-§:Dictionary;
      
      protected var §2!'§:Dictionary;
      
      protected var §,U§:Boolean = false;
      
      protected var §"s§:String;
      
      protected var §97§:String;
      
      protected var §="4§:§ q§;
      
      protected var §%!o§:Timer;
      
      public function §8j§(param1:String, param2:§ q§)
      {
         super();
         this.§97§ = param1;
         this.§="4§ = param2;
         this.§>`§ = new Dictionary();
         this.§2!!§ = new Dictionary();
         this.§[!-§ = new Dictionary();
         this.§2!'§ = new Dictionary();
         this.§,U§ = false;
      }
      
      private function §`c§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§0Q§));
         this.§"s§ = null;
      }
      
      public function §@E§(param1:String) : Boolean
      {
         if(this.§"s§ == param1)
         {
            return true;
         }
         if(this.§%!o§ && this.§%!o§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §]&§() : String
      {
         var _loc1_:Number = §"!9§ - this.§%!o§.currentCount;
         var _loc2_:int = _loc1_ / §"!9§;
         var _loc3_:int = _loc1_ % §"!9§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§2E§ = null;
         if(this.§>`§[param1])
         {
            _loc2_ = this.§>`§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §^!y§(param1:String) : int
      {
         var _loc2_:§2E§ = null;
         if(this.§2!!§[param1])
         {
            _loc2_ = this.§2!!§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §-Q§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§^!y§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§[!-§[param1] = param2;
      }
      
      public function §!!c§(param1:String, param2:Boolean = true) : void
      {
         this.§[!-§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§2E§ = new §2E§(param2);
         this.§>`§[param1] = _loc3_;
      }
      
      public function §>!-§(param1:String, param2:int) : void
      {
         var _loc3_:§2E§ = new §2E§(param2);
         this.§2!!§[param1] = _loc3_;
      }
      
      public function §`!E§(param1:String, param2:int = -1) : int
      {
         return this.§="4§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §]N§(param1:§=!x§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[!r§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!a§(param1:§=!x§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[!r§())
         {
            _loc2_ += this.§`!E§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §&y§() : int
      {
         var _loc3_:§=!x§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§="4§.getEpisodeCount())
         {
            _loc3_ = this.§="4§.getEpisode(_loc2_);
            _loc4_ = this.§!a§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §4V§(param1:§=!x§) : int
      {
         return param1.§[!r§().length * 3;
      }
      
      public function §9l§(param1:§=!x§) : int
      {
         return param1.§[!r§().length;
      }
      
      public function §2!%§(param1:§=!x§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[!r§())
         {
            if(this.§^!y§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §?!6§() : Dictionary
      {
         return this.§[!-§;
      }
      
      public function get §=!>§() : Dictionary
      {
         return this.§[!-§;
      }
      
      public function get §"Y§() : Boolean
      {
         return this.§,U§;
      }
      
      public function set §"Y§(param1:Boolean) : void
      {
         this.§,U§ = param1;
      }
      
      public function get §,!j§() : Timer
      {
         return this.§%!o§;
      }
      
      public function get §`u§() : String
      {
         return this.§"s§;
      }
      
      public function §^!P§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == § q§.§[o§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§^!y§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§=!x§ = this.§="4§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§>!f§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§"!7§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§^!y§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §^"0§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
