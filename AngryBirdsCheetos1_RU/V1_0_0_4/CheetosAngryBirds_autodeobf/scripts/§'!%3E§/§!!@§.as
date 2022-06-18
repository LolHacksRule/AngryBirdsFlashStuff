package §'!>§
{
   import §0&§.§<!+§;
   import §7z§.§]!-§;
   import §]+§.§ W§;
   import §]+§.§+?§;
   import §]+§.§2;§;
   
   public class §!!@§ extends §+?§
   {
       
      
      protected var §?!;§:Vector.<§<X§>;
      
      private var §!!O§:int;
      
      public function §!!@§(param1:String)
      {
         this.§?!;§ = new Vector.<§<X§>();
         super(param1);
      }
      
      public static function §7x§(param1:String) : §+?§
      {
         var _loc2_:§!!@§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§ W§ = null;
         var _loc12_:String = null;
         var _loc13_:§2;§ = null;
         var _loc14_:String = null;
         var _loc15_:§<X§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §!!@§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = § W§.§7x§(_loc10_))
               {
                  _loc2_.§7K§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §2;§.§7x§(_loc12_))
               {
                  _loc2_.§#$§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §<X§.§7x§(_loc14_))
               {
                  _loc2_.§?!;§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §2N§(param1:int) : void
      {
         if(!§'!R§)
         {
            this.§?!;§.push(new §<X§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§+?§.DELIM + this.§;!F§());
      }
      
      private function §;!F§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§?!;§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!;§.length)
         {
            _loc1_ += §+?§.INTERNAL_DELIM;
            _loc1_ += this.§?!;§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§]!-§) : void
      {
         var _loc2_:§<X§ = null;
         if(this.§?!;§.length > this.§!!O§)
         {
            _loc2_ = this.§?!;§[this.§!!O§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §<!+§).§9q§();
               ++this.§!!O§;
            }
         }
         super.step(param1);
      }
   }
}
