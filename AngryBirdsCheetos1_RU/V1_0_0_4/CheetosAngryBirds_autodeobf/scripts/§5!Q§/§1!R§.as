package §5!Q§
{
   import §=q§.§2!8§;
   import §=q§.§<!,§;
   import §^3§.§6Y§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §1!R§ extends EventDispatcher
   {
      
      protected static const §8!,§:Number = 1000;
      
      protected static const §!!I§:Number = 60;
       
      
      protected var §>o§:Dictionary;
      
      protected var §8B§:Dictionary;
      
      protected var §[p§:Dictionary;
      
      protected var §"Z§:Dictionary;
      
      protected var §`y§:Boolean;
      
      protected var §7!B§:String;
      
      protected var §6!2§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §1!R§(param1:String)
      {
         super();
         this.§6!2§ = param1;
         this.§>o§ = new Dictionary();
         this.§8B§ = new Dictionary();
         this.§[p§ = new Dictionary();
         this.§"Z§ = new Dictionary();
         this.§`y§ = false;
      }
      
      private function §3!@§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3'§));
         this.§7!B§ = null;
      }
      
      public function §2K§(param1:String) : Boolean
      {
         if(this.§7!B§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §2!§() : String
      {
         var _loc1_:Number = §!!I§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §!!I§;
         var _loc3_:int = _loc1_ % §!!I§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §^i§(param1:String) : int
      {
         var _loc2_:§6Y§ = null;
         if(this.§>o§[param1])
         {
            _loc2_ = this.§>o§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+!L§(param1:String) : int
      {
         var _loc2_:§6Y§ = null;
         if(this.§8B§[param1])
         {
            _loc2_ = this.§8B§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §19§(param1:String) : Boolean
      {
         if(this.§^i§(param1) > 0 || this.§+!L§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function § L§(param1:String, param2:Boolean = true) : void
      {
         this.§[p§[param1] = param2;
      }
      
      public function §4!>§(param1:String, param2:Boolean = true) : void
      {
         this.§"Z§[param1] = param2;
      }
      
      public function §%!,§(param1:String, param2:int) : void
      {
         var _loc3_:§6Y§ = new §6Y§(param2);
         this.§>o§[param1] = _loc3_;
      }
      
      public function § ?§(param1:String, param2:int) : void
      {
         var _loc3_:§6Y§ = new §6Y§(param2);
         this.§8B§[param1] = _loc3_;
      }
      
      public function §4d§(param1:String, param2:int = -1) : int
      {
         return §<!,§.§<[§(param1,param2 != -1 ? int(param2) : int(this.§^i§(param1)));
      }
      
      public function §#Z§(param1:§2!8§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[!=§())
         {
            _loc2_ += this.§^i§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §]!Q§(param1:§2!8§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[!=§())
         {
            _loc2_ += this.§4d§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §5p§() : int
      {
         var _loc3_:§2!8§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §<!,§.§'f§())
         {
            _loc3_ = §<!,§.§9!C§(_loc2_);
            _loc4_ = this.§]!Q§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1J§(param1:§2!8§) : int
      {
         return param1.§[!=§().length * 3;
      }
      
      public function §1E§(param1:§2!8§) : int
      {
         return param1.§[!=§().length;
      }
      
      public function §'!8§(param1:§2!8§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§[!=§())
         {
            if(this.§+!L§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §+#§() : Dictionary
      {
         return this.§[p§;
      }
      
      public function get §2!C§() : Boolean
      {
         return this.§`y§;
      }
      
      public function set §2!C§(param1:Boolean) : void
      {
         this.§`y§ = param1;
      }
      
      public function get §??§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §1i§() : String
      {
         return this.§7!B§;
      }
      
      public function §!^§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§2!8§ = null;
         var _loc7_:§2!8§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §<!,§.§=c§)
         {
            return true;
         }
         if(this.§^i§(param1) > 0)
         {
            return true;
         }
         if(this.§+!L§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §<!,§.§&S§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §<!,§.§&S§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§^i§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§+!L§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §@!B§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §!!^§(param1:String) : void
      {
      }
      
      public function §'5§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §@!M§() : Dictionary
      {
         return this.§[p§;
      }
   }
}
