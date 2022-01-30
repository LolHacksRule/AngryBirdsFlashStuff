package §1d§
{
   import §,!!§.§0"!§;
   import §0s§.§8!z§;
   import §0s§.§=W§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §'!t§ extends EventDispatcher
   {
      
      protected static const §-"#§:Number = 1000;
      
      protected static const §!"-§:Number = 60;
       
      
      protected var §,!T§:Dictionary;
      
      protected var native:Dictionary;
      
      protected var §7!R§:Dictionary;
      
      protected var §#!m§:Dictionary;
      
      protected var §`!T§:Boolean;
      
      protected var §1![§:String;
      
      protected var §8"8§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §'!t§(param1:String)
      {
         super();
         this.§8"8§ = param1;
         this.§,!T§ = new Dictionary();
         this.native = new Dictionary();
         this.§7!R§ = new Dictionary();
         this.§#!m§ = new Dictionary();
         this.§`!T§ = false;
      }
      
      private function §,"9§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§>_§));
         this.§1![§ = null;
      }
      
      public function §@J§(param1:String) : Boolean
      {
         if(this.§1![§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §"o§() : String
      {
         var _loc1_:Number = §!"-§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §!"-§;
         var _loc3_:int = _loc1_ % §!"-§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §7!9§(param1:String) : int
      {
         var _loc2_:§0"!§ = null;
         if(this.§,!T§[param1])
         {
            _loc2_ = this.§,!T§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7C§(param1:String) : int
      {
         var _loc2_:§0"!§ = null;
         if(this.native[param1])
         {
            _loc2_ = this.native[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §0!#§(param1:String) : Boolean
      {
         if(this.§7!9§(param1) > 0 || this.§7C§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §]!o§(param1:String, param2:Boolean = true) : void
      {
         this.§7!R§[param1] = param2;
      }
      
      public function §`!Y§(param1:String, param2:Boolean = true) : void
      {
         this.§#!m§[param1] = param2;
      }
      
      public function §1!"§(param1:String, param2:int) : void
      {
         var _loc3_:§0"!§ = new §0"!§(param2);
         this.§,!T§[param1] = _loc3_;
      }
      
      public function §+K§(param1:String, param2:int) : void
      {
         var _loc3_:§0"!§ = new §0"!§(param2);
         this.native[param1] = _loc3_;
      }
      
      public function §0""§(param1:String, param2:int = -1) : int
      {
         return §8!z§.§8&§(param1,param2 != -1 ? int(param2) : int(this.§7!9§(param1)));
      }
      
      public function §=!B§(param1:§=W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§?8§())
         {
            _loc2_ += this.§7!9§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §^!?§(param1:§=W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§?8§())
         {
            _loc2_ += this.§0""§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §42§() : int
      {
         var _loc3_:§=W§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §8!z§.§]!x§())
         {
            _loc3_ = §8!z§.§]!1§(_loc2_);
            _loc4_ = this.§^!?§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §"!_§(param1:§=W§) : int
      {
         return param1.§?8§().length * 3;
      }
      
      public function §1"3§(param1:§=W§) : int
      {
         return param1.§?8§().length;
      }
      
      public function §;y§(param1:§=W§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§?8§())
         {
            if(this.§7C§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §@d§() : Dictionary
      {
         return this.§7!R§;
      }
      
      public function get §@!d§() : Boolean
      {
         return this.§`!T§;
      }
      
      public function set §@!d§(param1:Boolean) : void
      {
         this.§`!T§ = param1;
      }
      
      public function get §2E§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §@>§() : String
      {
         return this.§1![§;
      }
      
      public function §6!K§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§=W§ = null;
         var _loc7_:§=W§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §8!z§.§`"!§)
         {
            return true;
         }
         if(this.§7!9§(param1) > 0)
         {
            return true;
         }
         if(this.§7C§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §8!z§.§=!b§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §8!z§.§=!b§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§7!9§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§7C§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §7"0§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §;"-§(param1:String) : void
      {
      }
      
      public function §`y§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §case§() : Dictionary
      {
         return this.§7!R§;
      }
   }
}
