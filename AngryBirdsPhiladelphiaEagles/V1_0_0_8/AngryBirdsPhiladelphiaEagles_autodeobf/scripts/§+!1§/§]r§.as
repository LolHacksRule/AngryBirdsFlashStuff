package §+!1§
{
   import §6!L§.§&u§;
   import §6!L§.§7n§;
   import §`!8§.§7!G§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §]r§ extends EventDispatcher
   {
      
      protected static const §'!>§:Number = 1000;
      
      protected static const §+#§:Number = 60;
       
      
      protected var §4!6§:Dictionary;
      
      protected var §4P§:Dictionary;
      
      protected var §]]§:Dictionary;
      
      protected var §&!=§:Dictionary;
      
      protected var §=!M§:Boolean;
      
      protected var §7!#§:String;
      
      protected var §<v§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §]r§(param1:String)
      {
         super();
         this.§<v§ = param1;
         this.§4!6§ = new Dictionary();
         this.§4P§ = new Dictionary();
         this.§]]§ = new Dictionary();
         this.§&!=§ = new Dictionary();
         this.§=!M§ = false;
      }
      
      private function §+B§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§+W§));
         this.§7!#§ = null;
      }
      
      public function §,!9§(param1:String) : Boolean
      {
         if(this.§7!#§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §=c§() : String
      {
         var _loc1_:Number = §+#§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §+#§;
         var _loc3_:int = _loc1_ % §+#§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §<Q§(param1:String) : int
      {
         var _loc2_:§7!G§ = null;
         if(this.§4!6§[param1])
         {
            _loc2_ = this.§4!6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §!W§(param1:String) : int
      {
         var _loc2_:§7!G§ = null;
         if(this.§4P§[param1])
         {
            _loc2_ = this.§4P§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§<Q§(param1) > 0 || this.§!W§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §'!L§(param1:String, param2:Boolean = true) : void
      {
         this.§]]§[param1] = param2;
      }
      
      public function §^q§(param1:String, param2:Boolean = true) : void
      {
         this.§&!=§[param1] = param2;
      }
      
      public function §,!7§(param1:String, param2:int) : void
      {
         var _loc3_:§7!G§ = new §7!G§(param2);
         this.§4!6§[param1] = _loc3_;
      }
      
      public function §2,§(param1:String, param2:int) : void
      {
         var _loc3_:§7!G§ = new §7!G§(param2);
         this.§4P§[param1] = _loc3_;
      }
      
      public function §!T§(param1:String, param2:int = -1) : int
      {
         return §&u§.§"h§(param1,param2 != -1 ? int(param2) : int(this.§<Q§(param1)));
      }
      
      public function §<6§(param1:§7n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@c§())
         {
            _loc2_ += this.§<Q§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §'I§(param1:§7n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@c§())
         {
            _loc2_ += this.§!T§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §?!0§() : int
      {
         var _loc3_:§7n§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §&u§.§=^§())
         {
            _loc3_ = §&u§.§"!0§(_loc2_);
            _loc4_ = this.§'I§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §!%§(param1:§7n§) : int
      {
         return param1.§@c§().length * 3;
      }
      
      public function §3`§(param1:§7n§) : int
      {
         return param1.§@c§().length;
      }
      
      public function §#!H§(param1:§7n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§@c§())
         {
            if(this.§!W§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §?n§() : Dictionary
      {
         return this.§]]§;
      }
      
      public function get §6!$§() : Boolean
      {
         return this.§=!M§;
      }
      
      public function set §6!$§(param1:Boolean) : void
      {
         this.§=!M§ = param1;
      }
      
      public function get §0!L§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §0!F§() : String
      {
         return this.§7!#§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§7n§ = null;
         var _loc7_:§7n§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §&u§.§4h§)
         {
            return true;
         }
         if(this.§<Q§(param1) > 0)
         {
            return true;
         }
         if(this.§!W§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §&u§.§8!!§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §&u§.§8!!§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§<Q§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§!W§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §7V§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §'y§(param1:String) : void
      {
      }
      
      public function §]!>§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §%d§() : Dictionary
      {
         return this.§]]§;
      }
   }
}
