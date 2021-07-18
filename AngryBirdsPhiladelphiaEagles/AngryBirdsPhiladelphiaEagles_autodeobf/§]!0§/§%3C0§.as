package §]!0§
{
   import §0!E§.§;!D§;
   import §^]§.§7!K§;
   import §^]§.§`!K§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §<0§ extends EventDispatcher
   {
      
      protected static const §'G§:Number = 1000;
      
      protected static const §@!I§:Number = 60;
       
      
      protected var §%p§:Dictionary;
      
      protected var §;1§:Dictionary;
      
      protected var §`-§:Dictionary;
      
      protected var §4!D§:Dictionary;
      
      protected var §<!;§:Boolean;
      
      protected var §@!<§:String;
      
      protected var §,W§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §<0§(param1:String)
      {
         super();
         this.§,W§ = param1;
         this.§%p§ = new Dictionary();
         this.§;1§ = new Dictionary();
         this.§`-§ = new Dictionary();
         this.§4!D§ = new Dictionary();
         this.§<!;§ = false;
      }
      
      private function §;G§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§0F§));
         this.§@!<§ = null;
      }
      
      public function §"o§(param1:String) : Boolean
      {
         if(this.§@!<§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §2K§() : String
      {
         var _loc1_:Number = §@!I§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §@!I§;
         var _loc3_:int = _loc1_ % §@!I§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §[u§(param1:String) : int
      {
         var _loc2_:§;!D§ = null;
         if(this.§%p§[param1])
         {
            _loc2_ = this.§%p§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §`!C§(param1:String) : int
      {
         var _loc2_:§;!D§ = null;
         if(this.§;1§[param1])
         {
            _loc2_ = this.§;1§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§[u§(param1) > 0 || this.§`!C§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §&!!§(param1:String, param2:Boolean = true) : void
      {
         this.§`-§[param1] = param2;
      }
      
      public function §=O§(param1:String, param2:Boolean = true) : void
      {
         this.§4!D§[param1] = param2;
      }
      
      public function §,!0§(param1:String, param2:int) : void
      {
         var _loc3_:§;!D§ = new §;!D§(param2);
         this.§%p§[param1] = _loc3_;
      }
      
      public function §6y§(param1:String, param2:int) : void
      {
         var _loc3_:§;!D§ = new §;!D§(param2);
         this.§;1§[param1] = _loc3_;
      }
      
      public function §7j§(param1:String, param2:int = -1) : int
      {
         return §`!K§.§;$§(param1,param2 != -1 ? int(param2) : int(this.§[u§(param1)));
      }
      
      public function §;'§(param1:§7!K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!G§())
         {
            _loc2_ += this.§[u§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7!;§(param1:§7!K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!G§())
         {
            _loc2_ += this.§7j§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §,!6§() : int
      {
         var _loc3_:§7!K§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §`!K§.§<u§())
         {
            _loc3_ = §`!K§.§5!<§(_loc2_);
            _loc4_ = this.§7!;§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §;!3§(param1:§7!K§) : int
      {
         return param1.§4!G§().length * 3;
      }
      
      public function §&!%§(param1:§7!K§) : int
      {
         return param1.§4!G§().length;
      }
      
      public function §1R§(param1:§7!K§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§4!G§())
         {
            if(this.§`!C§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §^!3§() : Dictionary
      {
         return this.§`-§;
      }
      
      public function get §-!7§() : Boolean
      {
         return this.§<!;§;
      }
      
      public function set §-!7§(param1:Boolean) : void
      {
         this.§<!;§ = param1;
      }
      
      public function get §?U§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §3!7§() : String
      {
         return this.§@!<§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§7!K§ = null;
         var _loc7_:§7!K§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §`!K§.§?!%§)
         {
            return true;
         }
         if(this.§[u§(param1) > 0)
         {
            return true;
         }
         if(this.§`!C§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §`!K§.§0@§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §`!K§.§0@§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§[u§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§`!C§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §';§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §6!M§(param1:String) : void
      {
      }
      
      public function §;a§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §"!Q§() : Dictionary
      {
         return this.§`-§;
      }
   }
}
