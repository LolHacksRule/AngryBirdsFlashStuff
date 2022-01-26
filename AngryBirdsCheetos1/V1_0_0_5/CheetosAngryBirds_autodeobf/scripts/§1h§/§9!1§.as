package §1h§
{
   import §#K§.§"f§;
   import §#K§.§<!+§;
   import §&! §.§3!§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §9!1§ extends EventDispatcher
   {
      
      protected static const §'!K§:Number = 1000;
      
      protected static const §1!1§:Number = 60;
       
      
      protected var §=x§:Dictionary;
      
      protected var §+'§:Dictionary;
      
      protected var §1!'§:Dictionary;
      
      protected var §;!!§:Dictionary;
      
      protected var §;!'§:Boolean;
      
      protected var §;,§:String;
      
      protected var §6Q§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §9!1§(param1:String)
      {
         super();
         this.§6Q§ = param1;
         this.§=x§ = new Dictionary();
         this.§+'§ = new Dictionary();
         this.§1!'§ = new Dictionary();
         this.§;!!§ = new Dictionary();
         this.§;!'§ = false;
      }
      
      private function §=%§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§`!A§));
         this.§;,§ = null;
      }
      
      public function §-!$§(param1:String) : Boolean
      {
         if(this.§;,§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function § N§() : String
      {
         var _loc1_:Number = §1!1§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §1!1§;
         var _loc3_:int = _loc1_ % §1!1§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §=!V§(param1:String) : int
      {
         var _loc2_:§3!§ = null;
         if(this.§=x§[param1])
         {
            _loc2_ = this.§=x§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%!?§(param1:String) : int
      {
         var _loc2_:§3!§ = null;
         if(this.§+'§[param1])
         {
            _loc2_ = this.§+'§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §'D§(param1:String) : Boolean
      {
         if(this.§=!V§(param1) > 0 || this.§%!?§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §-!?§(param1:String, param2:Boolean = true) : void
      {
         this.§1!'§[param1] = param2;
      }
      
      public function §4y§(param1:String, param2:Boolean = true) : void
      {
         this.§1!'§[param1] = param2;
      }
      
      public function §!I§(param1:String, param2:int) : void
      {
         var _loc3_:§3!§ = new §3!§(param2);
         this.§=x§[param1] = _loc3_;
      }
      
      public function §1!9§(param1:String, param2:int) : void
      {
         var _loc3_:§3!§ = new §3!§(param2);
         this.§+'§[param1] = _loc3_;
      }
      
      public function §&!A§(param1:String, param2:int = -1) : int
      {
         return §<!+§.§,!Q§(param1,param2 != -1 ? int(param2) : int(this.§=!V§(param1)));
      }
      
      public function §]W§(param1:§"f§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§<!A§())
         {
            _loc2_ += this.§=!V§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!>§(param1:§"f§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§<!A§())
         {
            _loc2_ += this.§&!A§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §[!R§() : int
      {
         var _loc3_:§"f§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §<!+§.§,3§())
         {
            _loc3_ = §<!+§.§ F§(_loc2_);
            _loc4_ = this.§!>§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §5!=§(param1:§"f§) : int
      {
         return param1.§<!A§().length * 3;
      }
      
      public function § do§(param1:§"f§) : int
      {
         return param1.§<!A§().length;
      }
      
      public function §]G§(param1:§"f§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§<!A§())
         {
            if(this.§%!?§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §+x§() : Dictionary
      {
         return this.§1!'§;
      }
      
      public function get §3!-§() : Dictionary
      {
         return this.§1!'§;
      }
      
      public function get §&!4§() : Boolean
      {
         return this.§;!'§;
      }
      
      public function set §&!4§(param1:Boolean) : void
      {
         this.§;!'§ = param1;
      }
      
      public function get §9V§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §6^§() : String
      {
         return this.§;,§;
      }
      
      public function §^!?§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§"f§ = null;
         var _loc7_:§"f§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §<!+§.§[!!§)
         {
            return true;
         }
         if(this.§=!V§(param1) > 0)
         {
            return true;
         }
         if(this.§%!?§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §<!+§.§?!Q§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §<!+§.§?!Q§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§=!V§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§%!?§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
