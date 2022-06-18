package §>p§
{
   import §#[§.§3#§;
   import §#b§.§%Y§;
   import §#b§.§5!#§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §!!A§ extends EventDispatcher
   {
      
      protected static const §1!#§:Number = 1000;
      
      protected static const §,E§:Number = 60;
       
      
      protected var §+n§:Dictionary;
      
      protected var §1@§:Dictionary;
      
      protected var §'_§:Dictionary;
      
      protected var §!!>§:Dictionary;
      
      protected var §!!R§:Boolean;
      
      protected var §&O§:String;
      
      protected var § !"§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §!!A§(param1:String)
      {
         super();
         this.§ !"§ = param1;
         this.§+n§ = new Dictionary();
         this.§1@§ = new Dictionary();
         this.§'_§ = new Dictionary();
         this.§!!>§ = new Dictionary();
         this.§!!R§ = false;
      }
      
      private function §#!M§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§@!9§));
         this.§&O§ = null;
      }
      
      public function §'!P§(param1:String) : Boolean
      {
         if(this.§&O§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §+z§() : String
      {
         var _loc1_:Number = §,E§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §,E§;
         var _loc3_:int = _loc1_ % §,E§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §2!_§(param1:String) : int
      {
         var _loc2_:§3#§ = null;
         if(this.§+n§[param1])
         {
            _loc2_ = this.§+n§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+a§(param1:String) : int
      {
         var _loc2_:§3#§ = null;
         if(this.§1@§[param1])
         {
            _loc2_ = this.§1@§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §@@§(param1:String) : Boolean
      {
         if(this.§2!_§(param1) > 0 || this.§+a§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §4!3§(param1:String, param2:Boolean = true) : void
      {
         this.§'_§[param1] = param2;
      }
      
      public function §4!X§(param1:String, param2:Boolean = true) : void
      {
         this.§!!>§[param1] = param2;
      }
      
      public function §-!H§(param1:String, param2:int) : void
      {
         var _loc3_:§3#§ = new §3#§(param2);
         this.§+n§[param1] = _loc3_;
      }
      
      public function §7!Z§(param1:String, param2:int) : void
      {
         var _loc3_:§3#§ = new §3#§(param2);
         this.§1@§[param1] = _loc3_;
      }
      
      public function §@M§(param1:String, param2:int = -1) : int
      {
         return §5!#§.§<!P§(param1,param2 != -1 ? int(param2) : int(this.§2!_§(param1)));
      }
      
      public function §1!J§(param1:§%Y§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"V§())
         {
            _loc2_ += this.§2!_§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1j§(param1:§%Y§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"V§())
         {
            _loc2_ += this.§@M§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §1O§() : int
      {
         var _loc3_:§%Y§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §5!#§.§,O§())
         {
            _loc3_ = §5!#§.§^=§(_loc2_);
            _loc4_ = this.§1j§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §&!]§(param1:§%Y§) : int
      {
         return param1.§"V§().length * 3;
      }
      
      public function §+s§(param1:§%Y§) : int
      {
         return param1.§"V§().length;
      }
      
      public function §&Z§(param1:§%Y§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§"V§())
         {
            if(this.§+a§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §"S§() : Dictionary
      {
         return this.§'_§;
      }
      
      public function get §0!J§() : Boolean
      {
         return this.§!!R§;
      }
      
      public function set §0!J§(param1:Boolean) : void
      {
         this.§!!R§ = param1;
      }
      
      public function get §"!'§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §#>§() : String
      {
         return this.§&O§;
      }
      
      public function §9f§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§%Y§ = null;
         var _loc7_:§%Y§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §5!#§.§?!X§)
         {
            return true;
         }
         if(this.§2!_§(param1) > 0)
         {
            return true;
         }
         if(this.§+a§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §5!#§.§4&§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §5!#§.§4&§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§2!_§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§+a§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §!!B§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §2k§(param1:String) : void
      {
      }
      
      public function §"z§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §<!3§() : Dictionary
      {
         return this.§'_§;
      }
   }
}
