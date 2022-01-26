package §^!9§
{
   import §6<§.§=$§;
   import §8!`§.§4J§;
   import §`V§.§&!<§;
   import §`V§.§-!6§;
   import §`V§.§-!S§;
   
   public class §&5§ extends §-!6§
   {
       
      
      protected var §<!_§:Vector.<§&!U§>;
      
      private var § !K§:int;
      
      public function §&5§(param1:String)
      {
         this.§<!_§ = new Vector.<§&!U§>();
         super(param1);
      }
      
      public static function §-W§(param1:String) : §-!6§
      {
         var _loc2_:§&5§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§&!<§ = null;
         var _loc12_:String = null;
         var _loc13_:§-!S§ = null;
         var _loc14_:String = null;
         var _loc15_:§&!U§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §&5§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §&!<§.§-W§(_loc10_))
               {
                  _loc2_.§!J§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §-!S§.§-W§(_loc12_))
               {
                  _loc2_.§ 7§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §&!U§.§-W§(_loc14_))
               {
                  _loc2_.§<!_§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §1S§(param1:int) : void
      {
         if(!§>B§)
         {
            this.§<!_§.push(new §&!U§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§-!6§.DELIM + this.§>!O§());
      }
      
      private function §>!O§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§<!_§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!_§.length)
         {
            _loc1_ += §-!6§.INTERNAL_DELIM;
            _loc1_ += this.§<!_§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§4J§) : void
      {
         var _loc2_:§&!U§ = null;
         if(this.§<!_§.length > this.§ !K§)
         {
            _loc2_ = this.§<!_§[this.§ !K§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §=$§).§4`§();
               ++this.§ !K§;
            }
         }
         super.step(param1);
      }
   }
}
