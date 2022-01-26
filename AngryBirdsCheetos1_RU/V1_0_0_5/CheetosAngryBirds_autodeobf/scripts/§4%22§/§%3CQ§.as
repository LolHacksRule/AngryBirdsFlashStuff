package §4"§
{
   import §!%§.§1m§;
   import §0C§.§"!T§;
   import §0C§.§>e§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<Q§ extends EventDispatcher
   {
      
      protected static const §^!E§:Number = 1000;
      
      protected static const §#!$§:Number = 60;
       
      
      protected var §#z§:Dictionary;
      
      protected var §4!P§:Dictionary;
      
      protected var §<!K§:Dictionary;
      
      protected var §&!&§:Dictionary;
      
      protected var §`!G§:Boolean;
      
      protected var §0!W§:String;
      
      protected var §3!0§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<Q§(param1:String)
      {
         super();
         this.§3!0§ = param1;
         this.§#z§ = new Dictionary();
         this.§4!P§ = new Dictionary();
         this.§<!K§ = new Dictionary();
         this.§&!&§ = new Dictionary();
         this.§`!G§ = false;
      }
      
      private function §,b§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3`§));
         this.§0!W§ = null;
      }
      
      public function §^!3§(param1:String) : Boolean
      {
         if(this.§0!W§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §<!8§() : String
      {
         var _loc1_:Number = §#!$§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §#!$§;
         var _loc3_:int = _loc1_ % §#!$§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §3!]§(param1:String) : int
      {
         var _loc2_:§1m§ = null;
         if(this.§#z§[param1])
         {
            _loc2_ = this.§#z§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+'§(param1:String) : int
      {
         var _loc2_:§1m§ = null;
         if(this.§4!P§[param1])
         {
            _loc2_ = this.§4!P§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>b§(param1:String) : Boolean
      {
         if(this.§3!]§(param1) > 0 || this.§+'§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §>!2§(param1:String, param2:Boolean = true) : void
      {
         this.§<!K§[param1] = param2;
      }
      
      public function §%!H§(param1:String, param2:Boolean = true) : void
      {
         this.§&!&§[param1] = param2;
      }
      
      public function §]?§(param1:String, param2:int) : void
      {
         var _loc3_:§1m§ = new §1m§(param2);
         this.§#z§[param1] = _loc3_;
      }
      
      public function §;!D§(param1:String, param2:int) : void
      {
         var _loc3_:§1m§ = new §1m§(param2);
         this.§4!P§[param1] = _loc3_;
      }
      
      public function §'T§(param1:String, param2:int = -1) : int
      {
         return §"!T§.§?X§(param1,param2 != -1 ? int(param2) : int(this.§3!]§(param1)));
      }
      
      public function §[G§(param1:§>e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%!E§())
         {
            _loc2_ += this.§3!]§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9S§(param1:§>e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%!E§())
         {
            _loc2_ += this.§'T§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §`V§() : int
      {
         var _loc3_:§>e§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §"!T§.§+!V§())
         {
            _loc3_ = §"!T§.§'!§(_loc2_);
            _loc4_ = this.§9S§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §?!O§(param1:§>e§) : int
      {
         return param1.§%!E§().length * 3;
      }
      
      public function §`X§(param1:§>e§) : int
      {
         return param1.§%!E§().length;
      }
      
      public function §=r§(param1:§>e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%!E§())
         {
            if(this.§+'§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §4!G§() : Dictionary
      {
         return this.§<!K§;
      }
      
      public function get §`O§() : Boolean
      {
         return this.§`!G§;
      }
      
      public function set §`O§(param1:Boolean) : void
      {
         this.§`!G§ = param1;
      }
      
      public function get §@!O§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §>!U§() : String
      {
         return this.§0!W§;
      }
      
      public function §=!L§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§>e§ = null;
         var _loc7_:§>e§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §"!T§.§%!5§)
         {
            return true;
         }
         if(this.§3!]§(param1) > 0)
         {
            return true;
         }
         if(this.§+'§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §"!T§.§!M§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §"!T§.§!M§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§3!]§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§+'§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §]=§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §'>§(param1:String) : void
      {
      }
      
      public function §0! §(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §6!Y§() : Dictionary
      {
         return this.§<!K§;
      }
   }
}
