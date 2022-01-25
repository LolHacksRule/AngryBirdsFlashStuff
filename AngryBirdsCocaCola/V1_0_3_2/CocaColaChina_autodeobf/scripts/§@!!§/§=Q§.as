package §@!!§
{
   import §!!a§.§9G§;
   import §!!a§.§^!>§;
   import §>P§.§2!U§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §=Q§ extends EventDispatcher
   {
      
      protected static const §=!W§:Number = 1000;
      
      protected static const §!b§:Number = 60;
       
      
      protected var §?!E§:Dictionary;
      
      protected var §<§:Dictionary;
      
      protected var §?r§:Dictionary;
      
      protected var §<!`§:Dictionary;
      
      protected var §2@§:Boolean;
      
      protected var §`_§:String;
      
      protected var §2!A§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §=Q§(param1:String)
      {
         super();
         this.§2!A§ = param1;
         this.§?!E§ = new Dictionary();
         this.§<§ = new Dictionary();
         this.§?r§ = new Dictionary();
         this.§<!`§ = new Dictionary();
         this.§2@§ = false;
      }
      
      private function §@i§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§#!I§));
         this.§`_§ = null;
      }
      
      public function §6S§(param1:String) : Boolean
      {
         if(this.§`_§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §^!_§() : String
      {
         var _loc1_:Number = §!b§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §!b§;
         var _loc3_:int = _loc1_ % §!b§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §9!T§(param1:String) : int
      {
         var _loc2_:§2!U§ = null;
         if(this.§?!E§[param1])
         {
            _loc2_ = this.§?!E§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §32§(param1:String) : int
      {
         var _loc2_:§2!U§ = null;
         if(this.§<§[param1])
         {
            _loc2_ = this.§<§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §'O§(param1:String) : Boolean
      {
         if(this.§9!T§(param1) > 0 || this.§32§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §??§(param1:String, param2:Boolean = true) : void
      {
         this.§?r§[param1] = param2;
      }
      
      public function §7!M§(param1:String, param2:Boolean = true) : void
      {
         this.§<!`§[param1] = param2;
      }
      
      public function §,4§(param1:String, param2:int) : void
      {
         var _loc3_:§2!U§ = new §2!U§(param2);
         this.§?!E§[param1] = _loc3_;
      }
      
      public function §&w§(param1:String, param2:int) : void
      {
         var _loc3_:§2!U§ = new §2!U§(param2);
         this.§<§[param1] = _loc3_;
      }
      
      public function §4! §(param1:String, param2:int = -1) : int
      {
         return §9G§.§@!Z§(param1,param2 != -1 ? int(param2) : int(this.§9!T§(param1)));
      }
      
      public function §with§(param1:§^!>§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§`!^§())
         {
            _loc2_ += this.§9!T§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1B§(param1:§^!>§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§`!^§())
         {
            _loc2_ += this.§4! §(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8!W§() : int
      {
         var _loc3_:§^!>§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §9G§.§;-§())
         {
            _loc3_ = §9G§.§68§(_loc2_);
            _loc4_ = this.§1B§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1!H§(param1:§^!>§) : int
      {
         return param1.§`!^§().length * 3;
      }
      
      public function §>!P§(param1:§^!>§) : int
      {
         return param1.§`!^§().length;
      }
      
      public function §@!4§(param1:§^!>§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§`!^§())
         {
            if(this.§32§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §6!Z§() : Dictionary
      {
         return this.§?r§;
      }
      
      public function get §%!_§() : Boolean
      {
         return this.§2@§;
      }
      
      public function set §%!_§(param1:Boolean) : void
      {
         this.§2@§ = param1;
      }
      
      public function get §^! §() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §!A§() : String
      {
         return this.§`_§;
      }
      
      public function §,D§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§^!>§ = null;
         var _loc7_:§^!>§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §9G§.§%5§)
         {
            return true;
         }
         if(this.§9!T§(param1) > 0)
         {
            return true;
         }
         if(this.§32§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §9G§.§5!>§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §9G§.§5!>§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§9!T§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§32§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §throw§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §%! §(param1:String) : void
      {
      }
      
      public function §>!%§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §04§() : Dictionary
      {
         return this.§?r§;
      }
   }
}
