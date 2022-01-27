package §^!W§
{
   import §!V§.§!!i§;
   import §`![§.§1!K§;
   import §`![§.§@;§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §@!0§ extends EventDispatcher
   {
      
      protected static const §<!R§:Number = 1000;
      
      protected static const §"!i§:Number = 60;
       
      
      protected var §<!U§:Dictionary;
      
      protected var §+!`§:Dictionary;
      
      protected var §+!R§:Dictionary;
      
      protected var §<!K§:Dictionary;
      
      protected var §'!a§:Boolean;
      
      protected var §^9§:String;
      
      protected var §0c§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §@!0§(param1:String)
      {
         super();
         this.§0c§ = param1;
         this.§<!U§ = new Dictionary();
         this.§+!`§ = new Dictionary();
         this.§+!R§ = new Dictionary();
         this.§<!K§ = new Dictionary();
         this.§'!a§ = false;
      }
      
      private function §0=§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§'!6§));
         this.§^9§ = null;
      }
      
      public function §?!Z§(param1:String) : Boolean
      {
         if(this.§^9§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §^O§() : String
      {
         var _loc1_:Number = §"!i§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §"!i§;
         var _loc3_:int = _loc1_ % §"!i§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §9!C§(param1:String) : int
      {
         var _loc2_:§!!i§ = null;
         if(this.§<!U§[param1])
         {
            _loc2_ = this.§<!U§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+!H§(param1:String) : int
      {
         var _loc2_:§!!i§ = null;
         if(this.§+!`§[param1])
         {
            _loc2_ = this.§+!`§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function § y§(param1:String) : Boolean
      {
         if(this.§9!C§(param1) > 0 || this.§+!H§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §2!;§(param1:String, param2:Boolean = true) : void
      {
         this.§+!R§[param1] = param2;
      }
      
      public function §21§(param1:String, param2:Boolean = true) : void
      {
         this.§<!K§[param1] = param2;
      }
      
      public function §6!X§(param1:String, param2:int) : void
      {
         var _loc3_:§!!i§ = new §!!i§(param2);
         this.§<!U§[param1] = _loc3_;
      }
      
      public function §,n§(param1:String, param2:int) : void
      {
         var _loc3_:§!!i§ = new §!!i§(param2);
         this.§+!`§[param1] = _loc3_;
      }
      
      public function §[![§(param1:String, param2:int = -1) : int
      {
         return §@;§.§@T§(param1,param2 != -1 ? int(param2) : int(this.§9!C§(param1)));
      }
      
      public function §4!L§(param1:§1!K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4%§())
         {
            _loc2_ += this.§9!C§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=s§(param1:§1!K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4%§())
         {
            _loc2_ += this.§[![§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §5!U§() : int
      {
         var _loc3_:§1!K§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §@;§.§7!I§())
         {
            _loc3_ = §@;§.§default§(_loc2_);
            _loc4_ = this.§=s§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §4!6§(param1:§1!K§) : int
      {
         return param1.§4%§().length * 3;
      }
      
      public function §@!6§(param1:§1!K§) : int
      {
         return param1.§4%§().length;
      }
      
      public function §4!d§(param1:§1!K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4%§())
         {
            if(this.§+!H§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §^!D§() : Dictionary
      {
         return this.§+!R§;
      }
      
      public function get §'!e§() : Boolean
      {
         return this.§'!a§;
      }
      
      public function set §'!e§(param1:Boolean) : void
      {
         this.§'!a§ = param1;
      }
      
      public function get §3!Q§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §&i§() : String
      {
         return this.§^9§;
      }
      
      public function §3!@§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§1!K§ = null;
         var _loc7_:§1!K§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §@;§.§7%§)
         {
            return true;
         }
         if(this.§9!C§(param1) > 0)
         {
            return true;
         }
         if(this.§+!H§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §@;§.§4!`§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §@;§.§4!`§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§9!C§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§+!H§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §`R§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function §2!§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §,e§() : Dictionary
      {
         return this.§+!R§;
      }
   }
}
