package §]!!§
{
   import §#!1§.§=?§;
   import §,4§.§;_§;
   import §,4§.§@!A§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §^!D§ extends EventDispatcher
   {
      
      protected static const §;!"§:Number = 1000;
      
      protected static const §[w§:Number = 60;
       
      
      protected var §?!S§:Dictionary;
      
      protected var §&o§:Dictionary;
      
      protected var §&k§:Dictionary;
      
      protected var §>!6§:Dictionary;
      
      protected var §>!_§:Boolean;
      
      protected var §#]§:String;
      
      protected var §"R§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §^!D§(param1:String)
      {
         super();
         this.§"R§ = param1;
         this.§?!S§ = new Dictionary();
         this.§&o§ = new Dictionary();
         this.§&k§ = new Dictionary();
         this.§>!6§ = new Dictionary();
         this.§>!_§ = false;
      }
      
      private function §+U§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1@§));
         this.§#]§ = null;
      }
      
      public function §'!N§(param1:String) : Boolean
      {
         if(this.§#]§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §>C§() : String
      {
         var _loc1_:Number = §[w§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §[w§;
         var _loc3_:int = _loc1_ % §[w§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §#c§(param1:String) : int
      {
         var _loc2_:§=?§ = null;
         if(this.§?!S§[param1])
         {
            _loc2_ = this.§?!S§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function § !3§(param1:String) : int
      {
         var _loc2_:§=?§ = null;
         if(this.§&o§[param1])
         {
            _loc2_ = this.§&o§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §5!k§(param1:String) : Boolean
      {
         if(this.§#c§(param1) > 0 || this.§ !3§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §8!D§(param1:String, param2:Boolean = true) : void
      {
         this.§&k§[param1] = param2;
      }
      
      public function §?o§(param1:String, param2:Boolean = true) : void
      {
         this.§>!6§[param1] = param2;
      }
      
      public function §3!d§(param1:String, param2:int) : void
      {
         var _loc3_:§=?§ = new §=?§(param2);
         this.§?!S§[param1] = _loc3_;
      }
      
      public function §=!a§(param1:String, param2:int) : void
      {
         var _loc3_:§=?§ = new §=?§(param2);
         this.§&o§[param1] = _loc3_;
      }
      
      public function § !T§(param1:String, param2:int = -1) : int
      {
         return §;_§.§98§(param1,param2 != -1 ? int(param2) : int(this.§#c§(param1)));
      }
      
      public function §@z§(param1:§@!A§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+!+§())
         {
            _loc2_ += this.§#c§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9!<§(param1:§@!A§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+!+§())
         {
            _loc2_ += this.§ !T§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §"!1§() : int
      {
         var _loc3_:§@!A§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §;_§.§?,§())
         {
            _loc3_ = §;_§.§5H§(_loc2_);
            _loc4_ = this.§9!<§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §;!§(param1:§@!A§) : int
      {
         return param1.§+!+§().length * 3;
      }
      
      public function §+-§(param1:§@!A§) : int
      {
         return param1.§+!+§().length;
      }
      
      public function §%z§(param1:§@!A§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+!+§())
         {
            if(this.§ !3§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §]! §() : Dictionary
      {
         return this.§&k§;
      }
      
      public function get §'!$§() : Boolean
      {
         return this.§>!_§;
      }
      
      public function set §'!$§(param1:Boolean) : void
      {
         this.§>!_§ = param1;
      }
      
      public function get §6!7§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §"!c§() : String
      {
         return this.§#]§;
      }
      
      public function §9!@§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§@!A§ = null;
         var _loc7_:§@!A§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §;_§.§+Z§)
         {
            return true;
         }
         if(this.§#c§(param1) > 0)
         {
            return true;
         }
         if(this.§ !3§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §;_§.§'-§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §;_§.§'-§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§#c§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§ !3§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §9l§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §6Z§() : Dictionary
      {
         return this.§&k§;
      }
   }
}
