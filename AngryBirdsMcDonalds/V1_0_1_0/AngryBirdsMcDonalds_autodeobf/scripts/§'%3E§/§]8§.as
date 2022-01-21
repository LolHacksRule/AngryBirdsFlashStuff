package §'>§
{
   import §1!D§.§<!;§;
   import §`!d§.§6b§;
   import §`!d§.§7!§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]8§ extends EventDispatcher
   {
      
      protected static const §,!k§:Number = 1000;
      
      protected static const §'!l§:Number = 60;
       
      
      protected var §,!>§:Dictionary;
      
      protected var §7!"§:Dictionary;
      
      protected var §@!h§:Dictionary;
      
      protected var §[j§:Dictionary;
      
      protected var §8§:Boolean;
      
      protected var §2!W§:String;
      
      protected var §^a§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §]8§(param1:String)
      {
         super();
         this.§^a§ = param1;
         this.§,!>§ = new Dictionary();
         this.§7!"§ = new Dictionary();
         this.§@!h§ = new Dictionary();
         this.§[j§ = new Dictionary();
         this.§8§ = false;
      }
      
      private function §5t§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§9!c§));
         this.§2!W§ = null;
      }
      
      public function §5u§(param1:String) : Boolean
      {
         if(this.§2!W§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §3k§() : String
      {
         var _loc1_:Number = §'!l§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §'!l§;
         var _loc3_:int = _loc1_ % §'!l§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §5F§(param1:String) : int
      {
         var _loc2_:§<!;§ = null;
         if(this.§,!>§[param1])
         {
            _loc2_ = this.§,!>§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §7!#§(param1:String) : int
      {
         var _loc2_:§<!;§ = null;
         if(this.§7!"§[param1])
         {
            _loc2_ = this.§7!"§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §1T§(param1:String) : Boolean
      {
         if(this.§5F§(param1) > 0 || this.§7!#§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §#!8§(param1:String, param2:Boolean = true) : void
      {
         this.§@!h§[param1] = param2;
      }
      
      public function §'!n§(param1:String, param2:Boolean = true) : void
      {
         this.§[j§[param1] = param2;
      }
      
      public function §with§(param1:String, param2:int) : void
      {
         var _loc3_:§<!;§ = new §<!;§(param2);
         this.§,!>§[param1] = _loc3_;
      }
      
      public function §"H§(param1:String, param2:int) : void
      {
         var _loc3_:§<!;§ = new §<!;§(param2);
         this.§7!"§[param1] = _loc3_;
      }
      
      public function §5!K§(param1:String, param2:int = -1) : int
      {
         return §7!§.§%!F§(param1,param2 != -1 ? int(param2) : int(this.§5F§(param1)));
      }
      
      public function §;t§(param1:§6b§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§6s§())
         {
            _loc2_ += this.§5F§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'m§(param1:§6b§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§6s§())
         {
            _loc2_ += this.§5!K§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7I§() : int
      {
         var _loc3_:§6b§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §7!§.§&G§())
         {
            _loc3_ = §7!§.§-k§(_loc2_);
            _loc4_ = this.§'m§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §[;§(param1:§6b§) : int
      {
         return param1.§6s§().length * 3;
      }
      
      public function §[y§(param1:§6b§) : int
      {
         return param1.§6s§().length;
      }
      
      public function §!!3§(param1:§6b§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§6s§())
         {
            if(this.§7!#§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §]P§() : Dictionary
      {
         return this.§@!h§;
      }
      
      public function get §-!M§() : Boolean
      {
         return this.§8§;
      }
      
      public function set §-!M§(param1:Boolean) : void
      {
         this.§8§ = param1;
      }
      
      public function get §[!>§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §1[§() : String
      {
         return this.§2!W§;
      }
      
      public function §!!K§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§6b§ = null;
         var _loc7_:§6b§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §7!§.§[2§)
         {
            return true;
         }
         if(this.§5F§(param1) > 0)
         {
            return true;
         }
         if(this.§7!#§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §7!§.§71§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §7!§.§71§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§5F§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§7!#§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §8!`§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §8h§() : Dictionary
      {
         return this.§@!h§;
      }
   }
}
