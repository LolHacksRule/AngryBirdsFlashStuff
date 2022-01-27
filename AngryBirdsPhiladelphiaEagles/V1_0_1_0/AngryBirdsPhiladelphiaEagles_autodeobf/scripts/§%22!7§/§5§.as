package §"!7§
{
   import §"I§.§,&§;
   import §5=§.§-+§;
   import §5=§.§^n§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §5§ extends EventDispatcher
   {
      
      protected static const §0!H§:Number = 1000;
      
      protected static const §^V§:Number = 60;
       
      
      protected var §=!K§:Dictionary;
      
      protected var § !Q§:Dictionary;
      
      protected var §;6§:Dictionary;
      
      protected var §4Q§:Dictionary;
      
      protected var §4@§:Boolean;
      
      protected var §7!?§:String;
      
      protected var §8P§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §5§(param1:String)
      {
         super();
         this.§8P§ = param1;
         this.§=!K§ = new Dictionary();
         this.§ !Q§ = new Dictionary();
         this.§;6§ = new Dictionary();
         this.§4Q§ = new Dictionary();
         this.§4@§ = false;
      }
      
      private function §;!L§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§7F§));
         this.§7!?§ = null;
      }
      
      public function §5,§(param1:String) : Boolean
      {
         if(this.§7!?§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §#!"§() : String
      {
         var _loc1_:Number = §^V§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §^V§;
         var _loc3_:int = _loc1_ % §^V§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §7g§(param1:String) : int
      {
         var _loc2_:§,&§ = null;
         if(this.§=!K§[param1])
         {
            _loc2_ = this.§=!K§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4m§(param1:String) : int
      {
         var _loc2_:§,&§ = null;
         if(this.§ !Q§[param1])
         {
            _loc2_ = this.§ !Q§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§7g§(param1) > 0 || this.§4m§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §6&§(param1:String, param2:Boolean = true) : void
      {
         this.§;6§[param1] = param2;
      }
      
      public function §]S§(param1:String, param2:Boolean = true) : void
      {
         this.§4Q§[param1] = param2;
      }
      
      public function §#!P§(param1:String, param2:int) : void
      {
         var _loc3_:§,&§ = new §,&§(param2);
         this.§=!K§[param1] = _loc3_;
      }
      
      public function §'Z§(param1:String, param2:int) : void
      {
         var _loc3_:§,&§ = new §,&§(param2);
         this.§ !Q§[param1] = _loc3_;
      }
      
      public function §1!;§(param1:String, param2:int = -1) : int
      {
         return §^n§.§!!A§(param1,param2 != -1 ? int(param2) : int(this.§7g§(param1)));
      }
      
      public function §+!J§(param1:§-+§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§`H§())
         {
            _loc2_ += this.§7g§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §2B§(param1:§-+§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§`H§())
         {
            _loc2_ += this.§1!;§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §%9§() : int
      {
         var _loc3_:§-+§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §^n§.§;9§())
         {
            _loc3_ = §^n§.§0!,§(_loc2_);
            _loc4_ = this.§2B§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1K§(param1:§-+§) : int
      {
         return param1.§`H§().length * 3;
      }
      
      public function §3t§(param1:§-+§) : int
      {
         return param1.§`H§().length;
      }
      
      public function §2!9§(param1:§-+§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§`H§())
         {
            if(this.§4m§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §>[§() : Dictionary
      {
         return this.§;6§;
      }
      
      public function get §"§() : Boolean
      {
         return this.§4@§;
      }
      
      public function set §"§(param1:Boolean) : void
      {
         this.§4@§ = param1;
      }
      
      public function get §5g§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §8!G§() : String
      {
         return this.§7!?§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§-+§ = null;
         var _loc7_:§-+§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §^n§.§0!'§)
         {
            return true;
         }
         if(this.§7g§(param1) > 0)
         {
            return true;
         }
         if(this.§4m§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §^n§.§@-§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §^n§.§@-§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§7g§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§4m§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §@K§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §1#§(param1:String) : void
      {
      }
      
      public function §-@§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §true§() : Dictionary
      {
         return this.§;6§;
      }
   }
}
