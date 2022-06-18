package get
{
   import §<!@§.§!P§;
   import §<!@§.§#c§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import §while§.§03§;
   
   public class §^F§ extends EventDispatcher
   {
      
      protected static const §!!<§:Number = 1000;
      
      protected static const §4`§:Number = 60;
       
      
      protected var §2p§:Dictionary;
      
      protected var §8p§:Dictionary;
      
      protected var §?J§:Dictionary;
      
      protected var §%%§:Dictionary;
      
      protected var §?H§:Boolean;
      
      protected var §6I§:String;
      
      protected var §[!2§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §^F§(param1:String)
      {
         super();
         this.§[!2§ = param1;
         this.§2p§ = new Dictionary();
         this.§8p§ = new Dictionary();
         this.§?J§ = new Dictionary();
         this.§%%§ = new Dictionary();
         this.§?H§ = false;
      }
      
      private function §6!5§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§;'§));
         this.§6I§ = null;
      }
      
      public function §<x§(param1:String) : Boolean
      {
         if(this.§6I§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §<!3§() : String
      {
         var _loc1_:Number = §4`§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §4`§;
         var _loc3_:int = _loc1_ % §4`§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §10§(param1:String) : int
      {
         var _loc2_:§03§ = null;
         if(this.§2p§[param1])
         {
            _loc2_ = this.§2p§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!4§(param1:String) : int
      {
         var _loc2_:§03§ = null;
         if(this.§8p§[param1])
         {
            _loc2_ = this.§8p§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§10§(param1) > 0 || this.§8!4§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §7I§(param1:String, param2:Boolean = true) : void
      {
         this.§?J§[param1] = param2;
      }
      
      public function §1§(param1:String, param2:Boolean = true) : void
      {
         this.§?J§[param1] = param2;
      }
      
      public function §?I§(param1:String, param2:int) : void
      {
         var _loc3_:§03§ = new §03§(param2);
         this.§2p§[param1] = _loc3_;
      }
      
      public function §-H§(param1:String, param2:int) : void
      {
         var _loc3_:§03§ = new §03§(param2);
         this.§8p§[param1] = _loc3_;
      }
      
      public function §<!?§(param1:String, param2:int = -1) : int
      {
         return §!P§.§3!H§(param1,param2 != -1 ? int(param2) : int(this.§10§(param1)));
      }
      
      public function §;A§(param1:§#c§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5%§())
         {
            _loc2_ += this.§10§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@E§(param1:§#c§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5%§())
         {
            _loc2_ += this.§<!?§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §?!!§() : int
      {
         var _loc3_:§#c§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §!P§.§0V§())
         {
            _loc3_ = §!P§.§[]§(_loc2_);
            _loc4_ = this.§@E§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function § T§(param1:§#c§) : int
      {
         return param1.§5%§().length * 3;
      }
      
      public function §!!D§(param1:§#c§) : int
      {
         return param1.§5%§().length;
      }
      
      public function §!B§(param1:§#c§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§5%§())
         {
            if(this.§8!4§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §9o§() : Dictionary
      {
         return this.§?J§;
      }
      
      public function get §0H§() : Dictionary
      {
         return this.§?J§;
      }
      
      public function get § 9§() : Boolean
      {
         return this.§?H§;
      }
      
      public function set § 9§(param1:Boolean) : void
      {
         this.§?H§ = param1;
      }
      
      public function get §<f§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §^!6§() : String
      {
         return this.§6I§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§#c§ = null;
         var _loc7_:§#c§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §!P§.§+U§)
         {
            return true;
         }
         if(this.§10§(param1) > 0)
         {
            return true;
         }
         if(this.§8!4§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §!P§.§5K§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §!P§.§5K§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§10§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§8!4§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §9!6§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
