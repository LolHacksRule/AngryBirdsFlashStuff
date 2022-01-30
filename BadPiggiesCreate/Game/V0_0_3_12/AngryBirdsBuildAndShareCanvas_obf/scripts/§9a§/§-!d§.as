package §9a§
{
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §0E§.§<a§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §-!d§ extends EventDispatcher
   {
      
      protected static const §,$§:Number = 1000;
      
      protected static const §5Y§:Number = 60;
       
      
      protected var §-"-§:Dictionary;
      
      protected var §2!y§:Dictionary;
      
      protected var §4!c§:Dictionary;
      
      protected var §1!v§:Dictionary;
      
      protected var §@G§:Boolean;
      
      protected var §4v§:String;
      
      protected var §!"2§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §-!d§(param1:String)
      {
         super();
         this.§!"2§ = param1;
         this.§-"-§ = new Dictionary();
         this.§2!y§ = new Dictionary();
         this.§4!c§ = new Dictionary();
         this.§1!v§ = new Dictionary();
         this.§@G§ = false;
      }
      
      private function §6"#§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§'"1§));
         this.§4v§ = null;
      }
      
      public function §0",§(param1:String) : Boolean
      {
         if(this.§4v§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §1!r§() : String
      {
         var _loc1_:Number = §5Y§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §5Y§;
         var _loc3_:int = _loc1_ % §5Y§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §import§(param1:String) : int
      {
         var _loc2_:§<s§ = null;
         if(this.§-"-§[param1])
         {
            _loc2_ = this.§-"-§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §<!q§(param1:String) : int
      {
         var _loc2_:§<s§ = null;
         if(this.§2!y§[param1])
         {
            _loc2_ = this.§2!y§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §]"7§(param1:String) : Boolean
      {
         if(this.§import§(param1) > 0 || this.§<!q§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §'[§(param1:String, param2:Boolean = true) : void
      {
         this.§4!c§[param1] = param2;
      }
      
      public function §<![§(param1:String, param2:Boolean = true) : void
      {
         this.§1!v§[param1] = param2;
      }
      
      public function §`!M§(param1:String, param2:int) : void
      {
         var _loc3_:§<s§ = new §<s§(param2);
         this.§-"-§[param1] = _loc3_;
      }
      
      public function §95§(param1:String, param2:int) : void
      {
         var _loc3_:§<s§ = new §<s§(param2);
         this.§2!y§[param1] = _loc3_;
      }
      
      public function §4a§(param1:String, param2:int = -1) : int
      {
         return §-!F§.§<!t§(param1,param2 != -1 ? int(param2) : int(this.§import§(param1)));
      }
      
      public function §63§(param1:§<a§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+""§())
         {
            _loc2_ += this.§import§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §5!k§(param1:§<a§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+""§())
         {
            _loc2_ += this.§4a§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §>z§() : int
      {
         var _loc3_:§<a§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §-!F§.§"![§())
         {
            _loc3_ = §-!F§.§#3§(_loc2_);
            _loc4_ = this.§5!k§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function § "'§(param1:§<a§) : int
      {
         return param1.§+""§().length * 3;
      }
      
      public function §=L§(param1:§<a§) : int
      {
         return param1.§+""§().length;
      }
      
      public function §>U§(param1:§<a§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§+""§())
         {
            if(this.§<!q§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §#j§() : Dictionary
      {
         return this.§4!c§;
      }
      
      public function get §!!D§() : Boolean
      {
         return this.§@G§;
      }
      
      public function set §!!D§(param1:Boolean) : void
      {
         this.§@G§ = param1;
      }
      
      public function get §3H§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §,!I§() : String
      {
         return this.§4v§;
      }
      
      public function §7!1§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§<a§ = null;
         var _loc7_:§<a§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §-!F§.§9!i§)
         {
            return true;
         }
         if(this.§import§(param1) > 0)
         {
            return true;
         }
         if(this.§<!q§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §-!F§.§#!q§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §-!F§.§#!q§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§import§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§<!q§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §5"=§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §9j§(param1:String) : void
      {
      }
      
      public function §`!<§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §8!C§() : Dictionary
      {
         return this.§4!c§;
      }
   }
}
