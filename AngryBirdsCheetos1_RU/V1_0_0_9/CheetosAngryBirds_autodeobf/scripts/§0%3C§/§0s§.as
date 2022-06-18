package §0<§
{
   import §+!7§.§[!]§;
   import §3E§.§6w§;
   import §^$§.§-!%§;
   import §^$§.§]9§;
   import §^$§.§^!B§;
   
   public class §0s§ extends §^!B§
   {
       
      
      protected var §+E§:Vector.<§ !_§>;
      
      private var §0!C§:int;
      
      public function §0s§(param1:String)
      {
         this.§+E§ = new Vector.<§ !_§>();
         super(param1);
      }
      
      public static function §8j§(param1:String) : §^!B§
      {
         var _loc2_:§0s§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§-!%§ = null;
         var _loc12_:String = null;
         var _loc13_:§]9§ = null;
         var _loc14_:String = null;
         var _loc15_:§ !_§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §0s§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §-!%§.§8j§(_loc10_))
               {
                  _loc2_.§<!J§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §]9§.§8j§(_loc12_))
               {
                  _loc2_.§#!Z§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = § !_§.§8j§(_loc14_))
               {
                  _loc2_.§+E§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §;![§(param1:int) : void
      {
         if(!§,E§)
         {
            this.§+E§.push(new § !_§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§^!B§.DELIM + this.§;!7§());
      }
      
      private function §;!7§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+E§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+E§.length)
         {
            _loc1_ += §^!B§.INTERNAL_DELIM;
            _loc1_ += this.§+E§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§6w§) : void
      {
         var _loc2_:§ !_§ = null;
         if(this.§+E§.length > this.§0!C§)
         {
            _loc2_ = this.§+E§[this.§0!C§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §[!]§).§[!A§();
               ++this.§0!C§;
            }
         }
         super.step(param1);
      }
   }
}
