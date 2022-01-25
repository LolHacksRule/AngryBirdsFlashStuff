package §-@§
{
   import §#!q§.§6!I§;
   import §-!F§.§2[§;
   import §-!F§.§>!H§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §5p§ extends EventDispatcher
   {
      
      protected static const §2!e§:Number = 1000;
      
      protected static const §?i§:Number = 60;
       
      
      protected var §0!e§:Dictionary;
      
      protected var §,!P§:Dictionary;
      
      protected var §0!=§:Dictionary;
      
      protected var §%! §:Dictionary;
      
      protected var §-q§:Boolean;
      
      protected var §4s§:String;
      
      protected var §^! §:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §5p§(param1:String)
      {
         super();
         this.§^! § = param1;
         this.§0!e§ = new Dictionary();
         this.§,!P§ = new Dictionary();
         this.§0!=§ = new Dictionary();
         this.§%! § = new Dictionary();
         this.§-q§ = false;
      }
      
      private function §3J§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§3s§));
         this.§4s§ = null;
      }
      
      public function §@8§(param1:String) : Boolean
      {
         if(this.§4s§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4!n§() : String
      {
         var _loc1_:Number = §?i§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §?i§;
         var _loc3_:int = _loc1_ % §?i§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §<!d§(param1:String) : int
      {
         var _loc2_:§6!I§ = null;
         if(this.§0!e§[param1])
         {
            _loc2_ = this.§0!e§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7!A§(param1:String) : int
      {
         var _loc2_:§6!I§ = null;
         if(this.§,!P§[param1])
         {
            _loc2_ = this.§,!P§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §&!m§(param1:String) : Boolean
      {
         if(this.§<!d§(param1) > 0 || this.§7!A§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §!x§(param1:String, param2:Boolean = true) : void
      {
         this.§0!=§[param1] = param2;
      }
      
      public function §&!o§(param1:String, param2:Boolean = true) : void
      {
         this.§%! §[param1] = param2;
      }
      
      public function §6c§(param1:String, param2:int) : void
      {
         var _loc3_:§6!I§ = new §6!I§(param2);
         this.§0!e§[param1] = _loc3_;
      }
      
      public function §[y§(param1:String, param2:int) : void
      {
         var _loc3_:§6!I§ = new §6!I§(param2);
         this.§,!P§[param1] = _loc3_;
      }
      
      public function §&I§(param1:String, param2:int = -1) : int
      {
         return §2[§.§,n§(param1,param2 != -1 ? int(param2) : int(this.§<!d§(param1)));
      }
      
      public function §'e§(param1:§>!H§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^y§())
         {
            _loc2_ += this.§<!d§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §5!'§(param1:§>!H§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^y§())
         {
            _loc2_ += this.§&I§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §=!'§() : int
      {
         var _loc3_:§>!H§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §2[§.§5?§())
         {
            _loc3_ = §2[§.§]!=§(_loc2_);
            _loc4_ = this.§5!'§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §@!I§(param1:§>!H§) : int
      {
         return param1.§^y§().length * 3;
      }
      
      public function §=!p§(param1:§>!H§) : int
      {
         return param1.§^y§().length;
      }
      
      public function §@!j§(param1:§>!H§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§^y§())
         {
            if(this.§7!A§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`1§() : Dictionary
      {
         return this.§0!=§;
      }
      
      public function get §^e§() : Boolean
      {
         return this.§-q§;
      }
      
      public function set §^e§(param1:Boolean) : void
      {
         this.§-q§ = param1;
      }
      
      public function get §2E§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get each() : String
      {
         return this.§4s§;
      }
      
      public function §,9§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§>!H§ = null;
         var _loc7_:§>!H§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §2[§.§#n§)
         {
            return true;
         }
         if(this.§<!d§(param1) > 0)
         {
            return true;
         }
         if(this.§7!A§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §2[§.§+T§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §2[§.§+T§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§<!d§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§7!A§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §5!A§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §>!'§() : Dictionary
      {
         return this.§0!=§;
      }
   }
}
