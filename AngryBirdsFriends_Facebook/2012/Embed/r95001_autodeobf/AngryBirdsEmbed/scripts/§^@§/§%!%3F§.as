package §^@§
{
   import § "§.§1!9§;
   import § "§.§8!3§;
   import §-'§.§%!$§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §%!?§ extends EventDispatcher
   {
      
      protected static const §1§:Number = 1000;
      
      protected static const §>C§:Number = 60;
       
      
      protected var §7!$§:Dictionary;
      
      protected var §case §:Dictionary;
      
      protected var §&!4§:Dictionary;
      
      protected var §%I§:Dictionary;
      
      protected var §<g§:Boolean;
      
      protected var § C§:String;
      
      protected var §6<§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §%!?§(param1:String)
      {
         super();
         this.§6<§ = param1;
         this.§7!$§ = new Dictionary();
         this.§case § = new Dictionary();
         this.§&!4§ = new Dictionary();
         this.§%I§ = new Dictionary();
         this.§<g§ = false;
      }
      
      private function §9G§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3k§));
         this.§ C§ = null;
      }
      
      public function §2s§(param1:String) : Boolean
      {
         if(this.§ C§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §0!&§() : String
      {
         var _loc1_:Number = §>C§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §>C§;
         var _loc3_:int = _loc1_ % §>C§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §^A§(param1:String) : int
      {
         var _loc2_:§%!$§ = null;
         if(this.§7!$§[param1])
         {
            _loc2_ = this.§7!$§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §-@§(param1:String) : int
      {
         var _loc2_:§%!$§ = null;
         if(this.§case §[param1])
         {
            _loc2_ = this.§case §[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§^A§(param1) > 0 || this.§-@§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §!O§(param1:String, param2:Boolean = true) : void
      {
         this.§&!4§[param1] = param2;
      }
      
      public function §#w§(param1:String, param2:Boolean = true) : void
      {
         this.§&!4§[param1] = param2;
      }
      
      public function §1!E§(param1:String, param2:int) : void
      {
         var _loc3_:§%!$§ = new §%!$§(param2);
         this.§7!$§[param1] = _loc3_;
      }
      
      public function §+!@§(param1:String, param2:int) : void
      {
         var _loc3_:§%!$§ = new §%!$§(param2);
         this.§case §[param1] = _loc3_;
      }
      
      public function §9!"§(param1:String, param2:int = -1) : int
      {
         return §8!3§.§0-§(param1,param2 != -1 ? int(param2) : int(this.§^A§(param1)));
      }
      
      public function §8]§(param1:§1!9§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§2L§())
         {
            _loc2_ += this.§^A§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1"§(param1:§1!9§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§2L§())
         {
            _loc2_ += this.§9!"§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §3!4§() : int
      {
         var _loc3_:§1!9§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §8!3§.§7!5§())
         {
            _loc3_ = §8!3§.§`!5§(_loc2_);
            _loc4_ = this.§1"§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[!$§(param1:§1!9§) : int
      {
         return param1.§2L§().length * 3;
      }
      
      public function §>q§(param1:§1!9§) : int
      {
         return param1.§2L§().length;
      }
      
      public function §[m§(param1:§1!9§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§2L§())
         {
            if(this.§-@§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §2>§() : Dictionary
      {
         return this.§&!4§;
      }
      
      public function get §+!2§() : Dictionary
      {
         return this.§&!4§;
      }
      
      public function get §0R§() : Boolean
      {
         return this.§<g§;
      }
      
      public function set §0R§(param1:Boolean) : void
      {
         this.§<g§ = param1;
      }
      
      public function get §1!G§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §=!?§() : String
      {
         return this.§ C§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§1!9§ = null;
         var _loc7_:§1!9§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §8!3§.§-7§)
         {
            return true;
         }
         if(this.§^A§(param1) > 0)
         {
            return true;
         }
         if(this.§-@§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §8!3§.§=!9§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §8!3§.§=!9§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§^A§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§-@§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §^!9§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
