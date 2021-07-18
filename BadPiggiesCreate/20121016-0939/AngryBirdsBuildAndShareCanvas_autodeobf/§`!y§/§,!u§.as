package §`!y§
{
   import §"v§.§"! §;
   import §"v§.§3!w§;
   import §'@§.§^J§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §,!u§ extends EventDispatcher
   {
      
      protected static const §6"6§:Number = 1000;
      
      protected static const §0w§:Number = 60;
       
      
      protected var §>!$§:Dictionary;
      
      protected var §2!1§:Dictionary;
      
      protected var §'"-§:Dictionary;
      
      protected var §1'§:Dictionary;
      
      protected var §!h§:Boolean;
      
      protected var §@!N§:String;
      
      protected var §#y§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §,!u§(param1:String)
      {
         super();
         this.§#y§ = param1;
         this.§>!$§ = new Dictionary();
         this.§2!1§ = new Dictionary();
         this.§'"-§ = new Dictionary();
         this.§1'§ = new Dictionary();
         this.§!h§ = false;
      }
      
      private function §5!N§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§=c§));
         this.§@!N§ = null;
      }
      
      public function §'o§(param1:String) : Boolean
      {
         if(this.§@!N§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §^!G§() : String
      {
         var _loc1_:Number = §0w§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §0w§;
         var _loc3_:int = _loc1_ % §0w§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §%"0§(param1:String) : int
      {
         var _loc2_:§^J§ = null;
         if(this.§>!$§[param1])
         {
            _loc2_ = this.§>!$§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §2?§(param1:String) : int
      {
         var _loc2_:§^J§ = null;
         if(this.§2!1§[param1])
         {
            _loc2_ = this.§2!1§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §6&§(param1:String) : Boolean
      {
         if(this.§%"0§(param1) > 0 || this.§2?§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §>"1§(param1:String, param2:Boolean = true) : void
      {
         this.§'"-§[param1] = param2;
      }
      
      public function §^"9§(param1:String, param2:Boolean = true) : void
      {
         this.§1'§[param1] = param2;
      }
      
      public function §0!§(param1:String, param2:int) : void
      {
         var _loc3_:§^J§ = new §^J§(param2);
         this.§>!$§[param1] = _loc3_;
      }
      
      public function each(param1:String, param2:int) : void
      {
         var _loc3_:§^J§ = new §^J§(param2);
         this.§2!1§[param1] = _loc3_;
      }
      
      public function §&!;§(param1:String, param2:int = -1) : int
      {
         return §3!w§.§^"3§(param1,param2 != -1 ? int(param2) : int(this.§%"0§(param1)));
      }
      
      public function §3"=§(param1:§"! §) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3h§())
         {
            _loc2_ += this.§%"0§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §var §(param1:§"! §) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3h§())
         {
            _loc2_ += this.§&!;§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §3"'§() : int
      {
         var _loc3_:§"! § = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §3!w§.§!K§())
         {
            _loc3_ = §3!w§.§2I§(_loc2_);
            _loc4_ = this.§var §(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §08§(param1:§"! §) : int
      {
         return param1.§3h§().length * 3;
      }
      
      public function §%Y§(param1:§"! §) : int
      {
         return param1.§3h§().length;
      }
      
      public function §4w§(param1:§"! §) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3h§())
         {
            if(this.§2?§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §4!;§() : Dictionary
      {
         return this.§'"-§;
      }
      
      public function get §`";§() : Boolean
      {
         return this.§!h§;
      }
      
      public function set §`";§(param1:Boolean) : void
      {
         this.§!h§ = param1;
      }
      
      public function get §=!T§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §=6§() : String
      {
         return this.§@!N§;
      }
      
      public function §>1§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§"! § = null;
         var _loc7_:§"! § = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §3!w§.§ for§)
         {
            return true;
         }
         if(this.§%"0§(param1) > 0)
         {
            return true;
         }
         if(this.§2?§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §3!w§.§>! §(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §3!w§.§>! §(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§%"0§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§2?§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §>!o§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §3!p§(param1:String) : void
      {
      }
      
      public function §,v§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §^_§() : Dictionary
      {
         return this.§'"-§;
      }
   }
}
