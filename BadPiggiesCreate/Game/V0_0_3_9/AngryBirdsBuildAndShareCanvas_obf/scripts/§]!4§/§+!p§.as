package §]!4§
{
   import §!!A§.§""5§;
   import §6!&§.§1!c§;
   import §6!&§.§68§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §+!p§ extends EventDispatcher
   {
      
      protected static const §=!?§:Number = 1000;
      
      protected static const §!"0§:Number = 60;
       
      
      protected var § !g§:Dictionary;
      
      protected var §5! §:Dictionary;
      
      protected var §`^§:Dictionary;
      
      protected var §1!D§:Dictionary;
      
      protected var §-%§:Boolean;
      
      protected var §^!3§:String;
      
      protected var §]#§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §+!p§(param1:String)
      {
         super();
         this.§]#§ = param1;
         this.§ !g§ = new Dictionary();
         this.§5! § = new Dictionary();
         this.§`^§ = new Dictionary();
         this.§1!D§ = new Dictionary();
         this.§-%§ = false;
      }
      
      private function §[" §(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§2!f§));
         this.§^!3§ = null;
      }
      
      public function §=E§(param1:String) : Boolean
      {
         if(this.§^!3§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §9!2§() : String
      {
         var _loc1_:Number = §!"0§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §!"0§;
         var _loc3_:int = _loc1_ % §!"0§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §0!^§(param1:String) : int
      {
         var _loc2_:§""5§ = null;
         if(this.§ !g§[param1])
         {
            _loc2_ = this.§ !g§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,!z§(param1:String) : int
      {
         var _loc2_:§""5§ = null;
         if(this.§5! §[param1])
         {
            _loc2_ = this.§5! §[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §90§(param1:String) : Boolean
      {
         if(this.§0!^§(param1) > 0 || this.§,!z§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §=W§(param1:String, param2:Boolean = true) : void
      {
         this.§`^§[param1] = param2;
      }
      
      public function §6!+§(param1:String, param2:Boolean = true) : void
      {
         this.§1!D§[param1] = param2;
      }
      
      public function §0"&§(param1:String, param2:int) : void
      {
         var _loc3_:§""5§ = new §""5§(param2);
         this.§ !g§[param1] = _loc3_;
      }
      
      public function §"!=§(param1:String, param2:int) : void
      {
         var _loc3_:§""5§ = new §""5§(param2);
         this.§5! §[param1] = _loc3_;
      }
      
      public function §'!5§(param1:String, param2:int = -1) : int
      {
         return §1!c§.§!t§(param1,param2 != -1 ? int(param2) : int(this.§0!^§(param1)));
      }
      
      public function §0J§(param1:§68§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§]!C§())
         {
            _loc2_ += this.§0!^§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §[l§(param1:§68§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§]!C§())
         {
            _loc2_ += this.§'!5§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §`!g§() : int
      {
         var _loc3_:§68§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §1!c§.§7m§())
         {
            _loc3_ = §1!c§.§?a§(_loc2_);
            _loc4_ = this.§[l§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §9"4§(param1:§68§) : int
      {
         return param1.§]!C§().length * 3;
      }
      
      public function §8]§(param1:§68§) : int
      {
         return param1.§]!C§().length;
      }
      
      public function §;!E§(param1:§68§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§]!C§())
         {
            if(this.§,!z§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §9$§() : Dictionary
      {
         return this.§`^§;
      }
      
      public function get §&!;§() : Boolean
      {
         return this.§-%§;
      }
      
      public function set §&!;§(param1:Boolean) : void
      {
         this.§-%§ = param1;
      }
      
      public function get §,d§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §%1§() : String
      {
         return this.§^!3§;
      }
      
      public function §2T§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§68§ = null;
         var _loc7_:§68§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §1!c§.§&@§)
         {
            return true;
         }
         if(this.§0!^§(param1) > 0)
         {
            return true;
         }
         if(this.§,!z§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §1!c§.§!F§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §1!c§.§!F§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§0!^§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§,!z§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §6!j§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §<![§(param1:String) : void
      {
      }
      
      public function §'!8§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §"!V§() : Dictionary
      {
         return this.§`^§;
      }
   }
}
