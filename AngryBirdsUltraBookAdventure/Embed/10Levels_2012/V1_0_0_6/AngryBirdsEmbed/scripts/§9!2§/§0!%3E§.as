package §9!2§
{
   import §%!6§.§'[§;
   import §=!B§.§59§;
   import §=!B§.§=e§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §0!>§ extends EventDispatcher
   {
      
      protected static const §<n§:Number = 1000;
      
      protected static const §3a§:Number = 60;
       
      
      protected var §3!A§:Dictionary;
      
      protected var §]!E§:Dictionary;
      
      protected var §5h§:Dictionary;
      
      protected var §+!B§:Dictionary;
      
      protected var §^Y§:Boolean;
      
      protected var §,§:String;
      
      protected var §3I§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §0!>§(param1:String)
      {
         super();
         this.§3I§ = param1;
         this.§3!A§ = new Dictionary();
         this.§]!E§ = new Dictionary();
         this.§5h§ = new Dictionary();
         this.§+!B§ = new Dictionary();
         this.§^Y§ = false;
      }
      
      private function §?@§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1`§));
         this.§,§ = null;
      }
      
      public function §]j§(param1:String) : Boolean
      {
         if(this.§,§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §`!"§() : String
      {
         var _loc1_:Number = §3a§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §3a§;
         var _loc3_:int = _loc1_ % §3a§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §#!H§(param1:String) : int
      {
         var _loc2_:§'[§ = null;
         if(this.§3!A§[param1])
         {
            _loc2_ = this.§3!A§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4a§(param1:String) : int
      {
         var _loc2_:§'[§ = null;
         if(this.§]!E§[param1])
         {
            _loc2_ = this.§]!E§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§#!H§(param1) > 0 || this.§4a§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §=c§(param1:String, param2:Boolean = true) : void
      {
         this.§5h§[param1] = param2;
      }
      
      public function §&c§(param1:String, param2:Boolean = true) : void
      {
         this.§+!B§[param1] = param2;
      }
      
      public function §9h§(param1:String, param2:int) : void
      {
         var _loc3_:§'[§ = new §'[§(param2);
         this.§3!A§[param1] = _loc3_;
      }
      
      public function §9!3§(param1:String, param2:int) : void
      {
         var _loc3_:§'[§ = new §'[§(param2);
         this.§]!E§[param1] = _loc3_;
      }
      
      public function §1!,§(param1:String, param2:int = -1) : int
      {
         return §59§.§1;§(param1,param2 != -1 ? int(param2) : int(this.§#!H§(param1)));
      }
      
      public function §6!3§(param1:§=e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%-§())
         {
            _loc2_ += this.§#!H§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §%P§(param1:§=e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%-§())
         {
            _loc2_ += this.§1!,§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §0!F§() : int
      {
         var _loc3_:§=e§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §59§.§<L§())
         {
            _loc3_ = §59§.§+!!§(_loc2_);
            _loc4_ = this.§%P§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §2!=§(param1:§=e§) : int
      {
         return param1.§%-§().length * 3;
      }
      
      public function §!X§(param1:§=e§) : int
      {
         return param1.§%-§().length;
      }
      
      public function §?!B§(param1:§=e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%-§())
         {
            if(this.§4a§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §3!5§() : Dictionary
      {
         return this.§5h§;
      }
      
      public function get §@o§() : Boolean
      {
         return this.§^Y§;
      }
      
      public function set §@o§(param1:Boolean) : void
      {
         this.§^Y§ = param1;
      }
      
      public function get §,!,§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §-I§() : String
      {
         return this.§,§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§=e§ = null;
         var _loc7_:§=e§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §59§.§3;§)
         {
            return true;
         }
         if(this.§#!H§(param1) > 0)
         {
            return true;
         }
         if(this.§4a§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §59§.§+,§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §59§.§+,§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§#!H§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§4a§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §'§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §[0§(param1:String) : void
      {
      }
      
      public function §5i§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §9m§() : Dictionary
      {
         return this.§5h§;
      }
   }
}
