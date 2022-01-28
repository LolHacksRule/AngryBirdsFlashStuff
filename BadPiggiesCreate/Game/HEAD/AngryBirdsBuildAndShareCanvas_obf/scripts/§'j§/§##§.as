package §'j§
{
   import §<!1§.§9!=§;
   import §<i§.§3!l§;
   import §<i§.§`!r§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §##§ extends EventDispatcher
   {
      
      protected static const §0%§:Number = 1000;
      
      protected static const §"t§:Number = 60;
       
      
      protected var §8;§:Dictionary;
      
      protected var §%!,§:Dictionary;
      
      protected var §9_§:Dictionary;
      
      protected var §4!R§:Dictionary;
      
      protected var §8J§:Boolean;
      
      protected var §^"2§:String;
      
      protected var §[!]§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §##§(param1:String)
      {
         super();
         this.§[!]§ = param1;
         this.§8;§ = new Dictionary();
         this.§%!,§ = new Dictionary();
         this.§9_§ = new Dictionary();
         this.§4!R§ = new Dictionary();
         this.§8J§ = false;
      }
      
      private function §+"3§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§5t§));
         this.§^"2§ = null;
      }
      
      public function §,!B§(param1:String) : Boolean
      {
         if(this.§^"2§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §>!W§() : String
      {
         var _loc1_:Number = §"t§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §"t§;
         var _loc3_:int = _loc1_ % §"t§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §="?§(param1:String) : int
      {
         var _loc2_:§9!=§ = null;
         if(this.§8;§[param1])
         {
            _loc2_ = this.§8;§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §6!G§(param1:String) : int
      {
         var _loc2_:§9!=§ = null;
         if(this.§%!,§[param1])
         {
            _loc2_ = this.§%!,§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §]"9§(param1:String) : Boolean
      {
         if(this.§="?§(param1) > 0 || this.§6!G§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §^!l§(param1:String, param2:Boolean = true) : void
      {
         this.§9_§[param1] = param2;
      }
      
      public function §@"'§(param1:String, param2:Boolean = true) : void
      {
         this.§4!R§[param1] = param2;
      }
      
      public function §0!Y§(param1:String, param2:int) : void
      {
         var _loc3_:§9!=§ = new §9!=§(param2);
         this.§8;§[param1] = _loc3_;
      }
      
      public function §;"6§(param1:String, param2:int) : void
      {
         var _loc3_:§9!=§ = new §9!=§(param2);
         this.§%!,§[param1] = _loc3_;
      }
      
      public function §6!I§(param1:String, param2:int = -1) : int
      {
         return §`!r§.§%!g§(param1,param2 != -1 ? int(param2) : int(this.§="?§(param1)));
      }
      
      public function §[!i§(param1:§3!l§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "?§())
         {
            _loc2_ += this.§="?§(_loc3_);
         }
         return _loc2_;
      }
      
      public function § 8§(param1:§3!l§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "?§())
         {
            _loc2_ += this.§6!I§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9"3§() : int
      {
         var _loc3_:§3!l§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §`!r§.§1!o§())
         {
            _loc3_ = §`!r§.§]-§(_loc2_);
            _loc4_ = this.§ 8§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §7!z§(param1:§3!l§) : int
      {
         return param1.§ "?§().length * 3;
      }
      
      public function §?!Y§(param1:§3!l§) : int
      {
         return param1.§ "?§().length;
      }
      
      public function §3k§(param1:§3!l§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§ "?§())
         {
            if(this.§6!G§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §>">§() : Dictionary
      {
         return this.§9_§;
      }
      
      public function get §3!I§() : Boolean
      {
         return this.§8J§;
      }
      
      public function set §3!I§(param1:Boolean) : void
      {
         this.§8J§ = param1;
      }
      
      public function get §&F§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §4"$§() : String
      {
         return this.§^"2§;
      }
      
      public function §%!a§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§3!l§ = null;
         var _loc7_:§3!l§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §`!r§.§2!l§)
         {
            return true;
         }
         if(this.§="?§(param1) > 0)
         {
            return true;
         }
         if(this.§6!G§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §`!r§.§6!8§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §`!r§.§6!8§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§="?§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§6!G§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §[,§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §5! §(param1:String) : void
      {
      }
      
      public function §1!#§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §?!`§() : Dictionary
      {
         return this.§9_§;
      }
   }
}
