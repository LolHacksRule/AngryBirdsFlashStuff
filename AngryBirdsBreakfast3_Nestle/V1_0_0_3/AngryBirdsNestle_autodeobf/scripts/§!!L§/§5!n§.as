package §!!L§
{
   import §-!F§.§?!k§;
   import §>!a§.§5l§;
   import §>!a§.§>"2§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §5!n§ extends EventDispatcher
   {
      
      protected static const §2!X§:Number = 1000;
      
      protected static const §0!9§:Number = 60;
       
      
      protected var §1!M§:Dictionary;
      
      protected var §""&§:Dictionary;
      
      protected var §%!0§:Dictionary;
      
      protected var §0!A§:Dictionary;
      
      protected var §[!&§:Boolean = false;
      
      protected var §#"0§:String;
      
      protected var §<e§:String;
      
      protected var §^!§:§5l§;
      
      protected var §1!R§:Timer;
      
      public function §5!n§(param1:String, param2:§5l§)
      {
         super();
         this.§<e§ = param1;
         this.§^!§ = param2;
         this.§1!M§ = new Dictionary();
         this.§""&§ = new Dictionary();
         this.§%!0§ = new Dictionary();
         this.§0!A§ = new Dictionary();
         this.§[!&§ = false;
      }
      
      private function §3h§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§0&§));
         this.§#"0§ = null;
      }
      
      public function §`#§(param1:String) : Boolean
      {
         if(this.§#"0§ == param1)
         {
            return true;
         }
         if(this.§1!R§ && this.§1!R§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §,!2§() : String
      {
         var _loc1_:Number = §0!9§ - this.§1!R§.currentCount;
         var _loc2_:int = _loc1_ / §0!9§;
         var _loc3_:int = _loc1_ % §0!9§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§?!k§ = null;
         if(this.§1!M§[param1])
         {
            _loc2_ = this.§1!M§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%"-§(param1:String) : int
      {
         var _loc2_:§?!k§ = null;
         if(this.§""&§[param1])
         {
            _loc2_ = this.§""&§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §^"!§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§%"-§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§%!0§[param1] = param2;
      }
      
      public function §2!G§(param1:String, param2:Boolean = true) : void
      {
         this.§%!0§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§?!k§ = new §?!k§(param2);
         this.§1!M§[param1] = _loc3_;
      }
      
      public function §3!§(param1:String, param2:int) : void
      {
         var _loc3_:§?!k§ = new §?!k§(param2);
         this.§""&§[param1] = _loc3_;
      }
      
      public function §7?§(param1:String, param2:int = -1) : int
      {
         return this.§^!§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §'"#§(param1:§>"2§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!5§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §6!<§(param1:§>"2§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!5§())
         {
            _loc2_ += this.§7?§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §-!0§() : int
      {
         var _loc3_:§>"2§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!§.getEpisodeCount())
         {
            _loc3_ = this.§^!§.getEpisode(_loc2_);
            _loc4_ = this.§6!<§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[N§(param1:§>"2§) : int
      {
         return param1.§=!5§().length * 3;
      }
      
      public function §9!g§(param1:§>"2§) : int
      {
         return param1.§=!5§().length;
      }
      
      public function §>!1§(param1:§>"2§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!5§())
         {
            if(this.§%"-§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §0^§() : Dictionary
      {
         return this.§%!0§;
      }
      
      public function get §%"0§() : Dictionary
      {
         return this.§%!0§;
      }
      
      public function get §8a§() : Boolean
      {
         return this.§[!&§;
      }
      
      public function set §8a§(param1:Boolean) : void
      {
         this.§[!&§ = param1;
      }
      
      public function get §>c§() : Timer
      {
         return this.§1!R§;
      }
      
      public function get §7F§() : String
      {
         return this.§#"0§;
      }
      
      public function §[!8§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §5l§.§=!b§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§%"-§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§>"2§ = this.§^!§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§4!f§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§8!F§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§%"-§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?!?§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
