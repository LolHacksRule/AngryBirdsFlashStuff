package §;a§
{
   import §'!n§.§??§;
   import §4",§.§,!j§;
   import §4",§.§2!S§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §5!;§ extends EventDispatcher
   {
      
      protected static const §+!<§:Number = 1000;
      
      protected static const §83§:Number = 60;
       
      
      protected var §@8§:Dictionary;
      
      protected var §#3§:Dictionary;
      
      protected var §+<§:Dictionary;
      
      protected var §%I§:Dictionary;
      
      protected var §[0§:Boolean = false;
      
      protected var §5!C§:String;
      
      protected var § !T§:String;
      
      protected var §]m§:§,!j§;
      
      protected var §7" §:Timer;
      
      public function §5!;§(param1:String, param2:§,!j§)
      {
         super();
         this.§ !T§ = param1;
         this.§]m§ = param2;
         this.§@8§ = new Dictionary();
         this.§#3§ = new Dictionary();
         this.§+<§ = new Dictionary();
         this.§%I§ = new Dictionary();
         this.§[0§ = false;
      }
      
      private function §9!f§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§#!V§));
         this.§5!C§ = null;
      }
      
      public function §1V§(param1:String) : Boolean
      {
         if(this.§5!C§ == param1)
         {
            return true;
         }
         if(this.§7" § && this.§7" §.running)
         {
            return false;
         }
         return true;
      }
      
      public function §"!9§() : String
      {
         var _loc1_:Number = §83§ - this.§7" §.currentCount;
         var _loc2_:int = _loc1_ / §83§;
         var _loc3_:int = _loc1_ % §83§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§??§ = null;
         if(this.§@8§[param1])
         {
            _loc2_ = this.§@8§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%!O§(param1:String) : int
      {
         var _loc2_:§??§ = null;
         if(this.§#3§[param1])
         {
            _loc2_ = this.§#3§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §[!G§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§%!O§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §6"$§(param1:String, param2:Boolean = true) : void
      {
         this.§+<§[param1] = param2;
      }
      
      public function §-0§(param1:String, param2:Boolean = true) : void
      {
         this.§+<§[param1] = param2;
      }
      
      public function §0"3§(param1:String, param2:int) : void
      {
         var _loc3_:§??§ = new §??§(param2);
         this.§@8§[param1] = _loc3_;
      }
      
      public function § ""§(param1:String, param2:int) : void
      {
         var _loc3_:§??§ = new §??§(param2);
         this.§#3§[param1] = _loc3_;
      }
      
      public function §7=§(param1:String, param2:int = -1) : int
      {
         return this.§]m§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §3"9§(param1:§2!S§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "!§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §#i§(param1:§2!S§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "!§())
         {
            _loc2_ += this.§7=§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'4§() : int
      {
         var _loc3_:§2!S§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]m§.getEpisodeCount())
         {
            _loc3_ = this.§]m§.getEpisode(_loc2_);
            _loc4_ = this.§#i§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §^w§(param1:§2!S§) : int
      {
         return param1.§ "!§().length * 3;
      }
      
      public function §%?§(param1:§2!S§) : int
      {
         return param1.§ "!§().length;
      }
      
      public function §7@§(param1:§2!S§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "!§())
         {
            if(this.§%!O§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §0D§() : Dictionary
      {
         return this.§+<§;
      }
      
      public function get §8!S§() : Dictionary
      {
         return this.§+<§;
      }
      
      public function get §;"!§() : Boolean
      {
         return this.§[0§;
      }
      
      public function set §;"!§(param1:Boolean) : void
      {
         this.§[0§ = param1;
      }
      
      public function get §1!m§() : Timer
      {
         return this.§7" §;
      }
      
      public function get §@r§() : String
      {
         return this.§5!C§;
      }
      
      public function §!">§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §,!j§.§"E§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§%!O§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§2!S§ = this.§]m§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§2!m§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§9!I§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§%!O§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §]0§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
