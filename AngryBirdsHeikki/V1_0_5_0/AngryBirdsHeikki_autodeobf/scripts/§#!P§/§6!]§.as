package §#!P§
{
   import §=!S§.§#!K§;
   import §=X§.§7!4§;
   import §=X§.§?2§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §6!]§ extends EventDispatcher
   {
      
      protected static const §>!1§:Number = 1000;
      
      protected static const §0!5§:Number = 60;
       
      
      protected var §5!C§:Dictionary;
      
      protected var §7M§:Dictionary;
      
      protected var §]#§:Dictionary;
      
      protected var §2!>§:Dictionary;
      
      protected var §^!E§:Boolean;
      
      protected var §2!C§:String;
      
      protected var §+2§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §6!]§(param1:String)
      {
         super();
         this.§+2§ = param1;
         this.§5!C§ = new Dictionary();
         this.§7M§ = new Dictionary();
         this.§]#§ = new Dictionary();
         this.§2!>§ = new Dictionary();
         this.§^!E§ = false;
      }
      
      private function §^!C§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§8U§));
         this.§2!C§ = null;
      }
      
      public function §null §(param1:String) : Boolean
      {
         if(this.§2!C§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §^0§() : String
      {
         var _loc1_:Number = §0!5§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §0!5§;
         var _loc3_:int = _loc1_ % §0!5§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §+,§(param1:String) : int
      {
         var _loc2_:§#!K§ = null;
         if(this.§5!C§[param1])
         {
            _loc2_ = this.§5!C§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §"!R§(param1:String) : int
      {
         var _loc2_:§#!K§ = null;
         if(this.§7M§[param1])
         {
            _loc2_ = this.§7M§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function § _§(param1:String) : Boolean
      {
         if(this.§+,§(param1) > 0 || this.§"!R§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §!!7§(param1:String, param2:Boolean = true) : void
      {
         this.§]#§[param1] = param2;
      }
      
      public function §!D§(param1:String, param2:Boolean = true) : void
      {
         this.§2!>§[param1] = param2;
      }
      
      public function §,R§(param1:String, param2:int) : void
      {
         var _loc3_:§#!K§ = new §#!K§(param2);
         this.§5!C§[param1] = _loc3_;
      }
      
      public function §&!&§(param1:String, param2:int) : void
      {
         var _loc3_:§#!K§ = new §#!K§(param2);
         this.§7M§[param1] = _loc3_;
      }
      
      public function §[I§(param1:String, param2:int = -1) : int
      {
         return §7!4§.§'P§(param1,param2 != -1 ? int(param2) : int(this.§+,§(param1)));
      }
      
      public function §%!'§(param1:§?2§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§]!8§())
         {
            _loc2_ += this.§+,§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7!,§(param1:§?2§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§]!8§())
         {
            _loc2_ += this.§[I§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'v§() : int
      {
         var _loc3_:§?2§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §7!4§.§6H§())
         {
            _loc3_ = §7!4§.§;!@§(_loc2_);
            _loc4_ = this.§7!,§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §`!V§(param1:§?2§) : int
      {
         return param1.§]!8§().length * 3;
      }
      
      public function §<i§(param1:§?2§) : int
      {
         return param1.§]!8§().length;
      }
      
      public function §4!X§(param1:§?2§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§]!8§())
         {
            if(this.§"!R§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §]!J§() : Dictionary
      {
         return this.§]#§;
      }
      
      public function get §]o§() : Boolean
      {
         return this.§^!E§;
      }
      
      public function set §]o§(param1:Boolean) : void
      {
         this.§^!E§ = param1;
      }
      
      public function get §2f§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §!y§() : String
      {
         return this.§2!C§;
      }
      
      public function §]f§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§?2§ = null;
         var _loc7_:§?2§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §7!4§.§]?§)
         {
            return true;
         }
         if(this.§+,§(param1) > 0)
         {
            return true;
         }
         if(this.§"!R§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §7!4§.§;!9§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §7!4§.§;!9§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§+,§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§"!R§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §#x§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §1!^§() : Dictionary
      {
         return this.§]#§;
      }
   }
}
