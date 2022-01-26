package §`!,§
{
   import §;f§.§&#§;
   import §;f§.§9y§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import §try§.§8!;§;
   
   public class §,O§ extends EventDispatcher
   {
      
      protected static const §[7§:Number = 1000;
      
      protected static const §+!&§:Number = 60;
       
      
      protected var §9!"§:Dictionary;
      
      protected var §+u§:Dictionary;
      
      protected var §?#§:Dictionary;
      
      protected var §7N§:Dictionary;
      
      protected var §!q§:Boolean;
      
      protected var §!!'§:String;
      
      protected var §!!F§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §,O§(param1:String)
      {
         super();
         this.§!!F§ = param1;
         this.§9!"§ = new Dictionary();
         this.§+u§ = new Dictionary();
         this.§?#§ = new Dictionary();
         this.§7N§ = new Dictionary();
         this.§!q§ = false;
      }
      
      private function §,!"§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3V§));
         this.§!!'§ = null;
      }
      
      public function §;6§(param1:String) : Boolean
      {
         if(this.§!!'§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §+P§() : String
      {
         var _loc1_:Number = §+!&§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §+!&§;
         var _loc3_:int = _loc1_ % §+!&§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §?p§(param1:String) : int
      {
         var _loc2_:§8!;§ = null;
         if(this.§9!"§[param1])
         {
            _loc2_ = this.§9!"§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7!;§(param1:String) : int
      {
         var _loc2_:§8!;§ = null;
         if(this.§+u§[param1])
         {
            _loc2_ = this.§+u§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§?p§(param1) > 0 || this.§7!;§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §=$§(param1:String, param2:Boolean = true) : void
      {
         this.§?#§[param1] = param2;
      }
      
      public function §!!-§(param1:String, param2:Boolean = true) : void
      {
         this.§?#§[param1] = param2;
      }
      
      public function §;!7§(param1:String, param2:int) : void
      {
         var _loc3_:§8!;§ = new §8!;§(param2);
         this.§9!"§[param1] = _loc3_;
      }
      
      public function §%W§(param1:String, param2:int) : void
      {
         var _loc3_:§8!;§ = new §8!;§(param2);
         this.§+u§[param1] = _loc3_;
      }
      
      public function §9!F§(param1:String, param2:int = -1) : int
      {
         return §&#§.§3I§(param1,param2 != -1 ? int(param2) : int(this.§?p§(param1)));
      }
      
      public function §^!-§(param1:§9y§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§if §())
         {
            _loc2_ += this.§?p§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §;Y§(param1:§9y§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§if §())
         {
            _loc2_ += this.§9!F§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@z§() : int
      {
         var _loc3_:§9y§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §&#§.§5[§())
         {
            _loc3_ = §&#§.§0+§(_loc2_);
            _loc4_ = this.§;Y§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`!4§(param1:§9y§) : int
      {
         return param1.§if §().length * 3;
      }
      
      public function §5;§(param1:§9y§) : int
      {
         return param1.§if §().length;
      }
      
      public function §+;§(param1:§9y§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§if §())
         {
            if(this.§7!;§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §'!;§() : Dictionary
      {
         return this.§?#§;
      }
      
      public function get §`n§() : Dictionary
      {
         return this.§?#§;
      }
      
      public function get §`l§() : Boolean
      {
         return this.§!q§;
      }
      
      public function set §`l§(param1:Boolean) : void
      {
         this.§!q§ = param1;
      }
      
      public function get §8!3§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §"!3§() : String
      {
         return this.§!!'§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§9y§ = null;
         var _loc7_:§9y§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §&#§.§-G§)
         {
            return true;
         }
         if(this.§?p§(param1) > 0)
         {
            return true;
         }
         if(this.§7!;§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §&#§.§+!3§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §&#§.§+!3§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§?p§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§7!;§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function § N§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
   }
}
