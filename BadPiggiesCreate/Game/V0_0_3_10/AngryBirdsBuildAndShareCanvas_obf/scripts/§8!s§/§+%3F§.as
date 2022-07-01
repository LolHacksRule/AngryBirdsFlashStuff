package §8!s§
{
   import §&!&§.§1"7§;
   import §7M§.§ !e§;
   import §7M§.§"?§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §+?§ extends EventDispatcher
   {
      
      protected static const §6!v§:Number = 1000;
      
      protected static const §["8§:Number = 60;
       
      
      protected var §+!y§:Dictionary;
      
      protected var §3!<§:Dictionary;
      
      protected var §+=§:Dictionary;
      
      protected var §`!l§:Dictionary;
      
      protected var §^"6§:Boolean;
      
      protected var §@!V§:String;
      
      protected var §!!z§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §+?§(param1:String)
      {
         super();
         this.§!!z§ = param1;
         this.§+!y§ = new Dictionary();
         this.§3!<§ = new Dictionary();
         this.§+=§ = new Dictionary();
         this.§`!l§ = new Dictionary();
         this.§^"6§ = false;
      }
      
      private function §+!4§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§1!z§));
         this.§@!V§ = null;
      }
      
      public function § !p§(param1:String) : Boolean
      {
         if(this.§@!V§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §4k§() : String
      {
         var _loc1_:Number = §["8§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §["8§;
         var _loc3_:int = _loc1_ % §["8§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §,s§(param1:String) : int
      {
         var _loc2_:§1"7§ = null;
         if(this.§+!y§[param1])
         {
            _loc2_ = this.§+!y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §,[§(param1:String) : int
      {
         var _loc2_:§1"7§ = null;
         if(this.§3!<§[param1])
         {
            _loc2_ = this.§3!<§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §]'§(param1:String) : Boolean
      {
         if(this.§,s§(param1) > 0 || this.§,[§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §7!L§(param1:String, param2:Boolean = true) : void
      {
         this.§+=§[param1] = param2;
      }
      
      public function §4"#§(param1:String, param2:Boolean = true) : void
      {
         this.§`!l§[param1] = param2;
      }
      
      public function §+!Y§(param1:String, param2:int) : void
      {
         var _loc3_:§1"7§ = new §1"7§(param2);
         this.§+!y§[param1] = _loc3_;
      }
      
      public function §0!A§(param1:String, param2:int) : void
      {
         var _loc3_:§1"7§ = new §1"7§(param2);
         this.§3!<§[param1] = _loc3_;
      }
      
      public function §!!q§(param1:String, param2:int = -1) : int
      {
         return §"?§.§!8§(param1,param2 != -1 ? int(param2) : int(this.§,s§(param1)));
      }
      
      public function §7=§(param1:§ !e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9=§())
         {
            _loc2_ += this.§,s§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §@!f§(param1:§ !e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9=§())
         {
            _loc2_ += this.§!!q§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §2"%§() : int
      {
         var _loc3_:§ !e§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §"?§.§6!G§())
         {
            _loc3_ = §"?§.§3!X§(_loc2_);
            _loc4_ = this.§@!f§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §-!s§(param1:§ !e§) : int
      {
         return param1.§9=§().length * 3;
      }
      
      public function §2!t§(param1:§ !e§) : int
      {
         return param1.§9=§().length;
      }
      
      public function §61§(param1:§ !e§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§9=§())
         {
            if(this.§,[§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §1?§() : Dictionary
      {
         return this.§+=§;
      }
      
      public function get §2"8§() : Boolean
      {
         return this.§^"6§;
      }
      
      public function set §2"8§(param1:Boolean) : void
      {
         this.§^"6§ = param1;
      }
      
      public function get §5!2§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §!x§() : String
      {
         return this.§@!V§;
      }
      
      public function §0u§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§ !e§ = null;
         var _loc7_:§ !e§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §"?§.§]!g§)
         {
            return true;
         }
         if(this.§,s§(param1) > 0)
         {
            return true;
         }
         if(this.§,[§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §"?§.§ do§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §"?§.§ do§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§,s§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§,[§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §'z§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §]"$§(param1:String) : void
      {
      }
      
      public function §<e§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §;B§() : Dictionary
      {
         return this.§+=§;
      }
   }
}
