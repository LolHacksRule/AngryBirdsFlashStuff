package §[V§
{
   import §1z§.§^!@§;
   import §1z§.§^"6§;
   import §4u§.§1!C§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §=G§ extends EventDispatcher
   {
      
      protected static const §2"2§:Number = 1000;
      
      protected static const §&!d§:Number = 60;
       
      
      protected var §5!6§:Dictionary;
      
      protected var §["6§:Dictionary;
      
      protected var §2X§:Dictionary;
      
      protected var §`!>§:Dictionary;
      
      protected var §7"=§:Boolean = false;
      
      protected var §4",§:String;
      
      protected var §>y§:String;
      
      protected var §#"=§:§^!@§;
      
      protected var §#!S§:Timer;
      
      public function §=G§(param1:String, param2:§^!@§)
      {
         super();
         this.§>y§ = param1;
         this.§#"=§ = param2;
         this.§5!6§ = new Dictionary();
         this.§["6§ = new Dictionary();
         this.§2X§ = new Dictionary();
         this.§`!>§ = new Dictionary();
         this.§7"=§ = false;
      }
      
      private function §3!&§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§=8§));
         this.§4",§ = null;
      }
      
      public function §?6§(param1:String) : Boolean
      {
         if(this.§4",§ == param1)
         {
            return true;
         }
         if(this.§#!S§ && this.§#!S§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §27§() : String
      {
         var _loc1_:Number = §&!d§ - this.§#!S§.currentCount;
         var _loc2_:int = _loc1_ / §&!d§;
         var _loc3_:int = _loc1_ % §&!d§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§1!C§ = null;
         if(this.§5!6§[param1])
         {
            _loc2_ = this.§5!6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §`!P§(param1:String) : int
      {
         var _loc2_:§1!C§ = null;
         if(this.§["6§[param1])
         {
            _loc2_ = this.§["6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §0"?§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§`!P§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §7b§(param1:String, param2:Boolean = true) : void
      {
         this.§2X§[param1] = param2;
      }
      
      public function §?T§(param1:String, param2:Boolean = true) : void
      {
         this.§2X§[param1] = param2;
      }
      
      public function §1r§(param1:String, param2:int) : void
      {
         var _loc3_:§1!C§ = new §1!C§(param2);
         this.§5!6§[param1] = _loc3_;
      }
      
      public function §<C§(param1:String, param2:int) : void
      {
         var _loc3_:§1!C§ = new §1!C§(param2);
         this.§["6§[param1] = _loc3_;
      }
      
      public function §>"3§(param1:String, param2:int = -1) : int
      {
         return this.§#"=§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §;!>§(param1:§^"6§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@,§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §+!A§(param1:§^"6§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@,§())
         {
            _loc2_ += this.§>"3§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §="@§() : int
      {
         var _loc3_:§^"6§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§#"=§.getEpisodeCount())
         {
            _loc3_ = this.§#"=§.getEpisode(_loc2_);
            _loc4_ = this.§+!A§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §7D§(param1:§^"6§) : int
      {
         return param1.§@,§().length * 3;
      }
      
      public function §9!N§(param1:§^"6§) : int
      {
         return param1.§@,§().length;
      }
      
      public function §@"-§(param1:§^"6§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@,§())
         {
            if(this.§`!P§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §-!H§() : Dictionary
      {
         return this.§2X§;
      }
      
      public function get §]!@§() : Dictionary
      {
         return this.§2X§;
      }
      
      public function get §-!0§() : Boolean
      {
         return this.§7"=§;
      }
      
      public function set §-!0§(param1:Boolean) : void
      {
         this.§7"=§ = param1;
      }
      
      public function get §8Z§() : Timer
      {
         return this.§#!S§;
      }
      
      public function get §=!m§() : String
      {
         return this.§4",§;
      }
      
      public function §7>§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §^!@§.§+"F§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§`!P§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§^"6§ = this.§#"=§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§7J§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§#+§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§`!P§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § G§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
