package §!V§
{
   import §3y§.§"!G§;
   import §?j§.§!E§;
   import §?j§.§`R§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §%Y§ extends EventDispatcher
   {
      
      protected static const §[&§:Number = 1000;
      
      protected static const §?!0§:Number = 60;
       
      
      protected var §`%§:Dictionary;
      
      protected var §6q§:Dictionary;
      
      protected var §3!+§:Dictionary;
      
      protected var §"!4§:Dictionary;
      
      protected var §?!D§:Boolean;
      
      protected var §8N§:String;
      
      protected var §-J§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §%Y§(param1:String)
      {
         super();
         this.§-J§ = param1;
         this.§`%§ = new Dictionary();
         this.§6q§ = new Dictionary();
         this.§3!+§ = new Dictionary();
         this.§"!4§ = new Dictionary();
         this.§?!D§ = false;
      }
      
      private function §1!F§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§;e§));
         this.§8N§ = null;
      }
      
      public function §-l§(param1:String) : Boolean
      {
         if(this.§8N§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §extends§() : String
      {
         var _loc1_:Number = §?!0§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §?!0§;
         var _loc3_:int = _loc1_ % §?!0§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §[!M§(param1:String) : int
      {
         var _loc2_:§"!G§ = null;
         if(this.§`%§[param1])
         {
            _loc2_ = this.§`%§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §!!#§(param1:String) : int
      {
         var _loc2_:§"!G§ = null;
         if(this.§6q§[param1])
         {
            _loc2_ = this.§6q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§[!M§(param1) > 0 || this.§!!#§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §+L§(param1:String, param2:Boolean = true) : void
      {
         this.§3!+§[param1] = param2;
      }
      
      public function §!w§(param1:String, param2:Boolean = true) : void
      {
         this.§"!4§[param1] = param2;
      }
      
      public function §^g§(param1:String, param2:int) : void
      {
         var _loc3_:§"!G§ = new §"!G§(param2);
         this.§`%§[param1] = _loc3_;
      }
      
      public function §[x§(param1:String, param2:int) : void
      {
         var _loc3_:§"!G§ = new §"!G§(param2);
         this.§6q§[param1] = _loc3_;
      }
      
      public function §3!3§(param1:String, param2:int = -1) : int
      {
         return §`R§.§-'§(param1,param2 != -1 ? int(param2) : int(this.§[!M§(param1)));
      }
      
      public function §4@§(param1:§!E§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0C§())
         {
            _loc2_ += this.§[!M§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9q§(param1:§!E§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0C§())
         {
            _loc2_ += this.§3!3§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §+!&§() : int
      {
         var _loc3_:§!E§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §`R§.§[<§())
         {
            _loc3_ = §`R§.§<!I§(_loc2_);
            _loc4_ = this.§9q§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §=!5§(param1:§!E§) : int
      {
         return param1.§0C§().length * 3;
      }
      
      public function §^6§(param1:§!E§) : int
      {
         return param1.§0C§().length;
      }
      
      public function §5!9§(param1:§!E§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0C§())
         {
            if(this.§!!#§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §6!0§() : Dictionary
      {
         return this.§3!+§;
      }
      
      public function get §`4§() : Boolean
      {
         return this.§?!D§;
      }
      
      public function set §`4§(param1:Boolean) : void
      {
         this.§?!D§ = param1;
      }
      
      public function get §@5§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §9!2§() : String
      {
         return this.§8N§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§!E§ = null;
         var _loc7_:§!E§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §`R§.§ !>§)
         {
            return true;
         }
         if(this.§[!M§(param1) > 0)
         {
            return true;
         }
         if(this.§!!#§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §`R§.§!?§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §`R§.§!?§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§[!M§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§!!#§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §?u§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function § !P§(param1:String) : void
      {
      }
      
      public function §16§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §@!9§() : Dictionary
      {
         return this.§3!+§;
      }
   }
}
