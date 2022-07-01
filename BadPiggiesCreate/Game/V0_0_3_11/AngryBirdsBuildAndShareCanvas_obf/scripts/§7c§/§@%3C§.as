package §7c§
{
   import §+%§.§+"%§;
   import §+%§.§=^§;
   import §2i§.§%!+§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §@<§ extends EventDispatcher
   {
      
      protected static const §^!Q§:Number = 1000;
      
      protected static const §+8§:Number = 60;
       
      
      protected var §?T§:Dictionary;
      
      protected var §?!;§:Dictionary;
      
      protected var §9!b§:Dictionary;
      
      protected var §9!j§:Dictionary;
      
      protected var §#D§:Boolean;
      
      protected var §1!T§:String;
      
      protected var §0" §:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §@<§(param1:String)
      {
         super();
         this.§0" § = param1;
         this.§?T§ = new Dictionary();
         this.§?!;§ = new Dictionary();
         this.§9!b§ = new Dictionary();
         this.§9!j§ = new Dictionary();
         this.§#D§ = false;
      }
      
      private function §!D§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§'l§));
         this.§1!T§ = null;
      }
      
      public function §9!K§(param1:String) : Boolean
      {
         if(this.§1!T§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §"!@§() : String
      {
         var _loc1_:Number = §+8§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §+8§;
         var _loc3_:int = _loc1_ % §+8§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §`!K§(param1:String) : int
      {
         var _loc2_:§%!+§ = null;
         if(this.§?T§[param1])
         {
            _loc2_ = this.§?T§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>"&§(param1:String) : int
      {
         var _loc2_:§%!+§ = null;
         if(this.§?!;§[param1])
         {
            _loc2_ = this.§?!;§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §`!#§(param1:String) : Boolean
      {
         if(this.§`!K§(param1) > 0 || this.§>"&§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §6!L§(param1:String, param2:Boolean = true) : void
      {
         this.§9!b§[param1] = param2;
      }
      
      public function § <§(param1:String, param2:Boolean = true) : void
      {
         this.§9!j§[param1] = param2;
      }
      
      public function §3!n§(param1:String, param2:int) : void
      {
         var _loc3_:§%!+§ = new §%!+§(param2);
         this.§?T§[param1] = _loc3_;
      }
      
      public function §#P§(param1:String, param2:int) : void
      {
         var _loc3_:§%!+§ = new §%!+§(param2);
         this.§?!;§[param1] = _loc3_;
      }
      
      public function §]5§(param1:String, param2:int = -1) : int
      {
         return §+"%§.§6Z§(param1,param2 != -1 ? int(param2) : int(this.§`!K§(param1)));
      }
      
      public function §+!O§(param1:§=^§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7,§())
         {
            _loc2_ += this.§`!K§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §^?§(param1:§=^§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7,§())
         {
            _loc2_ += this.§]5§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §-!9§() : int
      {
         var _loc3_:§=^§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §+"%§.§<g§())
         {
            _loc3_ = §+"%§.§%!Y§(_loc2_);
            _loc4_ = this.§^?§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §0"+§(param1:§=^§) : int
      {
         return param1.§7,§().length * 3;
      }
      
      public function §3y§(param1:§=^§) : int
      {
         return param1.§7,§().length;
      }
      
      public function §-v§(param1:§=^§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§7,§())
         {
            if(this.§>"&§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §5=§() : Dictionary
      {
         return this.§9!b§;
      }
      
      public function get §3!&§() : Boolean
      {
         return this.§#D§;
      }
      
      public function set §3!&§(param1:Boolean) : void
      {
         this.§#D§ = param1;
      }
      
      public function get §[$§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §?y§() : String
      {
         return this.§1!T§;
      }
      
      public function §-M§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§=^§ = null;
         var _loc7_:§=^§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §+"%§.§-$§)
         {
            return true;
         }
         if(this.§`!K§(param1) > 0)
         {
            return true;
         }
         if(this.§>"&§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §+"%§.§?!7§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §+"%§.§?!7§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§`!K§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§>"&§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §&a§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §?!&§(param1:String) : void
      {
      }
      
      public function §#n§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §5p§() : Dictionary
      {
         return this.§9!b§;
      }
   }
}
