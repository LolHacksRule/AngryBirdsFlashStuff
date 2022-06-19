package §_-aE§
{
   import §_-T8§.§_-Cx§;
   import §_-T8§.§_-Sa§;
   import §_-wO§.§_-IC§;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class §_-Wg§ extends EventDispatcher
   {
      
      protected static const §_-9Q§:Number = 1000;
      
      protected static const §_-r5§:Number = 60;
       
      
      protected var §_-bT§:Dictionary;
      
      protected var §_-Nz§:Dictionary;
      
      protected var §_-oA§:Dictionary;
      
      protected var §_-ic§:Dictionary;
      
      protected var §_-8O§:Boolean;
      
      protected var §_-XK§:String;
      
      protected var §_-eF§:String;
      
      protected var mMightyEagleTimer:Timer;
      
      public function §_-Wg§(param1:String)
      {
         super();
         this.§_-eF§ = param1;
         this.§_-bT§ = new Dictionary();
         this.§_-Nz§ = new Dictionary();
         this.§_-oA§ = new Dictionary();
         this.§_-ic§ = new Dictionary();
         this.§_-8O§ = false;
      }
      
      private function §_-cB§(param1:TimerEvent) : void
      {
         dispatchEvent(new UserProgressEvent(UserProgressEvent.§_-SG§));
         this.§_-XK§ = null;
      }
      
      public function §_-uq§(param1:String) : Boolean
      {
         if(this.§_-XK§ == param1)
         {
            return true;
         }
         if(this.mMightyEagleTimer.running)
         {
            return false;
         }
         return true;
      }
      
      public function §_-pR§() : String
      {
         var _loc1_:Number = §_-r5§ - this.mMightyEagleTimer.currentCount;
         var _loc2_:int = _loc1_ / §_-r5§;
         var _loc3_:int = _loc1_ % §_-r5§;
         if(_loc3_ < 10)
         {
            return "" + _loc2_ + ":0" + _loc3_;
         }
         return "" + _loc2_ + ":" + _loc3_;
      }
      
      public function §_-GE§(param1:String) : int
      {
         var _loc2_:§_-IC§ = null;
         if(this.§_-bT§[param1])
         {
            _loc2_ = this.§_-bT§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-vj§(param1:String) : int
      {
         var _loc2_:§_-IC§ = null;
         if(this.§_-Nz§[param1])
         {
            _loc2_ = this.§_-Nz§[param1];
            return _loc2_.getValue();
         }
         return 0;
      }
      
      public function §_-KU§(param1:String) : Boolean
      {
         if(this.§_-GE§(param1) > 0 || this.§_-vj§(param1) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function §_-pz§(param1:String, param2:Boolean = true) : void
      {
         this.§_-oA§[param1] = param2;
      }
      
      public function §_-wK§(param1:String, param2:Boolean = true) : void
      {
         this.§_-oA§[param1] = param2;
      }
      
      public function §false§(param1:String, param2:int) : void
      {
         var _loc3_:§_-IC§ = new §_-IC§(param2);
         this.§_-bT§[param1] = _loc3_;
      }
      
      public function §_-gw§(param1:String, param2:int) : void
      {
         var _loc3_:§_-IC§ = new §_-IC§(param2);
         this.§_-Nz§[param1] = _loc3_;
      }
      
      public function §_-gc§(param1:String, param2:int = -1) : int
      {
         return §_-Sa§.§_-1o§(param1,param2 != -1 ? int(param2) : int(this.§_-GE§(param1)));
      }
      
      public function §_-p3§(param1:§_-Cx§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-5z§())
         {
            _loc2_ += this.§_-GE§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-uK§(param1:§_-Cx§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-5z§())
         {
            _loc2_ += this.§_-gc§(_loc3_);
         }
         return _loc2_;
      }
      
      public function §_-z9§() : int
      {
         var _loc3_:§_-Cx§ = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §_-Sa§.§_-ts§())
         {
            _loc3_ = §_-Sa§.§_-Sf§(_loc2_);
            _loc4_ = this.§_-uK§(_loc3_);
            _loc1_ += _loc4_;
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §_-N1§(param1:§_-Cx§) : int
      {
         return param1.§_-5z§().length * 3;
      }
      
      public function §_-1Y§(param1:§_-Cx§) : int
      {
         return param1.§_-5z§().length;
      }
      
      public function §_-z3§(param1:§_-Cx§) : int
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1.§_-5z§())
         {
            if(this.§_-vj§(_loc3_) == 100)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get §_-Dw§() : Dictionary
      {
         return this.§_-oA§;
      }
      
      public function get §_-If§() : Dictionary
      {
         return this.§_-oA§;
      }
      
      public function get §_-nx§() : Boolean
      {
         return this.§_-8O§;
      }
      
      public function set §_-nx§(param1:Boolean) : void
      {
         this.§_-8O§ = param1;
      }
      
      public function get §_-gZ§() : Timer
      {
         return this.mMightyEagleTimer;
      }
      
      public function get §_-nJ§() : String
      {
         return this.§_-XK§;
      }
      
      public function §_-nE§(param1:String) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§_-Cx§ = null;
         var _loc7_:§_-Cx§ = null;
         if(param1 == null)
         {
            return false;
         }
         if(param1 == §_-Sa§.§_-KY§)
         {
            return true;
         }
         if(this.§_-GE§(param1) > 0)
         {
            return true;
         }
         if(this.§_-vj§(param1) > 0)
         {
            return true;
         }
         var _loc2_:Array = param1.split("-");
         if(_loc2_.length == 2)
         {
            _loc4_ = parseInt(_loc2_[0]);
            _loc5_ = parseInt(_loc2_[1]);
            if((_loc6_ = §_-Sa§.§_-KA§(param1)).pageIndexes[0] == _loc4_ && _loc5_ == 1)
            {
               return true;
            }
            if(_loc5_ > 1)
            {
               _loc3_ = _loc4_ + "-" + (_loc5_ - 1);
            }
            else if(_loc4_ > 1)
            {
               if(_loc7_ = §_-Sa§.§_-KA§(_loc4_ - 1 + "-1"))
               {
                  _loc3_ = _loc4_ - 1 + "-" + _loc7_.levelsPerPage;
               }
            }
            if(_loc3_)
            {
               if(this.§_-GE§(_loc3_) > 0)
               {
                  return true;
               }
               if(this.§_-vj§(_loc3_) > 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
