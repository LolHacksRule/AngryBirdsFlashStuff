package §&!%§
{
   import §'!^§.§4!2§;
   import §3U§.§2!%§;
   import §3U§.§^v§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §[G§ extends EventDispatcher
   {
      
      protected static const § ^§:Number = 1000;
      
      protected static const §^!B§:Number = 60;
       
      
      protected var §^!N§:Dictionary;
      
      protected var §^!D§:Dictionary;
      
      protected var §<#§:Dictionary;
      
      protected var §%%§:Dictionary;
      
      protected var §9f§:Boolean;
      
      protected var §=!4§:String;
      
      protected var §8!&§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §[G§(param1:String)
      {
         super();
         this.§8!&§ = param1;
         this.§^!N§ = new Dictionary();
         this.§^!D§ = new Dictionary();
         this.§<#§ = new Dictionary();
         this.§%%§ = new Dictionary();
         this.§9f§ = false;
      }
      
      private function §<!I§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§^!A§));
         this.§=!4§ = null;
      }
      
      public function §<r§(param1:String) : Boolean
      {
         if(this.§=!4§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §+W§() : String
      {
         var _loc1_:Number = §^!B§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §^!B§;
         var _loc3_:int = _loc1_ % §^!B§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §3o§(param1:String) : int
      {
         var _loc2_:§4!2§ = null;
         if(this.§^!N§[param1])
         {
            _loc2_ = this.§^!N§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §^!'§(param1:String) : int
      {
         var _loc2_:§4!2§ = null;
         if(this.§^!D§[param1])
         {
            _loc2_ = this.§^!D§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §"s§(param1:String) : Boolean
      {
         if(this.§3o§(param1) > 0 || this.§^!'§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §<<§(param1:String, param2:Boolean = true) : void
      {
         this.§<#§[param1] = param2;
      }
      
      public function §,5§(param1:String, param2:Boolean = true) : void
      {
         this.§%%§[param1] = param2;
      }
      
      public function §%!M§(param1:String, param2:int) : void
      {
         var _loc3_:§4!2§ = new §4!2§(param2);
         this.§^!N§[param1] = _loc3_;
      }
      
      public function §@!&§(param1:String, param2:int) : void
      {
         var _loc3_:§4!2§ = new §4!2§(param2);
         this.§^!D§[param1] = _loc3_;
      }
      
      public function §[!X§(param1:String, param2:int = -1) : int
      {
         return §2!%§.§^V§(param1,param2 != -1 ? int(param2) : int(this.§3o§(param1)));
      }
      
      public function §<c§(param1:§^v§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%h§())
         {
            _loc2_ += this.§3o§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §9!Q§(param1:§^v§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%h§())
         {
            _loc2_ += this.§[!X§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §`!O§() : int
      {
         var _loc3_:§^v§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §2!%§.§'q§())
         {
            _loc3_ = §2!%§.§<3§(_loc2_);
            _loc4_ = this.§9!Q§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §-!U§(param1:§^v§) : int
      {
         return param1.§%h§().length * 3;
      }
      
      public function §&,§(param1:§^v§) : int
      {
         return param1.§%h§().length;
      }
      
      public function §1!@§(param1:§^v§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§%h§())
         {
            if(this.§^!'§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §3!J§() : Dictionary
      {
         return this.§<#§;
      }
      
      public function get §'6§() : Boolean
      {
         return this.§9f§;
      }
      
      public function set §'6§(param1:Boolean) : void
      {
         this.§9f§ = param1;
      }
      
      public function get §9!9§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §9b§() : String
      {
         return this.§=!4§;
      }
      
      public function §>!b§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§^v§ = null;
         var _loc7_:§^v§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §2!%§.§+§)
         {
            return true;
         }
         if(this.§3o§(param1) > 0)
         {
            return true;
         }
         if(this.§^!'§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §2!%§.§@l§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §2!%§.§@l§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§3o§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§^!'§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §`!N§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function §=e§(param1:String) : void
      {
      }
      
      public function §<!,§(param1:String) : Boolean
      {
         return false;
      }
      
      public function get §9!C§() : Dictionary
      {
         return this.§<#§;
      }
   }
}
