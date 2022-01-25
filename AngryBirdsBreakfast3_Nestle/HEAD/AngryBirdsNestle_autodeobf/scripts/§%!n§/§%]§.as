package §%!n§
{
   import §%!B§.§0![§;
   import §%!B§.§7C§;
   import §4!i§.§@t§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §%]§ extends EventDispatcher
   {
      
      protected static const §^u§:Number = 1000;
      
      protected static const §7G§:Number = 60;
       
      
      protected var §'F§:Dictionary;
      
      protected var §%$§:Dictionary;
      
      protected var §?a§:Dictionary;
      
      protected var §;@§:Dictionary;
      
      protected var §8"$§:Boolean = false;
      
      protected var §+q§:String;
      
      protected var §&c§:String;
      
      protected var §4a§:§0![§;
      
      protected var §["7§:Timer;
      
      public function §%]§(param1:String, param2:§0![§)
      {
         super();
         this.§&c§ = param1;
         this.§4a§ = param2;
         this.§'F§ = new Dictionary();
         this.§%$§ = new Dictionary();
         this.§?a§ = new Dictionary();
         this.§;@§ = new Dictionary();
         this.§8"$§ = false;
      }
      
      private function §9Z§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§,!w§));
         this.§+q§ = null;
      }
      
      public function §@"3§(param1:String) : Boolean
      {
         if(this.§+q§ == param1)
         {
            return true;
         }
         if(this.§["7§ && this.§["7§.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4"7§() : String
      {
         var _loc1_:Number = §7G§ - this.§["7§.currentCount;
         var _loc2_:int = _loc1_ / §7G§;
         var _loc3_:int = _loc1_ % §7G§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function getScoreForLevel(param1:String) : int
      {
         var _loc2_:§@t§ = null;
         if(this.§'F§[param1])
         {
            _loc2_ = this.§'F§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+!]§(param1:String) : int
      {
         var _loc2_:§@t§ = null;
         if(this.§%$§[param1])
         {
            _loc2_ = this.§%$§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §return§(param1:String) : Boolean
      {
         if(this.getScoreForLevel(param1) > 0 || this.§+!]§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function setTutorialSeen(param1:String, param2:Boolean = true) : void
      {
         this.§?a§[param1] = param2;
      }
      
      public function §!l§(param1:String, param2:Boolean = true) : void
      {
         this.§?a§[param1] = param2;
      }
      
      public function setScoreForLevel(param1:String, param2:int) : void
      {
         var _loc3_:§@t§ = new §@t§(param2);
         this.§'F§[param1] = _loc3_;
      }
      
      public function §&!1§(param1:String, param2:int) : void
      {
         var _loc3_:§@t§ = new §@t§(param2);
         this.§%$§[param1] = _loc3_;
      }
      
      public function §1]§(param1:String, param2:int = -1) : int
      {
         return this.§4a§.getNumStarsForLevel(param1,param2 != -1 ? int(param2) : int(this.getScoreForLevel(param1)));
      }
      
      public function §;l§(param1:§7C§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,!@§())
         {
            _loc2_ += this.getScoreForLevel(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1!L§(param1:§7C§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,!@§())
         {
            _loc2_ += this.§1]§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=O§() : int
      {
         var _loc3_:§7C§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§4a§.getEpisodeCount())
         {
            _loc3_ = this.§4a§.getEpisode(_loc2_);
            _loc4_ = this.§1!L§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §"!N§(param1:§7C§) : int
      {
         return param1.§,!@§().length * 3;
      }
      
      public function §#D§(param1:§7C§) : int
      {
         return param1.§,!@§().length;
      }
      
      public function §+w§(param1:§7C§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,!@§())
         {
            if(this.§+!]§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §;K§() : Dictionary
      {
         return this.§?a§;
      }
      
      public function get §5&§() : Dictionary
      {
         return this.§?a§;
      }
      
      public function get §"W§() : Boolean
      {
         return this.§8"$§;
      }
      
      public function set §"W§(param1:Boolean) : void
      {
         this.§8"$§ = param1;
      }
      
      public function get §&^§() : Timer
      {
         return this.§["7§;
      }
      
      public function get §1e§() : String
      {
         return this.§+q§;
      }
      
      public function §2"+§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §0![§.§2!p§)
         {
            return true;
         }
         if(this.getScoreForLevel(param1) > 0)
         {
            return true;
         }
         if(this.§+!]§(param1) > 0)
         {
            return true;
         }
         var _loc3_:§7C§ = this.§4a§.getEpisodeForLevel(param1);
         var _loc4_:int;
         if((_loc4_ = _loc3_.§-!H§(param1)) == 0)
         {
            return true;
         }
         if(_loc4_ > 0)
         {
            _loc2_ = _loc3_.§`z§(_loc4_ - 1);
         }
         if(_loc2_)
         {
            if(this.getScoreForLevel(_loc2_) > 0)
            {
               return true;
            }
            if(this.§+!]§(_loc2_) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §if§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
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
