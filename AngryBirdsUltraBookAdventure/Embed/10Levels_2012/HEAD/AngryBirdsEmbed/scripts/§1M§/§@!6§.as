package §1M§
{
   import § !;§.§`! §;
   import §>!C§.§1$§;
   import §>!C§.§6M§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §@!6§ extends EventDispatcher
   {
      
      protected static const §7M§:Number = 1000;
      
      protected static const §'%§:Number = 60;
       
      
      protected var §#!-§:Dictionary;
      
      protected var §2!8§:Dictionary;
      
      protected var §<!"§:Dictionary;
      
      protected var §5!5§:Dictionary;
      
      protected var § !?§:Boolean;
      
      protected var §?!'§:String;
      
      protected var §package§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §@!6§(param1:String)
      {
         super();
         this.§package§ = param1;
         this.§#!-§ = new Dictionary();
         this.§2!8§ = new Dictionary();
         this.§<!"§ = new Dictionary();
         this.§5!5§ = new Dictionary();
         this.§ !?§ = false;
      }
      
      private function §;6§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3T§));
         this.§?!'§ = null;
      }
      
      public function §7!%§(param1:String) : Boolean
      {
         if(this.§?!'§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §;#§() : String
      {
         var _loc1_:Number = §'%§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §'%§;
         var _loc3_:int = _loc1_ % §'%§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §4[§(param1:String) : int
      {
         var _loc2_:§`! § = null;
         if(this.§#!-§[param1])
         {
            _loc2_ = this.§#!-§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §^z§(param1:String) : int
      {
         var _loc2_:§`! § = null;
         if(this.§2!8§[param1])
         {
            _loc2_ = this.§2!8§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§4[§(param1) > 0 || this.§^z§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function § G§(param1:String, param2:Boolean = true) : void
      {
         this.§<!"§[param1] = param2;
      }
      
      public function §1x§(param1:String, param2:Boolean = true) : void
      {
         this.§5!5§[param1] = param2;
      }
      
      public function §,!+§(param1:String, param2:int) : void
      {
         var _loc3_:§`! § = new §`! §(param2);
         this.§#!-§[param1] = _loc3_;
      }
      
      public function §4!4§(param1:String, param2:int) : void
      {
         var _loc3_:§`! § = new §`! §(param2);
         this.§2!8§[param1] = _loc3_;
      }
      
      public function §-U§(param1:String, param2:int = -1) : int
      {
         return §6M§.§%Q§(param1,param2 != -1 ? int(param2) : int(this.§4[§(param1)));
      }
      
      public function §4D§(param1:§1$§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§2!"§())
         {
            _loc2_ += this.§4[§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §;!#§(param1:§1$§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§2!"§())
         {
            _loc2_ += this.§-U§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §]<§() : int
      {
         var _loc3_:§1$§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §6M§.§!!>§())
         {
            _loc3_ = §6M§.§6[§(_loc2_);
            _loc4_ = this.§;!#§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §3!7§(param1:§1$§) : int
      {
         return param1.§2!"§().length * 3;
      }
      
      public function §0,§(param1:§1$§) : int
      {
         return param1.§2!"§().length;
      }
      
      public function §9&§(param1:§1$§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§2!"§())
         {
            if(this.§^z§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §try §() : Dictionary
      {
         return this.§<!"§;
      }
      
      public function get §56§() : Boolean
      {
         return this.§ !?§;
      }
      
      public function set §56§(param1:Boolean) : void
      {
         this.§ !?§ = param1;
      }
      
      public function get §&c§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §7!+§() : String
      {
         return this.§?!'§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§1$§ = null;
         var _loc7_:§1$§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §6M§.§"b§)
         {
            return true;
         }
         if(this.§4[§(param1) > 0)
         {
            return true;
         }
         if(this.§^z§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §6M§.§1o§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §6M§.§1o§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§4[§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§^z§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §7v§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §`X§(param1:String) : void
      {
      }
      
      public function §]i§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §!Q§() : Dictionary
      {
         return this.§<!"§;
      }
   }
}
