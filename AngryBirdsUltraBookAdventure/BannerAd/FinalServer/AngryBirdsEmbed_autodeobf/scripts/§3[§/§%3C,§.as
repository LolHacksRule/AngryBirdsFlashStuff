package §3[§
{
   import §4!H§.§?_§;
   import §6J§.§5j§;
   import §6J§.§?S§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<,§ extends EventDispatcher
   {
      
      protected static const §"!D§:Number = 1000;
      
      protected static const §9!E§:Number = 60;
       
      
      protected var §^C§:Dictionary;
      
      protected var §3n§:Dictionary;
      
      protected var § !8§:Dictionary;
      
      protected var §^!'§:Dictionary;
      
      protected var §-9§:Boolean;
      
      protected var §>!7§:String;
      
      protected var §;6§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<,§(param1:String)
      {
         super();
         this.§;6§ = param1;
         this.§^C§ = new Dictionary();
         this.§3n§ = new Dictionary();
         this.§ !8§ = new Dictionary();
         this.§^!'§ = new Dictionary();
         this.§-9§ = false;
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§'!7§));
         this.§>!7§ = null;
      }
      
      public function §&4§(param1:String) : Boolean
      {
         if(this.§>!7§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §1w§() : String
      {
         var _loc1_:Number = §9!E§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §9!E§;
         var _loc3_:int = _loc1_ % §9!E§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function § X§(param1:String) : int
      {
         var _loc2_:§?_§ = null;
         if(this.§^C§[param1])
         {
            _loc2_ = this.§^C§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function § !&§(param1:String) : int
      {
         var _loc2_:§?_§ = null;
         if(this.§3n§[param1])
         {
            _loc2_ = this.§3n§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§ X§(param1) > 0 || this.§ !&§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §@j§(param1:String, param2:Boolean = true) : void
      {
         this.§ !8§[param1] = param2;
      }
      
      public function §0u§(param1:String, param2:Boolean = true) : void
      {
         this.§^!'§[param1] = param2;
      }
      
      public function §1!%§(param1:String, param2:int) : void
      {
         var _loc3_:§?_§ = new §?_§(param2);
         this.§^C§[param1] = _loc3_;
      }
      
      public function §]!'§(param1:String, param2:int) : void
      {
         var _loc3_:§?_§ = new §?_§(param2);
         this.§3n§[param1] = _loc3_;
      }
      
      public function §7!"§(param1:String, param2:int = -1) : int
      {
         return §5j§.§"n§(param1,param2 != -1 ? int(param2) : int(this.§ X§(param1)));
      }
      
      public function §8h§(param1:§?S§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=$§())
         {
            _loc2_ += this.§ X§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §<!;§(param1:§?S§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=$§())
         {
            _loc2_ += this.§7!"§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@!%§() : int
      {
         var _loc3_:§?S§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §5j§.§,5§())
         {
            _loc3_ = §5j§.§^!E§(_loc2_);
            _loc4_ = this.§<!;§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1'§(param1:§?S§) : int
      {
         return param1.§=$§().length * 3;
      }
      
      public function §,$§(param1:§?S§) : int
      {
         return param1.§=$§().length;
      }
      
      public function §]k§(param1:§?S§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§=$§())
         {
            if(this.§ !&§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §]!9§() : Dictionary
      {
         return this.§ !8§;
      }
      
      public function get §`i§() : Boolean
      {
         return this.§-9§;
      }
      
      public function set §`i§(param1:Boolean) : void
      {
         this.§-9§ = param1;
      }
      
      public function get §2`§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §'R§() : String
      {
         return this.§>!7§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§?S§ = null;
         var _loc7_:§?S§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §5j§.§9t§)
         {
            return true;
         }
         if(this.§ X§(param1) > 0)
         {
            return true;
         }
         if(this.§ !&§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §5j§.§^!>§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §5j§.§^!>§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§ X§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§ !&§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §2!H§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §!G§(param1:String) : void
      {
      }
      
      public function §=&§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §>!&§() : Dictionary
      {
         return this.§ !8§;
      }
   }
}
