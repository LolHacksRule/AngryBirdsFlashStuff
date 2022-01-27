package §9]§
{
   import §0!&§.§&b§;
   import §0!&§.§@=§;
   import §9!?§.§@!3§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §@!=§ extends EventDispatcher
   {
      
      protected static const §4g§:Number = 1000;
      
      protected static const §5G§:Number = 60;
       
      
      protected var §>p§:Dictionary;
      
      protected var §'!C§:Dictionary;
      
      protected var §7! §:Dictionary;
      
      protected var §7J§:Dictionary;
      
      protected var §<!,§:Boolean;
      
      protected var §]Y§:String;
      
      protected var get:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §@!=§(param1:String)
      {
         super();
         this.get = param1;
         this.§>p§ = new Dictionary();
         this.§'!C§ = new Dictionary();
         this.§7! § = new Dictionary();
         this.§7J§ = new Dictionary();
         this.§<!,§ = false;
      }
      
      private function §'!B§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§9!Q§));
         this.§]Y§ = null;
      }
      
      public function §'!L§(param1:String) : Boolean
      {
         if(this.§]Y§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §#O§() : String
      {
         var _loc1_:Number = §5G§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §5G§;
         var _loc3_:int = _loc1_ % §5G§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §1!_§(param1:String) : int
      {
         var _loc2_:§@!3§ = null;
         if(this.§>p§[param1])
         {
            _loc2_ = this.§>p§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §#c§(param1:String) : int
      {
         var _loc2_:§@!3§ = null;
         if(this.§'!C§[param1])
         {
            _loc2_ = this.§'!C§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §=E§(param1:String) : Boolean
      {
         if(this.§1!_§(param1) > 0 || this.§#c§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §<!e§(param1:String, param2:Boolean = true) : void
      {
         this.§7! §[param1] = param2;
      }
      
      public function §&O§(param1:String, param2:Boolean = true) : void
      {
         this.§7J§[param1] = param2;
      }
      
      public function §5!$§(param1:String, param2:int) : void
      {
         var _loc3_:§@!3§ = new §@!3§(param2);
         this.§>p§[param1] = _loc3_;
      }
      
      public function §4!"§(param1:String, param2:int) : void
      {
         var _loc3_:§@!3§ = new §@!3§(param2);
         this.§'!C§[param1] = _loc3_;
      }
      
      public function §#!L§(param1:String, param2:int = -1) : int
      {
         return §@=§.§4!§(param1,param2 != -1 ? int(param2) : int(this.§1!_§(param1)));
      }
      
      public function §%_§(param1:§&b§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,3§())
         {
            _loc2_ += this.§1!_§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §7!O§(param1:§&b§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,3§())
         {
            _loc2_ += this.§#!L§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §,!D§() : int
      {
         var _loc3_:§&b§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §@=§.§4S§())
         {
            _loc3_ = §@=§.§[8§(_loc2_);
            _loc4_ = this.§7!O§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §;!L§(param1:§&b§) : int
      {
         return param1.§,3§().length * 3;
      }
      
      public function §>!J§(param1:§&b§) : int
      {
         return param1.§,3§().length;
      }
      
      public function §9!@§(param1:§&b§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§,3§())
         {
            if(this.§#c§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §`!Z§() : Dictionary
      {
         return this.§7! §;
      }
      
      public function get §<d§() : Boolean
      {
         return this.§<!,§;
      }
      
      public function set §<d§(param1:Boolean) : void
      {
         this.§<!,§ = param1;
      }
      
      public function get §2Y§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §7!@§() : String
      {
         return this.§]Y§;
      }
      
      public function §@W§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§&b§ = null;
         var _loc7_:§&b§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §@=§.§+]§)
         {
            return true;
         }
         if(this.§1!_§(param1) > 0)
         {
            return true;
         }
         if(this.§#c§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §@=§.§=9§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §@=§.§=9§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§1!_§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§#c§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §3!b§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §2!R§() : Dictionary
      {
         return this.§7! §;
      }
   }
}
