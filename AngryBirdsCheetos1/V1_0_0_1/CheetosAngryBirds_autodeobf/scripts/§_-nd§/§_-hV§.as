package §_-nd§
{
   import §_-2r§.§_-sn§;
   import §_-SQ§.§_-Wm§;
   import §_-SQ§.§_-jf§;
   import §_-SQ§.§break§;
   import §_-uG§.§_-uL§;
   
   public class §_-hV§ extends §break§
   {
       
      
      protected var §_-dd§:Vector.<§_-Xz§>;
      
      private var §_-dm§:int;
      
      public function §_-hV§(param1:String)
      {
         this.§_-dd§ = new Vector.<§_-Xz§>();
         super(param1);
      }
      
      public static function §_-Eh§(param1:String) : §break§
      {
         var _loc2_:§_-hV§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§_-Wm§ = null;
         var _loc12_:String = null;
         var _loc13_:§_-jf§ = null;
         var _loc14_:String = null;
         var _loc15_:§_-Xz§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §_-hV§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §_-Wm§.§_-Eh§(_loc10_))
               {
                  _loc2_.§_-uw§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §_-jf§.§_-Eh§(_loc12_))
               {
                  _loc2_.§_-8R§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §_-Xz§.§_-Eh§(_loc14_))
               {
                  _loc2_.§_-dd§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §_-ce§(param1:int) : void
      {
         if(!§_-4S§)
         {
            this.§_-dd§.push(new §_-Xz§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§break§.DELIM + this.§_-sc§());
      }
      
      private function §_-sc§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§_-dd§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dd§.length)
         {
            _loc1_ += §break§.INTERNAL_DELIM;
            _loc1_ += this.§_-dd§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§_-sn§) : void
      {
         var _loc2_:§_-Xz§ = null;
         if(this.§_-dd§.length > this.§_-dm§)
         {
            _loc2_ = this.§_-dd§[this.§_-dm§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §_-uL§).§_-cy§();
               ++this.§_-dm§;
            }
         }
         super.step(param1);
      }
   }
}
