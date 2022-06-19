package §_-eZ§
{
   import §_-5b§.§_-Mm§;
   import §_-5b§.§_-xQ§;
   import §_-aD§.§_-Y5§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-k0§ extends EventDispatcher
   {
      
      protected static const §_-zP§:Number = 1000;
      
      protected static const §_-yg§:Number = 60;
       
      
      protected var §_-Tf§:Dictionary;
      
      protected var §_-Wx§:Dictionary;
      
      protected var §_-Im§:Dictionary;
      
      protected var §_-uL§:Dictionary;
      
      protected var §_-5C§:Boolean;
      
      protected var §_-AD§:String;
      
      protected var §_-T5§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-k0§(param1:String)
      {
         super();
         this.§_-T5§ = param1;
         this.§_-Tf§ = new Dictionary();
         this.§_-Wx§ = new Dictionary();
         this.§_-Im§ = new Dictionary();
         this.§_-uL§ = new Dictionary();
         this.§_-5C§ = false;
      }
      
      private function §_-z9§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-lh§));
         this.§_-AD§ = null;
      }
      
      public function §_-9§(param1:String) : Boolean
      {
         if(this.§_-AD§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-Vx§() : String
      {
         var _loc1_:Number = §_-yg§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-yg§;
         var _loc3_:int = _loc1_ % §_-yg§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-yH§(param1:String) : int
      {
         var _loc2_:§_-Y5§ = null;
         if(this.§_-Tf§[param1])
         {
            _loc2_ = this.§_-Tf§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-v9§(param1:String) : int
      {
         var _loc2_:§_-Y5§ = null;
         if(this.§_-Wx§[param1])
         {
            _loc2_ = this.§_-Wx§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-X7§(param1:String) : Boolean
      {
         if(this.§_-yH§(param1) > 0 || this.§_-v9§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §_-y1§(param1:String, param2:Boolean = true) : void
      {
         this.§_-Im§[param1] = param2;
      }
      
      public function §_-y5§(param1:String, param2:Boolean = true) : void
      {
         this.§_-Im§[param1] = param2;
      }
      
      public function §_-9P§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Y5§ = new §_-Y5§(param2);
         this.§_-Tf§[param1] = _loc3_;
      }
      
      public function §_-uq§(param1:String, param2:int) : void
      {
         var _loc3_:§_-Y5§ = new §_-Y5§(param2);
         this.§_-Wx§[param1] = _loc3_;
      }
      
      public function §_-U2§(param1:String, param2:int = -1) : int
      {
         return §_-Mm§.§_-Kv§(param1,param2 != -1 ? int(param2) : int(this.§_-yH§(param1)));
      }
      
      public function §_-Dr§(param1:§_-xQ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-95§())
         {
            _loc2_ += this.§_-yH§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-Ep§(param1:§_-xQ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-95§())
         {
            _loc2_ += this.§_-U2§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-gA§() : int
      {
         var _loc3_:§_-xQ§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §_-Mm§.§_-G5§())
         {
            _loc3_ = §_-Mm§.§_-dC§(_loc2_);
            _loc4_ = this.§_-Ep§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §_-a3§(param1:§_-xQ§) : int
      {
         return param1.§_-95§().length * 3;
      }
      
      public function §_-j1§(param1:§_-xQ§) : int
      {
         return param1.§_-95§().length;
      }
      
      public function §_-57§(param1:§_-xQ§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-95§())
         {
            if(this.§_-v9§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-t3§() : Dictionary
      {
         return this.§_-Im§;
      }
      
      public function get §_-CB§() : Dictionary
      {
         return this.§_-Im§;
      }
      
      public function get §_-00h§() : Boolean
      {
         return this.§_-5C§;
      }
      
      public function set §_-00h§(param1:Boolean) : void
      {
         this.§_-5C§ = param1;
      }
      
      public function get §_-uw§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-OW§() : String
      {
         return this.§_-AD§;
      }
      
      public function §_-Bg§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§_-xQ§ = null;
         var _loc7_:§_-xQ§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §_-Mm§.§_-Sx§)
         {
            return true;
         }
         if(this.§_-yH§(param1) > 0)
         {
            return true;
         }
         if(this.§_-v9§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §_-Mm§.§_-G1§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §_-Mm§.§_-G1§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§_-yH§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§_-v9§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
