package § I§
{
   import § !Y§.§]!,§;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]"6§ extends EventDispatcher
   {
      
      protected static const §"!w§:Number = 1000;
      
      protected static const §<Q§:Number = 60;
       
      
      protected var §0!k§:Dictionary;
      
      protected var §-K§:Dictionary;
      
      protected var §&!-§:Dictionary;
      
      protected var §<"'§:Dictionary;
      
      protected var §;" §:Boolean = false;
      
      protected var § !j§:String;
      
      protected var §<!t§:String;
      
      protected var §6u§:§9"!§;
      
      protected var §%c§:Timer;
      
      public function §]"6§(param1:String, param2:§9"!§)
      {
         super();
         this.§<!t§ = param1;
         this.§6u§ = param2;
         this.§0!k§ = new Dictionary();
         this.§-K§ = new Dictionary();
         this.§&!-§ = new Dictionary();
         this.§<"'§ = new Dictionary();
         this.§;" § = false;
      }
      
      private function §@!S§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§9""§));
         this.§ !j§ = null;
      }
      
      public function §[l§(param1:String) : Boolean
      {
         if(this.§ !j§ == param1)
         {
            return true;
         }
         if(this.§%c§ && this.§%c§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4w§() : String
      {
         var _loc1_:Number = §<Q§ - this.§%c§.currentCount;
         var _loc2_:int = _loc1_ / §<Q§;
         var _loc3_:int = _loc1_ % §<Q§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§]!,§ = null;
         if(this.§0!k§[param1])
         {
            _loc2_ = this.§0!k§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#!K§(param1:String) : int
      {
         var _loc2_:§]!,§ = null;
         if(this.§-K§[param1])
         {
            _loc2_ = this.§-K§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §<!J§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§#!K§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §8R§(param1:String, param2:Boolean = true) : void
      {
         this.§&!-§[param1] = param2;
      }
      
      public function §=!=§(param1:String, param2:Boolean = true) : void
      {
         this.§&!-§[param1] = param2;
      }
      
      public function §%P§(param1:String, param2:int) : void
      {
         var _loc3_:§]!,§ = new §]!,§(param2);
         this.§0!k§[param1] = _loc3_;
      }
      
      public function §]I§(param1:String, param2:int) : void
      {
         var _loc3_:§]!,§ = new §]!,§(param2);
         this.§-K§[param1] = _loc3_;
      }
      
      public function §,R§(param1:String, param2:int = -1) : int
      {
         return this.§6u§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §<!y§(param1:§3,§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9"<§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §5;§(param1:§3,§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9"<§())
         {
            _loc2_ += this.§,R§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9!Z§() : int
      {
         var _loc3_:§3,§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§6u§.getEpisodeCount())
         {
            _loc3_ = this.§6u§.getEpisode(_loc2_);
            _loc4_ = this.§5;§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §4"4§(param1:§3,§) : int
      {
         return param1.§9"<§().length * 3;
      }
      
      public function §?N§(param1:§3,§) : int
      {
         return param1.§9"<§().length;
      }
      
      public function §7%§(param1:§3,§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9"<§())
         {
            if(this.§#!K§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get § !^§() : Dictionary
      {
         return this.§&!-§;
      }
      
      public function get §]!j§() : Dictionary
      {
         return this.§&!-§;
      }
      
      public function get §3s§() : Boolean
      {
         return this.§;" §;
      }
      
      public function set §3s§(param1:Boolean) : void
      {
         this.§;" § = param1;
      }
      
      public function get §^!O§() : Timer
      {
         return this.§%c§;
      }
      
      public function get §]_§() : String
      {
         return this.§ !j§;
      }
      
      public function §]!B§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §9"!§.§]"0§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§#!K§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§3,§ = this.§6u§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§-!;§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§=!U§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§#!K§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>!m§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
