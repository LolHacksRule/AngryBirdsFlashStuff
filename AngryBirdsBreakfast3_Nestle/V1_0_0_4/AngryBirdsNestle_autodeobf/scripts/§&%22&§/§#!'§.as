package §&"&§
{
   import §'<§.§77§;
   import §'<§.§=!o§;
   import §`6§.§-!j§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §#!'§ extends EventDispatcher
   {
      
      protected static const §%"1§:Number = 1000;
      
      protected static const §!S§:Number = 60;
       
      
      protected var §&"4§:Dictionary;
      
      protected var §=h§:Dictionary;
      
      protected var §,!Y§:Dictionary;
      
      protected var §&!A§:Dictionary;
      
      protected var §9![§:Boolean = false;
      
      protected var §[!E§:String;
      
      protected var §7;§:String;
      
      protected var §+o§:§=!o§;
      
      protected var §7x§:Timer;
      
      public function §#!'§(param1:String, param2:§=!o§)
      {
         super();
         this.§7;§ = param1;
         this.§+o§ = param2;
         this.§&"4§ = new Dictionary();
         this.§=h§ = new Dictionary();
         this.§,!Y§ = new Dictionary();
         this.§&!A§ = new Dictionary();
         this.§9![§ = false;
      }
      
      private function §'%§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1!&§));
         this.§[!E§ = null;
      }
      
      public function §!d§(param1:String) : Boolean
      {
         if(this.§[!E§ == param1)
         {
            return true;
         }
         if(this.§7x§ && this.§7x§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §?!&§() : String
      {
         var _loc1_:Number = §!S§ - this.§7x§.currentCount;
         var _loc2_:int = _loc1_ / §!S§;
         var _loc3_:int = _loc1_ % §!S§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§-!j§ = null;
         if(this.§&"4§[param1])
         {
            _loc2_ = this.§&"4§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#!1§(param1:String) : int
      {
         var _loc2_:§-!j§ = null;
         if(this.§=h§[param1])
         {
            _loc2_ = this.§=h§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>z§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§#!1§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§,!Y§[param1] = param2;
      }
      
      public function §4s§(param1:String, param2:Boolean = true) : void
      {
         this.§,!Y§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§-!j§ = new §-!j§(param2);
         this.§&"4§[param1] = _loc3_;
      }
      
      public function §"?§(param1:String, param2:int) : void
      {
         var _loc3_:§-!j§ = new §-!j§(param2);
         this.§=h§[param1] = _loc3_;
      }
      
      public function §4o§(param1:String, param2:int = -1) : int
      {
         return this.§+o§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function § !U§(param1:§77§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7F§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=x§(param1:§77§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7F§())
         {
            _loc2_ += this.§4o§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0!z§() : int
      {
         var _loc3_:§77§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§+o§.getEpisodeCount())
         {
            _loc3_ = this.§+o§.getEpisode(_loc2_);
            _loc4_ = this.§=x§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[m§(param1:§77§) : int
      {
         return param1.§7F§().length * 3;
      }
      
      public function §@q§(param1:§77§) : int
      {
         return param1.§7F§().length;
      }
      
      public function §,f§(param1:§77§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7F§())
         {
            if(this.§#!1§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §#!W§() : Dictionary
      {
         return this.§,!Y§;
      }
      
      public function get §5!0§() : Dictionary
      {
         return this.§,!Y§;
      }
      
      public function get §3r§() : Boolean
      {
         return this.§9![§;
      }
      
      public function set §3r§(param1:Boolean) : void
      {
         this.§9![§ = param1;
      }
      
      public function get §>!X§() : Timer
      {
         return this.§7x§;
      }
      
      public function get §3u§() : String
      {
         return this.§[!E§;
      }
      
      public function §7"2§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §=!o§.§'!u§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§#!1§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§77§ = this.§+o§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§-j§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§9!k§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§#!1§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7E§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
