package §4"-§
{
   import §'#§.§4!!§;
   import §;!0§.;
   import §;!0§.§]§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<!l§ extends EventDispatcher
   {
      
      protected static const §=!H§:Number = 1000;
      
      protected static const §-"7§:Number = 60;
       
      
      protected var §[6§:Dictionary;
      
      protected var §""5§:Dictionary;
      
      protected var §2!Z§:Dictionary;
      
      protected var §>!R§:Dictionary;
      
      protected var §<!G§:Boolean = false;
      
      protected var §3!]§:String;
      
      protected var §<!e§:String;
      
      protected var §,W§:§#2§;
      
      protected var §25§:Timer;
      
      public function §<!l§(param1:String, param2:§#2§)
      {
         super();
         this.§<!e§ = param1;
         this.§,W§ = param2;
         this.§[6§ = new Dictionary();
         this.§""5§ = new Dictionary();
         this.§2!Z§ = new Dictionary();
         this.§>!R§ = new Dictionary();
         this.§<!G§ = false;
      }
      
      private function §>]§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§ 1§));
         this.§3!]§ = null;
      }
      
      public function §&"'§(param1:String) : Boolean
      {
         if(this.§3!]§ == param1)
         {
            return true;
         }
         if(this.§25§ && this.§25§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §+!k§() : String
      {
         var _loc1_:Number = §-"7§ - this.§25§.currentCount;
         var _loc2_:int = _loc1_ / §-"7§;
         var _loc3_:int = _loc1_ % §-"7§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§4!!§ = null;
         if(this.§[6§[param1])
         {
            _loc2_ = this.§[6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §-A§(param1:String) : int
      {
         var _loc2_:§4!!§ = null;
         if(this.§""5§[param1])
         {
            _loc2_ = this.§""5§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%!+§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§-A§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §^C§(param1:String, param2:Boolean = true) : void
      {
         this.§2!Z§[param1] = param2;
      }
      
      public function §-a§(param1:String, param2:Boolean = true) : void
      {
         this.§2!Z§[param1] = param2;
      }
      
      public function §!!q§(param1:String, param2:int) : void
      {
         var _loc3_:§4!!§ = new §4!!§(param2);
         this.§[6§[param1] = _loc3_;
      }
      
      public function §-"6§(param1:String, param2:int) : void
      {
         var _loc3_:§4!!§ = new §4!!§(param2);
         this.§""5§[param1] = _loc3_;
      }
      
      public function §]!F§(param1:String, param2:int = -1) : int
      {
         return this.§,W§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §^"6§(param1:§]§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4e§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §&!1§(param1:§]§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4e§())
         {
            _loc2_ += this.§]!F§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>"6§() : int
      {
         var _loc3_:§]§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§,W§.getEpisodeCount())
         {
            _loc3_ = this.§,W§.getEpisode(_loc2_);
            _loc4_ = this.§&!1§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §>1§(param1:§]§) : int
      {
         return param1.§4e§().length * 3;
      }
      
      public function §%!m§(param1:§]§) : int
      {
         return param1.§4e§().length;
      }
      
      public function §function§(param1:§]§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4e§())
         {
            if(this.§-A§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`!?§() : Dictionary
      {
         return this.§2!Z§;
      }
      
      public function get § "<§() : Dictionary
      {
         return this.§2!Z§;
      }
      
      public function get §0!6§() : Boolean
      {
         return this.§<!G§;
      }
      
      public function set §0!6§(param1:Boolean) : void
      {
         this.§<!G§ = param1;
      }
      
      public function get §1!Y§() : Timer
      {
         return this.§25§;
      }
      
      public function get §#o§() : String
      {
         return this.§3!]§;
      }
      
      public function §1">§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §#2§.§67§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§-A§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§]§ = this.§,W§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§3"G§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§06§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§-A§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §6!;§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
