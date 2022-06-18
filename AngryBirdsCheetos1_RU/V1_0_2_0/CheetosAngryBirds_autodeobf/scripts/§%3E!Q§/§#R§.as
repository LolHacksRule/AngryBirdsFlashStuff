package §>!Q§
{
   import §!7§.§@a§;
   import §-A§.§%9§;
   import §]!F§.§,3§;
   import §]!F§.§5!T§;
   import §]!F§.§8"§;
   
   public class §#R§ extends §,3§
   {
       
      
      protected var §&7§:Vector.<§&!B§>;
      
      private var §3§:int;
      
      public function §#R§(param1:String)
      {
         this.§&7§ = new Vector.<§&!B§>();
         super(param1);
      }
      
      public static function §>!W§(param1:String) : §,3§
      {
         var _loc2_:§#R§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§5!T§ = null;
         var _loc12_:String = null;
         var _loc13_:§8"§ = null;
         var _loc14_:String = null;
         var _loc15_:§&!B§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §#R§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §5!T§.§>!W§(_loc10_))
               {
                  _loc2_.§=!L§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §8"§.§>!W§(_loc12_))
               {
                  _loc2_.§'@§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §&!B§.§>!W§(_loc14_))
               {
                  _loc2_.§&7§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §'%§(param1:int) : void
      {
         if(!§'x§)
         {
            this.§&7§.push(new §&!B§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§,3§.DELIM + this.§]!2§());
      }
      
      private function §]!2§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&7§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&7§.length)
         {
            _loc1_ += §,3§.INTERNAL_DELIM;
            _loc1_ += this.§&7§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§%9§) : void
      {
         var _loc2_:§&!B§ = null;
         if(this.§&7§.length > this.§3§)
         {
            _loc2_ = this.§&7§[this.§3§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §@a§).§5L§();
               ++this.§3§;
            }
         }
         super.step(param1);
      }
   }
}
