package §-!?§
{
   import §&=§.§,!5§;
   import §&=§.§4!K§;
   import §&=§.§5%§;
   import §0V§.§`!O§;
   import §9!S§.§@!G§;
   
   public class §26§ extends §4!K§
   {
       
      
      protected var §#t§:Vector.<§-e§>;
      
      private var §0i§:int;
      
      public function §26§(param1:String)
      {
         this.§#t§ = new Vector.<§-e§>();
         super(param1);
      }
      
      public static function §5M§(param1:String) : §4!K§
      {
         var _loc2_:§26§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§5%§ = null;
         var _loc12_:String = null;
         var _loc13_:§,!5§ = null;
         var _loc14_:String = null;
         var _loc15_:§-e§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §26§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §5%§.§5M§(_loc10_))
               {
                  _loc2_.§=@§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §,!5§.§5M§(_loc12_))
               {
                  _loc2_.§^!J§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §-e§.§5M§(_loc14_))
               {
                  _loc2_.§#t§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §-E§(param1:int) : void
      {
         if(!§"0§)
         {
            this.§#t§.push(new §-e§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§4!K§.DELIM + this.§@F§());
      }
      
      private function §@F§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#t§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#t§.length)
         {
            _loc1_ += §4!K§.INTERNAL_DELIM;
            _loc1_ += this.§#t§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§`!O§) : void
      {
         var _loc2_:§-e§ = null;
         if(this.§#t§.length > this.§0i§)
         {
            _loc2_ = this.§#t§[this.§0i§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §@!G§).§`!0§();
               ++this.§0i§;
            }
         }
         super.step(param1);
      }
   }
}
