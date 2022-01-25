package § m§
{
   import §%!^§.§"=§;
   import §%!^§.§#!@§;
   import §&$§.§!!R§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §4!3§ extends EventDispatcher
   {
      
      protected static const §#T§:Number = 1000;
      
      protected static const §;g§:Number = 60;
       
      
      protected var §@2§:Dictionary;
      
      protected var §0Y§:Dictionary;
      
      protected var §,H§:Dictionary;
      
      protected var §'o§:Dictionary;
      
      protected var §?1§:Boolean;
      
      protected var §3!U§:String;
      
      protected var §#u§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §4!3§(param1:String)
      {
         super();
         this.§#u§ = param1;
         this.§@2§ = new Dictionary();
         this.§0Y§ = new Dictionary();
         this.§,H§ = new Dictionary();
         this.§'o§ = new Dictionary();
         this.§?1§ = false;
      }
      
      private function §8!S§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.native));
         this.§3!U§ = null;
      }
      
      public function §^!A§(param1:String) : Boolean
      {
         if(this.§3!U§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §9!I§() : String
      {
         var _loc1_:Number = §;g§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §;g§;
         var _loc3_:int = _loc1_ % §;g§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §!G§(param1:String) : int
      {
         var _loc2_:§!!R§ = null;
         if(this.§@2§[param1])
         {
            _loc2_ = this.§@2§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §5!b§(param1:String) : int
      {
         var _loc2_:§!!R§ = null;
         if(this.§0Y§[param1])
         {
            _loc2_ = this.§0Y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §>8§(param1:String) : Boolean
      {
         if(this.§!G§(param1) > 0 || this.§5!b§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §+k§(param1:String, param2:Boolean = true) : void
      {
         this.§,H§[param1] = param2;
      }
      
      public function §&!>§(param1:String, param2:Boolean = true) : void
      {
         this.§'o§[param1] = param2;
      }
      
      public function §=!+§(param1:String, param2:int) : void
      {
         var _loc3_:§!!R§ = new §!!R§(param2);
         this.§@2§[param1] = _loc3_;
      }
      
      public function §@!W§(param1:String, param2:int) : void
      {
         var _loc3_:§!!R§ = new §!!R§(param2);
         this.§0Y§[param1] = _loc3_;
      }
      
      public function §=J§(param1:String, param2:int = -1) : int
      {
         return §"=§.§]K§(param1,param2 != -1 ? int(param2) : int(this.§!G§(param1)));
      }
      
      public function §1l§(param1:§#!@§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§<y§())
         {
            _loc2_ += this.§!G§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §?!>§(param1:§#!@§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§<y§())
         {
            _loc2_ += this.§=J§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7!b§() : int
      {
         var _loc3_:§#!@§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §"=§.§5K§())
         {
            _loc3_ = §"=§.§1x§(_loc2_);
            _loc4_ = this.§?!>§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §class§(param1:§#!@§) : int
      {
         return param1.§<y§().length * 3;
      }
      
      public function §6a§(param1:§#!@§) : int
      {
         return param1.§<y§().length;
      }
      
      public function §@W§(param1:§#!@§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§<y§())
         {
            if(this.§5!b§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`!5§() : Dictionary
      {
         return this.§,H§;
      }
      
      public function get §1[§() : Boolean
      {
         return this.§?1§;
      }
      
      public function set §1[§(param1:Boolean) : void
      {
         this.§?1§ = param1;
      }
      
      public function get §,!D§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get § U§() : String
      {
         return this.§3!U§;
      }
      
      public function §;O§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#!@§ = null;
         var _loc7_:§#!@§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §"=§.§[o§)
         {
            return true;
         }
         if(this.§!G§(param1) > 0)
         {
            return true;
         }
         if(this.§5!b§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §"=§.§#E§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §"=§.§#E§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§!G§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§5!b§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §=l§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §+y§(param1:String) : void
      {
      }
      
      public function §-!b§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §-p§() : Dictionary
      {
         return this.§,H§;
      }
   }
}
