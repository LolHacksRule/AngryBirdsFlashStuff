package §#B§
{
   import §3V§.§9p§;
   import §6Z§.§ in§;
   import §6Z§.§'?§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §&!9§ extends EventDispatcher
   {
      
      protected static const §^"§:Number = 1000;
      
      protected static const §>t§:Number = 60;
       
      
      protected var §`m§:Dictionary;
      
      protected var §+!1§:Dictionary;
      
      protected var §6&§:Dictionary;
      
      protected var §4!#§:Dictionary;
      
      protected var §+n§:Boolean;
      
      protected var §5!A§:String;
      
      protected var § !;§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §&!9§(param1:String)
      {
         super();
         this.§ !;§ = param1;
         this.§`m§ = new Dictionary();
         this.§+!1§ = new Dictionary();
         this.§6&§ = new Dictionary();
         this.§4!#§ = new Dictionary();
         this.§+n§ = false;
      }
      
      private function §47§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§[r§));
         this.§5!A§ = null;
      }
      
      public function §1z§(param1:String) : Boolean
      {
         if(this.§5!A§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §^!=§() : String
      {
         var _loc1_:Number = §>t§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §>t§;
         var _loc3_:int = _loc1_ % §>t§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §&!C§(param1:String) : int
      {
         var _loc2_:§9p§ = null;
         if(this.§`m§[param1])
         {
            _loc2_ = this.§`m§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §%!E§(param1:String) : int
      {
         var _loc2_:§9p§ = null;
         if(this.§+!1§[param1])
         {
            _loc2_ = this.§+!1§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function isLevelPassed(param1:String) : Boolean
      {
         if(this.§&!C§(param1) > 0 || this.§%!E§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §2!M§(param1:String, param2:Boolean = true) : void
      {
         this.§6&§[param1] = param2;
      }
      
      public function §&!<§(param1:String, param2:Boolean = true) : void
      {
         this.§4!#§[param1] = param2;
      }
      
      public function §4!<§(param1:String, param2:int) : void
      {
         var _loc3_:§9p§ = new §9p§(param2);
         this.§`m§[param1] = _loc3_;
      }
      
      public function §^!,§(param1:String, param2:int) : void
      {
         var _loc3_:§9p§ = new §9p§(param2);
         this.§+!1§[param1] = _loc3_;
      }
      
      public function §2l§(param1:String, param2:int = -1) : int
      {
         return §'?§.§[!K§(param1,param2 != -1 ? int(param2) : int(this.§&!C§(param1)));
      }
      
      public function §`^§(param1:§ in§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+`§())
         {
            _loc2_ += this.§&!C§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §&!>§(param1:§ in§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+`§())
         {
            _loc2_ += this.§2l§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>!A§() : int
      {
         var _loc3_:§ in§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §'?§.§4S§())
         {
            _loc3_ = §'?§.§-7§(_loc2_);
            _loc4_ = this.§&!>§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §8!7§(param1:§ in§) : int
      {
         return param1.§+`§().length * 3;
      }
      
      public function §-6§(param1:§ in§) : int
      {
         return param1.§+`§().length;
      }
      
      public function §`q§(param1:§ in§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+`§())
         {
            if(this.§%!E§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §@p§() : Dictionary
      {
         return this.§6&§;
      }
      
      public function get §]x§() : Boolean
      {
         return this.§+n§;
      }
      
      public function set §]x§(param1:Boolean) : void
      {
         this.§+n§ = param1;
      }
      
      public function get §`!A§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §-!H§() : String
      {
         return this.§5!A§;
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§ in§ = null;
         var _loc7_:§ in§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §'?§.§5-§)
         {
            return true;
         }
         if(this.§&!C§(param1) > 0)
         {
            return true;
         }
         if(this.§%!E§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §'?§.§+h§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §'?§.§+h§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§&!C§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§%!E§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §+r§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §4!;§(param1:String) : void
      {
      }
      
      public function §]0§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §&!F§() : Dictionary
      {
         return this.§6&§;
      }
   }
}
