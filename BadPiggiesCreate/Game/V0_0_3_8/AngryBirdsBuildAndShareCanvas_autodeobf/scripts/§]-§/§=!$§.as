package §]-§
{
   import §'!O§.§=!w§;
   import §'!O§.§[!m§;
   import §,E§.§ t§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §=!$§ extends EventDispatcher
   {
      
      protected static const §8""§:Number = 1000;
      
      protected static const §5!N§:Number = 60;
       
      
      protected var §]!H§:Dictionary;
      
      protected var §7R§:Dictionary;
      
      protected var §'!C§:Dictionary;
      
      protected var §+Z§:Dictionary;
      
      protected var §&"$§:Boolean;
      
      protected var §=![§:String;
      
      protected var §[c§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §=!$§(param1:String)
      {
         super();
         this.§[c§ = param1;
         this.§]!H§ = new Dictionary();
         this.§7R§ = new Dictionary();
         this.§'!C§ = new Dictionary();
         this.§+Z§ = new Dictionary();
         this.§&"$§ = false;
      }
      
      private function §;!!§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§-m§));
         this.§=![§ = null;
      }
      
      public function § ![§(param1:String) : Boolean
      {
         if(this.§=![§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §6$§() : String
      {
         var _loc1_:Number = §5!N§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §5!N§;
         var _loc3_:int = _loc1_ % §5!N§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §]!Q§(param1:String) : int
      {
         var _loc2_:§ t§ = null;
         if(this.§]!H§[param1])
         {
            _loc2_ = this.§]!H§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7!$§(param1:String) : int
      {
         var _loc2_:§ t§ = null;
         if(this.§7R§[param1])
         {
            _loc2_ = this.§7R§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8h§(param1:String) : Boolean
      {
         if(this.§]!Q§(param1) > 0 || this.§7!$§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §"i§(param1:String, param2:Boolean = true) : void
      {
         this.§'!C§[param1] = param2;
      }
      
      public function §3!R§(param1:String, param2:Boolean = true) : void
      {
         this.§+Z§[param1] = param2;
      }
      
      public function §8"#§(param1:String, param2:int) : void
      {
         var _loc3_:§ t§ = new § t§(param2);
         this.§]!H§[param1] = _loc3_;
      }
      
      public function §5!i§(param1:String, param2:int) : void
      {
         var _loc3_:§ t§ = new § t§(param2);
         this.§7R§[param1] = _loc3_;
      }
      
      public function §4!z§(param1:String, param2:int = -1) : int
      {
         return §[!m§.§`p§(param1,param2 != -1 ? int(param2) : int(this.§]!Q§(param1)));
      }
      
      public function §#!&§(param1:§=!w§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&!c§())
         {
            _loc2_ += this.§]!Q§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §!!W§(param1:§=!w§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&!c§())
         {
            _loc2_ += this.§4!z§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §%D§() : int
      {
         var _loc3_:§=!w§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §[!m§.§ !l§())
         {
            _loc3_ = §[!m§.§3!n§(_loc2_);
            _loc4_ = this.§!!W§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §<M§(param1:§=!w§) : int
      {
         return param1.§&!c§().length * 3;
      }
      
      public function §1!V§(param1:§=!w§) : int
      {
         return param1.§&!c§().length;
      }
      
      public function §%! §(param1:§=!w§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§&!c§())
         {
            if(this.§7!$§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §7o§() : Dictionary
      {
         return this.§'!C§;
      }
      
      public function get §^!8§() : Boolean
      {
         return this.§&"$§;
      }
      
      public function set §^!8§(param1:Boolean) : void
      {
         this.§&"$§ = param1;
      }
      
      public function get §;!<§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §5!Z§() : String
      {
         return this.§=![§;
      }
      
      public function §8!&§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§=!w§ = null;
         var _loc7_:§=!w§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §[!m§.§6H§)
         {
            return true;
         }
         if(this.§]!Q§(param1) > 0)
         {
            return true;
         }
         if(this.§7!$§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §[!m§.§?!S§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §[!m§.§?!S§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§]!Q§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§7!$§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §^0§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §8U§(param1:String) : void
      {
      }
      
      public function §3!c§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §'!W§() : Dictionary
      {
         return this.§'!C§;
      }
   }
}
