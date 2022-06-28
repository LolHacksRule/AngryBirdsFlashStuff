package §?!3§
{
   import §+!B§.§<!M§;
   import §1!-§.§2n§;
   import §1!-§.§[4§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §`!K§ extends EventDispatcher
   {
      
      protected static const §%!,§:Number = 1000;
      
      protected static const §;t§:Number = 60;
       
      
      protected var §"!2§:Dictionary;
      
      protected var §6r§:Dictionary;
      
      protected var §?!F§:Dictionary;
      
      protected var §5!9§:Dictionary;
      
      protected var §^_§:Boolean;
      
      protected var §!!5§:String;
      
      protected var §56§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §`!K§(param1:String)
      {
         super();
         this.§56§ = param1;
         this.§"!2§ = new Dictionary();
         this.§6r§ = new Dictionary();
         this.§?!F§ = new Dictionary();
         this.§5!9§ = new Dictionary();
         this.§^_§ = false;
      }
      
      private function §6!;§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-0§));
         this.§!!5§ = null;
      }
      
      public function §-!H§(param1:String) : Boolean
      {
         if(this.§!!5§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §,!6§() : String
      {
         var _loc1_:Number = §;t§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §;t§;
         var _loc3_:int = _loc1_ % §;t§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §0!3§(param1:String) : int
      {
         var _loc2_:§<!M§ = null;
         if(this.§"!2§[param1])
         {
            _loc2_ = this.§"!2§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §3I§(param1:String) : int
      {
         var _loc2_:§<!M§ = null;
         if(this.§6r§[param1])
         {
            _loc2_ = this.§6r§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§0!3§(param1) > 0 || this.§3I§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §-l§(param1:String, param2:Boolean = true) : void
      {
         this.§?!F§[param1] = param2;
      }
      
      public function §]0§(param1:String, param2:Boolean = true) : void
      {
         this.§5!9§[param1] = param2;
      }
      
      public function §'`§(param1:String, param2:int) : void
      {
         var _loc3_:§<!M§ = new §<!M§(param2);
         this.§"!2§[param1] = _loc3_;
      }
      
      public function §7z§(param1:String, param2:int) : void
      {
         var _loc3_:§<!M§ = new §<!M§(param2);
         this.§6r§[param1] = _loc3_;
      }
      
      public function §%i§(param1:String, param2:int = -1) : int
      {
         return §[4§.§"r§(param1,param2 != -1 ? int(param2) : int(this.§0!3§(param1)));
      }
      
      public function §>U§(param1:§2n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!N§())
         {
            _loc2_ += this.§0!3§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8!,§(param1:§2n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!N§())
         {
            _loc2_ += this.§%i§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §`!E§() : int
      {
         var _loc3_:§2n§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §[4§.§99§())
         {
            _loc3_ = §[4§.§2A§(_loc2_);
            _loc4_ = this.§8!,§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §-"§(param1:§2n§) : int
      {
         return param1.§=!N§().length * 3;
      }
      
      public function §]P§(param1:§2n§) : int
      {
         return param1.§=!N§().length;
      }
      
      public function §=Z§(param1:§2n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=!N§())
         {
            if(this.§3I§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §>G§() : Dictionary
      {
         return this.§?!F§;
      }
      
      public function get §^3§() : Boolean
      {
         return this.§^_§;
      }
      
      public function set §^3§(param1:Boolean) : void
      {
         this.§^_§ = param1;
      }
      
      public function get §"p§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §-!0§() : String
      {
         return this.§!!5§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§2n§ = null;
         var _loc7_:§2n§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §[4§.§<=§)
         {
            return true;
         }
         if(this.§0!3§(param1) > 0)
         {
            return true;
         }
         if(this.§3I§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §[4§.§<%§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §[4§.§<%§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§0!3§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§3I§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function § v§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §,7§(param1:String) : void
      {
      }
      
      public function §'!<§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §[C§() : Dictionary
      {
         return this.§?!F§;
      }
   }
}
