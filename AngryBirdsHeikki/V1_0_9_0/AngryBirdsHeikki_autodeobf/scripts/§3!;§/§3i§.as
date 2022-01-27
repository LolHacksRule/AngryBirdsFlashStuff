package §3!;§
{
   import §3r§.§1S§;
   import §8! §.§#z§;
   import §8! §.§'j§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §3i§ extends EventDispatcher
   {
      
      protected static const §4!b§:Number = 1000;
      
      protected static const §#n§:Number = 60;
       
      
      protected var §1d§:Dictionary;
      
      protected var §0!N§:Dictionary;
      
      protected var §9+§:Dictionary;
      
      protected var §8!^§:Dictionary;
      
      protected var §[s§:Boolean;
      
      protected var §=1§:String;
      
      protected var §6!?§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §3i§(param1:String)
      {
         super();
         this.§6!?§ = param1;
         this.§1d§ = new Dictionary();
         this.§0!N§ = new Dictionary();
         this.§9+§ = new Dictionary();
         this.§8!^§ = new Dictionary();
         this.§[s§ = false;
      }
      
      private function §#!&§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§ l§));
         this.§=1§ = null;
      }
      
      public function §6!W§(param1:String) : Boolean
      {
         if(this.§=1§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §%!b§() : String
      {
         var _loc1_:Number = §#n§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §#n§;
         var _loc3_:int = _loc1_ % §#n§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §5!D§(param1:String) : int
      {
         var _loc2_:§1S§ = null;
         if(this.§1d§[param1])
         {
            _loc2_ = this.§1d§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §"h§(param1:String) : int
      {
         var _loc2_:§1S§ = null;
         if(this.§0!N§[param1])
         {
            _loc2_ = this.§0!N§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §5!0§(param1:String) : Boolean
      {
         if(this.§5!D§(param1) > 0 || this.§"h§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §]!W§(param1:String, param2:Boolean = true) : void
      {
         this.§9+§[param1] = param2;
      }
      
      public function §2!f§(param1:String, param2:Boolean = true) : void
      {
         this.§8!^§[param1] = param2;
      }
      
      public function §1P§(param1:String, param2:int) : void
      {
         var _loc3_:§1S§ = new §1S§(param2);
         this.§1d§[param1] = _loc3_;
      }
      
      public function §[!;§(param1:String, param2:int) : void
      {
         var _loc3_:§1S§ = new §1S§(param2);
         this.§0!N§[param1] = _loc3_;
      }
      
      public function §5!2§(param1:String, param2:int = -1) : int
      {
         return §#z§.§ !§(param1,param2 != -1 ? int(param2) : int(this.§5!D§(param1)));
      }
      
      public function §8!9§(param1:§'j§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§8N§())
         {
            _loc2_ += this.§5!D§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7!#§(param1:§'j§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§8N§())
         {
            _loc2_ += this.§5!2§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8!"§() : int
      {
         var _loc3_:§'j§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §#z§.§`&§())
         {
            _loc3_ = §#z§.§@! §(_loc2_);
            _loc4_ = this.§7!#§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §@l§(param1:§'j§) : int
      {
         return param1.§8N§().length * 3;
      }
      
      public function §0!;§(param1:§'j§) : int
      {
         return param1.§8N§().length;
      }
      
      public function §=!;§(param1:§'j§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§8N§())
         {
            if(this.§"h§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §7!c§() : Dictionary
      {
         return this.§9+§;
      }
      
      public function get §,!<§() : Boolean
      {
         return this.§[s§;
      }
      
      public function set §,!<§(param1:Boolean) : void
      {
         this.§[s§ = param1;
      }
      
      public function get §]f§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §[!<§() : String
      {
         return this.§=1§;
      }
      
      public function §5Q§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§'j§ = null;
         var _loc7_:§'j§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §#z§.§?m§)
         {
            return true;
         }
         if(this.§5!D§(param1) > 0)
         {
            return true;
         }
         if(this.§"h§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §#z§.§"!I§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §#z§.§"!I§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§5!D§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§"h§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §61§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §8x§() : Dictionary
      {
         return this.§9+§;
      }
   }
}
