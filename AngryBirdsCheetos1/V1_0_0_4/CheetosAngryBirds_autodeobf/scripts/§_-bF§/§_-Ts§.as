package §_-bF§
{
   import §_-0-K§.§_-FL§;
   import §_-Aq§.§_-oL§;
   import §_-dD§.§_-Dk§;
   import §_-dD§.§_-Yx§;
   import §_-dD§.§extends§;
   
   public class §_-Ts§ extends §_-Dk§
   {
       
      
      protected var §_-ET§:Vector.<§_-nG§>;
      
      private var §_-55§:int;
      
      public function §_-Ts§(param1:String)
      {
         this.§_-ET§ = new Vector.<§_-nG§>();
         super(param1);
      }
      
      public static function §_-sY§(param1:String) : §_-Dk§
      {
         var _loc2_:§_-Ts§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§_-Yx§ = null;
         var _loc12_:String = null;
         var _loc13_:§extends§ = null;
         var _loc14_:String = null;
         var _loc15_:§_-nG§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §_-Ts§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §_-Yx§.§_-sY§(_loc10_))
               {
                  _loc2_.§_-0w§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §extends§.§_-sY§(_loc12_))
               {
                  _loc2_.§_-Yv§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §_-nG§.§_-sY§(_loc14_))
               {
                  _loc2_.§_-ET§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §_-lc§(param1:int) : void
      {
         if(!§_-ng§)
         {
            this.§_-ET§.push(new §_-nG§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§_-Dk§.DELIM + this.§_-m3§());
      }
      
      private function §_-m3§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-ET§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-ET§.length)
         {
            _loc1_ += §_-Dk§.INTERNAL_DELIM;
            _loc1_ += this.§_-ET§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§_-FL§) : void
      {
         var _loc2_:§_-nG§ = null;
         if(this.§_-ET§.length > this.§_-55§)
         {
            _loc2_ = this.§_-ET§[this.§_-55§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §_-oL§).§_-XT§();
               ++this.§_-55§;
            }
         }
         super.step(param1);
      }
   }
}
