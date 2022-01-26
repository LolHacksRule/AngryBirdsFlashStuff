package §8!B§
{
   import §#!F§.§78§;
   import §]!F§.§7e§;
   import §]!F§.§^!O§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §[]§ extends EventDispatcher
   {
      
      protected static const §+!Y§:Number = 1000;
      
      protected static const §-E§:Number = 60;
       
      
      protected var §[t§:Dictionary;
      
      protected var §[a§:Dictionary;
      
      protected var § !Z§:Dictionary;
      
      protected var §!!S§:Dictionary;
      
      protected var §4o§:Boolean;
      
      protected var §6"§:String;
      
      protected var §2!$§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §[]§(param1:String)
      {
         super();
         this.§2!$§ = param1;
         this.§[t§ = new Dictionary();
         this.§[a§ = new Dictionary();
         this.§ !Z§ = new Dictionary();
         this.§!!S§ = new Dictionary();
         this.§4o§ = false;
      }
      
      private function §[v§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§0J§));
         this.§6"§ = null;
      }
      
      public function §@!]§(param1:String) : Boolean
      {
         if(this.§6"§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §=P§() : String
      {
         var _loc1_:Number = §-E§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §-E§;
         var _loc3_:int = _loc1_ % §-E§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §`>§(param1:String) : int
      {
         var _loc2_:§78§ = null;
         if(this.§[t§[param1])
         {
            _loc2_ = this.§[t§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §+x§(param1:String) : int
      {
         var _loc2_:§78§ = null;
         if(this.§[a§[param1])
         {
            _loc2_ = this.§[a§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §[!J§(param1:String) : Boolean
      {
         if(this.§`>§(param1) > 0 || this.§+x§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §2g§(param1:String, param2:Boolean = true) : void
      {
         this.§ !Z§[param1] = param2;
      }
      
      public function §>!'§(param1:String, param2:Boolean = true) : void
      {
         this.§!!S§[param1] = param2;
      }
      
      public function §'z§(param1:String, param2:int) : void
      {
         var _loc3_:§78§ = new §78§(param2);
         this.§[t§[param1] = _loc3_;
      }
      
      public function §8!+§(param1:String, param2:int) : void
      {
         var _loc3_:§78§ = new §78§(param2);
         this.§[a§[param1] = _loc3_;
      }
      
      public function §try §(param1:String, param2:int = -1) : int
      {
         return §7e§.§]!7§(param1,param2 != -1 ? int(param2) : int(this.§`>§(param1)));
      }
      
      public function §1B§(param1:§^!O§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0B§())
         {
            _loc2_ += this.§`>§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §;K§(param1:§^!O§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0B§())
         {
            _loc2_ += this.§try §(_loc3_);
         }
         return _loc2_;
      }
      
      public function §8Z§() : int
      {
         var _loc3_:§^!O§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §7e§.§ =§())
         {
            _loc3_ = §7e§.§2§(_loc2_);
            _loc4_ = this.§;K§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §>!6§(param1:§^!O§) : int
      {
         return param1.§0B§().length * 3;
      }
      
      public function §0!Y§(param1:§^!O§) : int
      {
         return param1.§0B§().length;
      }
      
      public function §`!&§(param1:§^!O§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§0B§())
         {
            if(this.§+x§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §<i§() : Dictionary
      {
         return this.§ !Z§;
      }
      
      public function get §<!O§() : Boolean
      {
         return this.§4o§;
      }
      
      public function set §<!O§(param1:Boolean) : void
      {
         this.§4o§ = param1;
      }
      
      public function get §;^§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §"!Y§() : String
      {
         return this.§6"§;
      }
      
      public function §5!Q§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§^!O§ = null;
         var _loc7_:§^!O§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §7e§.§^!H§)
         {
            return true;
         }
         if(this.§`>§(param1) > 0)
         {
            return true;
         }
         if(this.§+x§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §7e§.§1!Q§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §7e§.§1!Q§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§`>§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§+x§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §-O§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §<!-§(param1:String) : void
      {
      }
      
      public function §"!+§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get § G§() : Dictionary
      {
         return this.§ !Z§;
      }
   }
}
