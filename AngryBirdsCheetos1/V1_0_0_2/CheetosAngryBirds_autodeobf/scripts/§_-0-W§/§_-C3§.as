package §_-0-W§
{
   import §_-H-§.§_-Ci§;
   import §_-H-§.§_-i3§;
   import §_-H-§.§_-qB§;
   import §_-Kz§.§_-c3§;
   import §_-fp§.§_-cN§;
   
   public class §_-C3§ extends §_-qB§
   {
       
      
      protected var §_-mV§:Vector.<§_-4b§>;
      
      private var §_-5N§:int;
      
      public function §_-C3§(param1:String)
      {
         this.§_-mV§ = new Vector.<§_-4b§>();
         super(param1);
      }
      
      public static function §_-9M§(param1:String) : §_-qB§
      {
         var _loc2_:§_-C3§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§_-i3§ = null;
         var _loc12_:String = null;
         var _loc13_:§_-Ci§ = null;
         var _loc14_:String = null;
         var _loc15_:§_-4b§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §_-C3§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §_-i3§.§_-9M§(_loc10_))
               {
                  _loc2_.§_-rp§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §_-Ci§.§_-9M§(_loc12_))
               {
                  _loc2_.§_-rd§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §_-4b§.§_-9M§(_loc14_))
               {
                  _loc2_.§_-mV§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §_-I-§(param1:int) : void
      {
         if(!§_-2§)
         {
            this.§_-mV§.push(new §_-4b§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§_-qB§.DELIM + this.§_-S§());
      }
      
      private function §_-S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-mV§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-mV§.length)
         {
            _loc1_ += §_-qB§.INTERNAL_DELIM;
            _loc1_ += this.§_-mV§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§_-c3§) : void
      {
         var _loc2_:§_-4b§ = null;
         if(this.§_-mV§.length > this.§_-5N§)
         {
            _loc2_ = this.§_-mV§[this.§_-5N§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §_-cN§).§_-yr§();
               ++this.§_-5N§;
            }
         }
         super.step(param1);
      }
   }
}
