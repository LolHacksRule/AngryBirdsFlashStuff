package §,s§
{
   import § e§.§62§;
   import §7_§.§3!Q§;
   import §7_§.§^d§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §'!=§ extends EventDispatcher
   {
      
      protected static const §`!a§:Number = 1000;
      
      protected static const §0!X§:Number = 60;
       
      
      protected var §9Y§:Dictionary;
      
      protected var §2!,§:Dictionary;
      
      protected var §6!5§:Dictionary;
      
      protected var §7!D§:Dictionary;
      
      protected var §0Q§:Boolean;
      
      protected var §4k§:String;
      
      protected var §<!e§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §'!=§(param1:String)
      {
         super();
         this.§<!e§ = param1;
         this.§9Y§ = new Dictionary();
         this.§2!,§ = new Dictionary();
         this.§6!5§ = new Dictionary();
         this.§7!D§ = new Dictionary();
         this.§0Q§ = false;
      }
      
      private function §"%§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§'w§));
         this.§4k§ = null;
      }
      
      public function §[!J§(param1:String) : Boolean
      {
         if(this.§4k§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §3&§() : String
      {
         var _loc1_:Number = §0!X§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §0!X§;
         var _loc3_:int = _loc1_ % §0!X§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §[,§(param1:String) : int
      {
         var _loc2_:§62§ = null;
         if(this.§9Y§[param1])
         {
            _loc2_ = this.§9Y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §4!i§(param1:String) : int
      {
         var _loc2_:§62§ = null;
         if(this.§2!,§[param1])
         {
            _loc2_ = this.§2!,§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §`!C§(param1:String) : Boolean
      {
         if(this.§[,§(param1) > 0 || this.§4!i§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §-! §(param1:String, param2:Boolean = true) : void
      {
         this.§6!5§[param1] = param2;
      }
      
      public function §7!$§(param1:String, param2:Boolean = true) : void
      {
         this.§7!D§[param1] = param2;
      }
      
      public function §#!k§(param1:String, param2:int) : void
      {
         var _loc3_:§62§ = new §62§(param2);
         this.§9Y§[param1] = _loc3_;
      }
      
      public function §#T§(param1:String, param2:int) : void
      {
         var _loc3_:§62§ = new §62§(param2);
         this.§2!,§[param1] = _loc3_;
      }
      
      public function §&!7§(param1:String, param2:int = -1) : int
      {
         return §^d§.§@!f§(param1,param2 != -1 ? int(param2) : int(this.§[,§(param1)));
      }
      
      public function §5!0§(param1:§3!Q§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3-§())
         {
            _loc2_ += this.§[,§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §48§(param1:§3!Q§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3-§())
         {
            _loc2_ += this.§&!7§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §"H§() : int
      {
         var _loc3_:§3!Q§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §^d§.§,!o§())
         {
            _loc3_ = §^d§.§"a§(_loc2_);
            _loc4_ = this.§48§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §6!<§(param1:§3!Q§) : int
      {
         return param1.§3-§().length * 3;
      }
      
      public function §,!4§(param1:§3!Q§) : int
      {
         return param1.§3-§().length;
      }
      
      public function §;! §(param1:§3!Q§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§3-§())
         {
            if(this.§4!i§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §[!4§() : Dictionary
      {
         return this.§6!5§;
      }
      
      public function get §,!M§() : Boolean
      {
         return this.§0Q§;
      }
      
      public function set §,!M§(param1:Boolean) : void
      {
         this.§0Q§ = param1;
      }
      
      public function get §7C§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §!e§() : String
      {
         return this.§4k§;
      }
      
      public function §^!2§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§3!Q§ = null;
         var _loc7_:§3!Q§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §^d§.§&!I§)
         {
            return true;
         }
         if(this.§[,§(param1) > 0)
         {
            return true;
         }
         if(this.§4!i§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §^d§.§-G§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §^d§.§-G§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§[,§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§4!i§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §5!6§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function saveTutorialSeen(param1:String) : void
      {
      }
      
      public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §2E§() : Dictionary
      {
         return this.§6!5§;
      }
   }
}
