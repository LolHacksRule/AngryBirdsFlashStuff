package §@o§
{
   import §86§.§!!d§;
   import §86§.§[!$§;
   import §;m§.§6!U§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]t§ extends EventDispatcher
   {
      
      protected static const §4$§:Number = 1000;
      
      protected static const § !L§:Number = 60;
       
      
      protected var §]i§:Dictionary;
      
      protected var §;$§:Dictionary;
      
      protected var §+!8§:Dictionary;
      
      protected var §9i§:Dictionary;
      
      protected var §3w§:Boolean;
      
      protected var §;!"§:String;
      
      protected var §[V§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §]t§(param1:String)
      {
         super();
         this.§[V§ = param1;
         this.§]i§ = new Dictionary();
         this.§;$§ = new Dictionary();
         this.§+!8§ = new Dictionary();
         this.§9i§ = new Dictionary();
         this.§3w§ = false;
      }
      
      private function §]K§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§5b§));
         this.§;!"§ = null;
      }
      
      public function §3!6§(param1:String) : Boolean
      {
         if(this.§;!"§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §><§() : String
      {
         var _loc1_:Number = § !L§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / § !L§;
         var _loc3_:int = _loc1_ % § !L§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §=o§(param1:String) : int
      {
         var _loc2_:§6!U§ = null;
         if(this.§]i§[param1])
         {
            _loc2_ = this.§]i§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=[§(param1:String) : int
      {
         var _loc2_:§6!U§ = null;
         if(this.§;$§[param1])
         {
            _loc2_ = this.§;$§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §`d§(param1:String) : Boolean
      {
         if(this.§=o§(param1) > 0 || this.§=[§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §>!%§(param1:String, param2:Boolean = true) : void
      {
         this.§+!8§[param1] = param2;
      }
      
      public function §&u§(param1:String, param2:Boolean = true) : void
      {
         this.§9i§[param1] = param2;
      }
      
      public function §^!V§(param1:String, param2:int) : void
      {
         var _loc3_:§6!U§ = new §6!U§(param2);
         this.§]i§[param1] = _loc3_;
      }
      
      public function §;!D§(param1:String, param2:int) : void
      {
         var _loc3_:§6!U§ = new §6!U§(param2);
         this.§;$§[param1] = _loc3_;
      }
      
      public function §9!8§(param1:String, param2:int = -1) : int
      {
         return §!!d§.§#!-§(param1,param2 != -1 ? int(param2) : int(this.§=o§(param1)));
      }
      
      public function §%!V§(param1:§[!$§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&!5§())
         {
            _loc2_ += this.§=o§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=5§(param1:§[!$§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&!5§())
         {
            _loc2_ += this.§9!8§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0!^§() : int
      {
         var _loc3_:§[!$§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §!!d§.§!§())
         {
            _loc3_ = §!!d§.§,!c§(_loc2_);
            _loc4_ = this.§=5§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §6v§(param1:§[!$§) : int
      {
         return param1.§&!5§().length * 3;
      }
      
      public function §=<§(param1:§[!$§) : int
      {
         return param1.§&!5§().length;
      }
      
      public function §7R§(param1:§[!$§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&!5§())
         {
            if(this.§=[§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §8p§() : Dictionary
      {
         return this.§+!8§;
      }
      
      public function get §&!V§() : Boolean
      {
         return this.§3w§;
      }
      
      public function set §&!V§(param1:Boolean) : void
      {
         this.§3w§ = param1;
      }
      
      public function get §=!V§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §@>§() : String
      {
         return this.§;!"§;
      }
      
      public function §%3§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§[!$§ = null;
         var _loc7_:§[!$§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §!!d§.§3!1§)
         {
            return true;
         }
         if(this.§=o§(param1) > 0)
         {
            return true;
         }
         if(this.§=[§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §!!d§.§'!^§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §!!d§.§'!^§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§=o§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§=[§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §6!1§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §=D§(param1:String) : void
      {
      }
      
      public function §%8§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §?!=§() : Dictionary
      {
         return this.§+!8§;
      }
   }
}
