package §^S§
{
   import §"n§.§<!e§;
   import §8!K§.§3%§;
   import §8!K§.§5!Y§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §#!X§ extends EventDispatcher
   {
      
      protected static const §0G§:Number = 1000;
      
      protected static const §39§:Number = 60;
       
      
      protected var §5!V§:Dictionary;
      
      protected var §]!z§:Dictionary;
      
      protected var §>z§:Dictionary;
      
      protected var §4!c§:Dictionary;
      
      protected var §`!^§:Boolean = false;
      
      protected var §=S§:String;
      
      protected var §6v§:String;
      
      protected var §&" §:§5!Y§;
      
      protected var §;O§:Timer;
      
      public function §#!X§(param1:String, param2:§5!Y§)
      {
         super();
         this.§6v§ = param1;
         this.§&" § = param2;
         this.§5!V§ = new Dictionary();
         this.§]!z§ = new Dictionary();
         this.§>z§ = new Dictionary();
         this.§4!c§ = new Dictionary();
         this.§`!^§ = false;
      }
      
      private function §;!U§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-!9§));
         this.§=S§ = null;
      }
      
      public function §"!h§(param1:String) : Boolean
      {
         if(this.§=S§ == param1)
         {
            return true;
         }
         if(this.§;O§ && this.§;O§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §+z§() : String
      {
         var _loc1_:Number = §39§ - this.§;O§.currentCount;
         var _loc2_:int = _loc1_ / §39§;
         var _loc3_:int = _loc1_ % §39§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§<!e§ = null;
         if(this.§5!V§[param1])
         {
            _loc2_ = this.§5!V§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §2p§(param1:String) : int
      {
         var _loc2_:§<!e§ = null;
         if(this.§]!z§[param1])
         {
            _loc2_ = this.§]!z§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §<W§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§2p§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§>z§[param1] = param2;
      }
      
      public function §[2§(param1:String, param2:Boolean = true) : void
      {
         this.§>z§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§<!e§ = new §<!e§(param2);
         this.§5!V§[param1] = _loc3_;
      }
      
      public function §!3§(param1:String, param2:int) : void
      {
         var _loc3_:§<!e§ = new §<!e§(param2);
         this.§]!z§[param1] = _loc3_;
      }
      
      public function §9"+§(param1:String, param2:int = -1) : int
      {
         return this.§&" §.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §0B§(param1:§3%§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@!8§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>u§(param1:§3%§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@!8§())
         {
            _loc2_ += this.§9"+§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>Q§() : int
      {
         var _loc3_:§3%§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§&" §.getEpisodeCount())
         {
            _loc3_ = this.§&" §.getEpisode(_loc2_);
            _loc4_ = this.§>u§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §@!"§(param1:§3%§) : int
      {
         return param1.§@!8§().length * 3;
      }
      
      public function §^4§(param1:§3%§) : int
      {
         return param1.§@!8§().length;
      }
      
      public function §;L§(param1:§3%§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@!8§())
         {
            if(this.§2p§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §7!7§() : Dictionary
      {
         return this.§>z§;
      }
      
      public function get § !L§() : Dictionary
      {
         return this.§>z§;
      }
      
      public function get §,!>§() : Boolean
      {
         return this.§`!^§;
      }
      
      public function set §,!>§(param1:Boolean) : void
      {
         this.§`!^§ = param1;
      }
      
      public function get §<!P§() : Timer
      {
         return this.§;O§;
      }
      
      public function get §]v§() : String
      {
         return this.§=S§;
      }
      
      public function §]!g§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §5!Y§.§&1§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§2p§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§3%§ = this.§&" §.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§#n§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§;!l§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§2p§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §#l§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
