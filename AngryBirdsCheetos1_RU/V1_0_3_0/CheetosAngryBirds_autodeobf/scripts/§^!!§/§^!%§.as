package §^!!§
{
   import §+d§.§!F§;
   import §^9§.§[!L§;
   import §^9§.override;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §^!%§ extends EventDispatcher
   {
      
      protected static const §^O§:Number = 1000;
      
      protected static const §3!^§:Number = 60;
       
      
      protected var §?!&§:Dictionary;
      
      protected var §6!!§:Dictionary;
      
      protected var §8!9§:Dictionary;
      
      protected var §4!&§:Dictionary;
      
      protected var §[=§:Boolean;
      
      protected var §&!-§:String;
      
      protected var §4![§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §^!%§(param1:String)
      {
         super();
         this.§4![§ = param1;
         this.§?!&§ = new Dictionary();
         this.§6!!§ = new Dictionary();
         this.§8!9§ = new Dictionary();
         this.§4!&§ = new Dictionary();
         this.§[=§ = false;
      }
      
      private function § &§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§`=§));
         this.§&!-§ = null;
      }
      
      public function §>!I§(param1:String) : Boolean
      {
         if(this.§&!-§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §6!1§() : String
      {
         var _loc1_:Number = §3!^§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §3!^§;
         var _loc3_:int = _loc1_ % §3!^§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §;#§(param1:String) : int
      {
         var _loc2_:§!F§ = null;
         if(this.§?!&§[param1])
         {
            _loc2_ = this.§?!&§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §]K§(param1:String) : int
      {
         var _loc2_:§!F§ = null;
         if(this.§6!!§[param1])
         {
            _loc2_ = this.§6!!§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,3§(param1:String) : Boolean
      {
         if(this.§;#§(param1) > 0 || this.§]K§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §5!U§(param1:String, param2:Boolean = true) : void
      {
         this.§8!9§[param1] = param2;
      }
      
      public function §[3§(param1:String, param2:Boolean = true) : void
      {
         this.§4!&§[param1] = param2;
      }
      
      public function §7!4§(param1:String, param2:int) : void
      {
         var _loc3_:§!F§ = new §!F§(param2);
         this.§?!&§[param1] = _loc3_;
      }
      
      public function §7E§(param1:String, param2:int) : void
      {
         var _loc3_:§!F§ = new §!F§(param2);
         this.§6!!§[param1] = _loc3_;
      }
      
      public function §&T§(param1:String, param2:int = -1) : int
      {
         return §[!L§.§"!&§(param1,param2 != -1 ? int(param2) : int(this.§;#§(param1)));
      }
      
      public function §"!§(param1:override) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§>A§())
         {
            _loc2_ += this.§;#§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §?8§(param1:override) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§>A§())
         {
            _loc2_ += this.§&T§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §+b§() : int
      {
         var _loc3_:override = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §[!L§.§`G§())
         {
            _loc3_ = §[!L§.§=k§(_loc2_);
            _loc4_ = this.§?8§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[!<§(param1:override) : int
      {
         return param1.§>A§().length * 3;
      }
      
      public function §=!-§(param1:override) : int
      {
         return param1.§>A§().length;
      }
      
      public function §-A§(param1:override) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§>A§())
         {
            if(this.§]K§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §0R§() : Dictionary
      {
         return this.§8!9§;
      }
      
      public function get §7!8§() : Boolean
      {
         return this.§[=§;
      }
      
      public function set §7!8§(param1:Boolean) : void
      {
         this.§[=§ = param1;
      }
      
      public function get §7m§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §9!R§() : String
      {
         return this.§&!-§;
      }
      
      public function §?!4§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:override = null;
         var _loc7_:override = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §[!L§.§<!U§)
         {
            return true;
         }
         if(this.§;#§(param1) > 0)
         {
            return true;
         }
         if(this.§]K§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §[!L§.§=!§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §[!L§.§=!§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§;#§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§]K§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §9!D§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function § !=§(param1:String) : void
      {
      }
      
      public function §;!P§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §,!Y§() : Dictionary
      {
         return this.§8!9§;
      }
   }
}
