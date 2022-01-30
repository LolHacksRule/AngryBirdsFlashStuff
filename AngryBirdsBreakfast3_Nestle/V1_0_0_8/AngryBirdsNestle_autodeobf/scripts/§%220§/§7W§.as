package §"0§
{
   import §%f§.§[o§;
   import §8!e§.§,!M§;
   import §8!e§.§3"&§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §7W§ extends EventDispatcher
   {
      
      protected static const §2"1§:Number = 1000;
      
      protected static const §1!G§:Number = 60;
       
      
      protected var §%"§:Dictionary;
      
      protected var §9=§:Dictionary;
      
      protected var §+!7§:Dictionary;
      
      protected var § ^§:Dictionary;
      
      protected var §"!9§:Boolean = false;
      
      protected var §[A§:String;
      
      protected var §>I§:String;
      
      protected var §!3§:§3"&§;
      
      protected var §9!T§:Timer;
      
      public function §7W§(param1:String, param2:§3"&§)
      {
         super();
         this.§>I§ = param1;
         this.§!3§ = param2;
         this.§%"§ = new Dictionary();
         this.§9=§ = new Dictionary();
         this.§+!7§ = new Dictionary();
         this.§ ^§ = new Dictionary();
         this.§"!9§ = false;
      }
      
      private function §@;§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3$§));
         this.§[A§ = null;
      }
      
      public function § <§(param1:String) : Boolean
      {
         if(this.§[A§ == param1)
         {
            return true;
         }
         if(this.§9!T§ && this.§9!T§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §0^§() : String
      {
         var _loc1_:Number = §1!G§ - this.§9!T§.currentCount;
         var _loc2_:int = _loc1_ / §1!G§;
         var _loc3_:int = _loc1_ % §1!G§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§[o§ = null;
         if(this.§%"§[param1])
         {
            _loc2_ = this.§%"§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!w§(param1:String) : int
      {
         var _loc2_:§[o§ = null;
         if(this.§9=§[param1])
         {
            _loc2_ = this.§9=§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §-"8§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§8!w§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§+!7§[param1] = param2;
      }
      
      public function §'T§(param1:String, param2:Boolean = true) : void
      {
         this.§+!7§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§[o§ = new §[o§(param2);
         this.§%"§[param1] = _loc3_;
      }
      
      public function §+E§(param1:String, param2:int) : void
      {
         var _loc3_:§[o§ = new §[o§(param2);
         this.§9=§[param1] = _loc3_;
      }
      
      public function §<!8§(param1:String, param2:int = -1) : int
      {
         return this.§!3§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §," §(param1:§,!M§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7""§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=M§(param1:§,!M§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7""§())
         {
            _loc2_ += this.§<!8§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0"7§() : int
      {
         var _loc3_:§,!M§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§!3§.getEpisodeCount())
         {
            _loc3_ = this.§!3§.getEpisode(_loc2_);
            _loc4_ = this.§=M§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §4V§(param1:§,!M§) : int
      {
         return param1.§7""§().length * 3;
      }
      
      public function §'5§(param1:§,!M§) : int
      {
         return param1.§7""§().length;
      }
      
      public function §,!q§(param1:§,!M§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7""§())
         {
            if(this.§8!w§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §-§() : Dictionary
      {
         return this.§+!7§;
      }
      
      public function get §]"'§() : Dictionary
      {
         return this.§+!7§;
      }
      
      public function get §>!l§() : Boolean
      {
         return this.§"!9§;
      }
      
      public function set §>!l§(param1:Boolean) : void
      {
         this.§"!9§ = param1;
      }
      
      public function get §<;§() : Timer
      {
         return this.§9!T§;
      }
      
      public function get §-!d§() : String
      {
         return this.§[A§;
      }
      
      public function §4"%§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §3"&§.§%!Z§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§8!w§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§,!M§ = this.§!3§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§+"$§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§2!>§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§8!w§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-!2§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
