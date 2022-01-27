package §`5§
{
   import §3!%§.§-k§;
   import §3!%§.§9i§;
   import §4!6§.§use§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §`!,§ extends EventDispatcher
   {
      
      protected static const §?!3§:Number = 1000;
      
      protected static const § !E§:Number = 60;
       
      
      protected var §[!O§:Dictionary;
      
      protected var §=!K§:Dictionary;
      
      protected var §[!2§:Dictionary;
      
      protected var §>u§:Dictionary;
      
      protected var §8b§:Boolean;
      
      protected var §?!9§:String;
      
      protected var §[A§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §`!,§(param1:String)
      {
         super();
         this.§[A§ = param1;
         this.§[!O§ = new Dictionary();
         this.§=!K§ = new Dictionary();
         this.§[!2§ = new Dictionary();
         this.§>u§ = new Dictionary();
         this.§8b§ = false;
      }
      
      private function §@A§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§;r§));
         this.§?!9§ = null;
      }
      
      public function §!X§(param1:String) : Boolean
      {
         if(this.§?!9§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §0F§() : String
      {
         var _loc1_:Number = § !E§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / § !E§;
         var _loc3_:int = _loc1_ % § !E§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §@%§(param1:String) : int
      {
         var _loc2_:§use§ = null;
         if(this.§[!O§[param1])
         {
            _loc2_ = this.§[!O§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#J§(param1:String) : int
      {
         var _loc2_:§use§ = null;
         if(this.§=!K§[param1])
         {
            _loc2_ = this.§=!K§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§@%§(param1) > 0 || this.§#J§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §44§(param1:String, param2:Boolean = true) : void
      {
         this.§[!2§[param1] = param2;
      }
      
      public function §@!0§(param1:String, param2:Boolean = true) : void
      {
         this.§>u§[param1] = param2;
      }
      
      public function §2!F§(param1:String, param2:int) : void
      {
         var _loc3_:§use§ = new §use§(param2);
         this.§[!O§[param1] = _loc3_;
      }
      
      public function §6!4§(param1:String, param2:int) : void
      {
         var _loc3_:§use§ = new §use§(param2);
         this.§=!K§[param1] = _loc3_;
      }
      
      public function §09§(param1:String, param2:int = -1) : int
      {
         return §-k§.§!T§(param1,param2 != -1 ? int(param2) : int(this.§@%§(param1)));
      }
      
      public function §-8§(param1:§9i§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7!7§())
         {
            _loc2_ += this.§@%§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9I§(param1:§9i§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7!7§())
         {
            _loc2_ += this.§09§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §^B§() : int
      {
         var _loc3_:§9i§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §-k§.§;F§())
         {
            _loc3_ = §-k§.§^4§(_loc2_);
            _loc4_ = this.§9I§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §2X§(param1:§9i§) : int
      {
         return param1.§7!7§().length * 3;
      }
      
      public function §#w§(param1:§9i§) : int
      {
         return param1.§7!7§().length;
      }
      
      public function §^u§(param1:§9i§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7!7§())
         {
            if(this.§#J§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §?!%§() : Dictionary
      {
         return this.§[!2§;
      }
      
      public function get §=L§() : Boolean
      {
         return this.§8b§;
      }
      
      public function set §=L§(param1:Boolean) : void
      {
         this.§8b§ = param1;
      }
      
      public function get §%!Q§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §[!#§() : String
      {
         return this.§?!9§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§9i§ = null;
         var _loc7_:§9i§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §-k§.§'!C§)
         {
            return true;
         }
         if(this.§@%§(param1) > 0)
         {
            return true;
         }
         if(this.§#J§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §-k§.§#L§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §-k§.§#L§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§@%§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§#J§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §!C§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §6t§(param1:String) : void
      {
      }
      
      public function §!!7§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §-§() : Dictionary
      {
         return this.§[!2§;
      }
   }
}
