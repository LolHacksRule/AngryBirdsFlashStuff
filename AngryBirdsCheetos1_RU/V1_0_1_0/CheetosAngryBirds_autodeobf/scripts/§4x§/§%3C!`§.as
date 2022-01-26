package §4X§
{
   import §>8§.§+!&§;
   import §>8§.§?2§;
   import §`!@§.§^v§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<!`§ extends EventDispatcher
   {
      
      protected static const §09§:Number = 1000;
      
      protected static const §[!@§:Number = 60;
       
      
      protected var §-E§:Dictionary;
      
      protected var §!!B§:Dictionary;
      
      protected var §5!E§:Dictionary;
      
      protected var §2A§:Dictionary;
      
      protected var §=m§:Boolean;
      
      protected var §"!K§:String;
      
      protected var §1d§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<!`§(param1:String)
      {
         super();
         this.§1d§ = param1;
         this.§-E§ = new Dictionary();
         this.§!!B§ = new Dictionary();
         this.§5!E§ = new Dictionary();
         this.§2A§ = new Dictionary();
         this.§=m§ = false;
      }
      
      private function §04§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§#N§));
         this.§"!K§ = null;
      }
      
      public function §3!,§(param1:String) : Boolean
      {
         if(this.§"!K§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §3!5§() : String
      {
         var _loc1_:Number = §[!@§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §[!@§;
         var _loc3_:int = _loc1_ % §[!@§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §!h§(param1:String) : int
      {
         var _loc2_:§^v§ = null;
         if(this.§-E§[param1])
         {
            _loc2_ = this.§-E§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4%§(param1:String) : int
      {
         var _loc2_:§^v§ = null;
         if(this.§!!B§[param1])
         {
            _loc2_ = this.§!!B§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §2`§(param1:String) : Boolean
      {
         if(this.§!h§(param1) > 0 || this.§4%§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §=!W§(param1:String, param2:Boolean = true) : void
      {
         this.§5!E§[param1] = param2;
      }
      
      public function §^A§(param1:String, param2:Boolean = true) : void
      {
         this.§2A§[param1] = param2;
      }
      
      public function §1V§(param1:String, param2:int) : void
      {
         var _loc3_:§^v§ = new §^v§(param2);
         this.§-E§[param1] = _loc3_;
      }
      
      public function §?!K§(param1:String, param2:int) : void
      {
         var _loc3_:§^v§ = new §^v§(param2);
         this.§!!B§[param1] = _loc3_;
      }
      
      public function §8!3§(param1:String, param2:int = -1) : int
      {
         return §?2§.§#!E§(param1,param2 != -1 ? int(param2) : int(this.§!h§(param1)));
      }
      
      public function §3!Z§(param1:§+!&§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5!X§())
         {
            _loc2_ += this.§!h§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §6!E§(param1:§+!&§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5!X§())
         {
            _loc2_ += this.§8!3§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8y§() : int
      {
         var _loc3_:§+!&§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §?2§.§'^§())
         {
            _loc3_ = §?2§.§<,§(_loc2_);
            _loc4_ = this.§6!E§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §"!J§(param1:§+!&§) : int
      {
         return param1.§5!X§().length * 3;
      }
      
      public function §=p§(param1:§+!&§) : int
      {
         return param1.§5!X§().length;
      }
      
      public function §=!S§(param1:§+!&§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5!X§())
         {
            if(this.§4%§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §"!]§() : Dictionary
      {
         return this.§5!E§;
      }
      
      public function get §>!?§() : Boolean
      {
         return this.§=m§;
      }
      
      public function set §>!?§(param1:Boolean) : void
      {
         this.§=m§ = param1;
      }
      
      public function get §-p§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §"!§() : String
      {
         return this.§"!K§;
      }
      
      public function §?W§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§+!&§ = null;
         var _loc7_:§+!&§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §?2§.§ try§)
         {
            return true;
         }
         if(this.§!h§(param1) > 0)
         {
            return true;
         }
         if(this.§4%§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §?2§.§?!I§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §?2§.§?!I§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§!h§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§4%§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §"!#§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §>!W§(param1:String) : void
      {
      }
      
      public function §8!2§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §8O§() : Dictionary
      {
         return this.§5!E§;
      }
   }
}
