package §-e§
{
   import §=! §.§[2§;
   import §^!5§.§,4§;
   import §^!5§.§0M§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §!!<§ extends EventDispatcher
   {
      
      protected static const §1!d§:Number = 1000;
      
      protected static const §,!"§:Number = 60;
       
      
      protected var §0!I§:Dictionary;
      
      protected var §5!+§:Dictionary;
      
      protected var §#H§:Dictionary;
      
      protected var § o§:Dictionary;
      
      protected var § c§:Boolean;
      
      protected var §`s§:String;
      
      protected var §]f§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §!!<§(param1:String)
      {
         super();
         this.§]f§ = param1;
         this.§0!I§ = new Dictionary();
         this.§5!+§ = new Dictionary();
         this.§#H§ = new Dictionary();
         this.§ o§ = new Dictionary();
         this.§ c§ = false;
      }
      
      private function §+E§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1!I§));
         this.§`s§ = null;
      }
      
      public function §2!L§(param1:String) : Boolean
      {
         if(this.§`s§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §&!<§() : String
      {
         var _loc1_:Number = §,!"§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §,!"§;
         var _loc3_:int = _loc1_ % §,!"§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §%=§(param1:String) : int
      {
         var _loc2_:§[2§ = null;
         if(this.§0!I§[param1])
         {
            _loc2_ = this.§0!I§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=!T§(param1:String) : int
      {
         var _loc2_:§[2§ = null;
         if(this.§5!+§[param1])
         {
            _loc2_ = this.§5!+§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,!9§(param1:String) : Boolean
      {
         if(this.§%=§(param1) > 0 || this.§=!T§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §&0§(param1:String, param2:Boolean = true) : void
      {
         this.§#H§[param1] = param2;
      }
      
      public function §=t§(param1:String, param2:Boolean = true) : void
      {
         this.§ o§[param1] = param2;
      }
      
      public function §!!N§(param1:String, param2:int) : void
      {
         var _loc3_:§[2§ = new §[2§(param2);
         this.§0!I§[param1] = _loc3_;
      }
      
      public function §,!6§(param1:String, param2:int) : void
      {
         var _loc3_:§[2§ = new §[2§(param2);
         this.§5!+§[param1] = _loc3_;
      }
      
      public function §2!a§(param1:String, param2:int = -1) : int
      {
         return §,4§.§8F§(param1,param2 != -1 ? int(param2) : int(this.§%=§(param1)));
      }
      
      public function §;m§(param1:§0M§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9$§())
         {
            _loc2_ += this.§%=§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §+!!§(param1:§0M§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9$§())
         {
            _loc2_ += this.§2!a§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §4T§() : int
      {
         var _loc3_:§0M§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §,4§.§#o§())
         {
            _loc3_ = §,4§.§5A§(_loc2_);
            _loc4_ = this.§+!!§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §8?§(param1:§0M§) : int
      {
         return param1.§9$§().length * 3;
      }
      
      public function §5!§(param1:§0M§) : int
      {
         return param1.§9$§().length;
      }
      
      public function §2h§(param1:§0M§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9$§())
         {
            if(this.§=!T§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §+!W§() : Dictionary
      {
         return this.§#H§;
      }
      
      public function get §@!P§() : Boolean
      {
         return this.§ c§;
      }
      
      public function set §@!P§(param1:Boolean) : void
      {
         this.§ c§ = param1;
      }
      
      public function get §`O§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §0!9§() : String
      {
         return this.§`s§;
      }
      
      public function §2!-§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§0M§ = null;
         var _loc7_:§0M§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §,4§.§9!&§)
         {
            return true;
         }
         if(this.§%=§(param1) > 0)
         {
            return true;
         }
         if(this.§=!T§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §,4§.§5!=§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §,4§.§5!=§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§%=§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§=!T§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §!!1§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §;0§() : Dictionary
      {
         return this.§#H§;
      }
   }
}
