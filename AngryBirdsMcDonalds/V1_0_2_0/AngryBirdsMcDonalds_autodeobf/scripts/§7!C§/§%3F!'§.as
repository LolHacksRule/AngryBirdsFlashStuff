package §7!C§
{
   import §+-§.§3!5§;
   import §+-§.§;!n§;
   import §;!j§.§;M§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §?!'§ extends EventDispatcher
   {
      
      protected static const §%!3§:Number = 1000;
      
      protected static const §>!_§:Number = 60;
       
      
      protected var §2^§:Dictionary;
      
      protected var §'!6§:Dictionary;
      
      protected var §>R§:Dictionary;
      
      protected var §5!?§:Dictionary;
      
      protected var §+G§:Boolean;
      
      protected var §+!o§:String;
      
      protected var §&O§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §?!'§(param1:String)
      {
         super();
         this.§&O§ = param1;
         this.§2^§ = new Dictionary();
         this.§'!6§ = new Dictionary();
         this.§>R§ = new Dictionary();
         this.§5!?§ = new Dictionary();
         this.§+G§ = false;
      }
      
      private function §;E§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§@T§));
         this.§+!o§ = null;
      }
      
      public function §,!>§(param1:String) : Boolean
      {
         if(this.§+!o§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4!6§() : String
      {
         var _loc1_:Number = §>!_§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §>!_§;
         var _loc3_:int = _loc1_ % §>!_§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §?K§(param1:String) : int
      {
         var _loc2_:§;M§ = null;
         if(this.§2^§[param1])
         {
            _loc2_ = this.§2^§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §8!"§(param1:String) : int
      {
         var _loc2_:§;M§ = null;
         if(this.§'!6§[param1])
         {
            _loc2_ = this.§'!6§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §5j§(param1:String) : Boolean
      {
         if(this.§?K§(param1) > 0 || this.§8!"§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §?g§(param1:String, param2:Boolean = true) : void
      {
         this.§>R§[param1] = param2;
      }
      
      public function §51§(param1:String, param2:Boolean = true) : void
      {
         this.§5!?§[param1] = param2;
      }
      
      public function §[!B§(param1:String, param2:int) : void
      {
         var _loc3_:§;M§ = new §;M§(param2);
         this.§2^§[param1] = _loc3_;
      }
      
      public function §1!>§(param1:String, param2:int) : void
      {
         var _loc3_:§;M§ = new §;M§(param2);
         this.§'!6§[param1] = _loc3_;
      }
      
      public function §]!&§(param1:String, param2:int = -1) : int
      {
         return §3!5§.§4c§(param1,param2 != -1 ? int(param2) : int(this.§?K§(param1)));
      }
      
      public function §^!W§(param1:§;!n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"'§())
         {
            _loc2_ += this.§?K§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §#U§(param1:§;!n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"'§())
         {
            _loc2_ += this.§]!&§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>!d§() : int
      {
         var _loc3_:§;!n§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §3!5§.§0!>§())
         {
            _loc3_ = §3!5§.§"a§(_loc2_);
            _loc4_ = this.§#U§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §5!b§(param1:§;!n§) : int
      {
         return param1.§"'§().length * 3;
      }
      
      public function §case §(param1:§;!n§) : int
      {
         return param1.§"'§().length;
      }
      
      public function §1^§(param1:§;!n§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"'§())
         {
            if(this.§8!"§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §0!G§() : Dictionary
      {
         return this.§>R§;
      }
      
      public function get § true§() : Boolean
      {
         return this.§+G§;
      }
      
      public function set § true§(param1:Boolean) : void
      {
         this.§+G§ = param1;
      }
      
      public function get §7!l§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §5U§() : String
      {
         return this.§+!o§;
      }
      
      public function §2d§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§;!n§ = null;
         var _loc7_:§;!n§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §3!5§.§7S§)
         {
            return true;
         }
         if(this.§?K§(param1) > 0)
         {
            return true;
         }
         if(this.§8!"§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §3!5§.§>C§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §3!5§.§>C§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§?K§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§8!"§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §&!G§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §-K§() : Dictionary
      {
         return this.§>R§;
      }
   }
}
