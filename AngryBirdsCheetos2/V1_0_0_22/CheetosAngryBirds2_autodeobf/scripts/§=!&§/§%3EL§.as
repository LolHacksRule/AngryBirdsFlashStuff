package §=!&§
{
   import §,§.§ p§;
   import §09§.§4!7§;
   import §<a§.§"G§;
   import §<a§.§#C§;
   import §<a§.§2!P§;
   
   public class §>L§ extends §2!P§
   {
       
      
      protected var §5C§:Vector.<§#L§>;
      
      private var § 0§:int;
      
      public function §>L§(param1:String)
      {
         this.§5C§ = new Vector.<§#L§>();
         super(param1);
      }
      
      public static function §,a§(param1:String) : §2!P§
      {
         var _loc2_:§>L§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§"G§ = null;
         var _loc12_:String = null;
         var _loc13_:§#C§ = null;
         var _loc14_:String = null;
         var _loc15_:§#L§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §>L§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §"G§.§,a§(_loc10_))
               {
                  _loc2_.§#§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §#C§.§,a§(_loc12_))
               {
                  _loc2_.§,F§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §#L§.§,a§(_loc14_))
               {
                  _loc2_.§5C§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §7$§(param1:int) : void
      {
         if(!§8!7§)
         {
            this.§5C§.push(new §#L§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§2!P§.DELIM + this.§#!U§());
      }
      
      private function §#!U§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§5C§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5C§.length)
         {
            _loc1_ += §2!P§.INTERNAL_DELIM;
            _loc1_ += this.§5C§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§ p§) : void
      {
         var _loc2_:§#L§ = null;
         if(this.§5C§.length > this.§ 0§)
         {
            _loc2_ = this.§5C§[this.§ 0§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §4!7§).§0!7§();
               ++this.§ 0§;
            }
         }
         super.step(param1);
      }
   }
}
