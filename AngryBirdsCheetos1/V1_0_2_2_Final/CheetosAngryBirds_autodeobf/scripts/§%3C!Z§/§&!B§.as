package §<!Z§
{
   import §!X§.§86§;
   import §5!M§.§7!0§;
   import §=?§.§<Q§;
   import §=?§.§>!O§;
   import §=?§.§^!M§;
   
   public class §&!B§ extends §^!M§
   {
       
      
      protected var §]!6§:Vector.<§%!+§>;
      
      private var §@!E§:int;
      
      public function §&!B§(param1:String)
      {
         this.§]!6§ = new Vector.<§%!+§>();
         super(param1);
      }
      
      public static function §&O§(param1:String) : §^!M§
      {
         var _loc2_:§&!B§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§<Q§ = null;
         var _loc12_:String = null;
         var _loc13_:§>!O§ = null;
         var _loc14_:String = null;
         var _loc15_:§%!+§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §&!B§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §<Q§.§&O§(_loc10_))
               {
                  _loc2_.§+>§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §>!O§.§&O§(_loc12_))
               {
                  _loc2_.§8=§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §%!+§.§&O§(_loc14_))
               {
                  _loc2_.§]!6§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §^p§(param1:int) : void
      {
         if(!§[K§)
         {
            this.§]!6§.push(new §%!+§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§^!M§.DELIM + this.§>'§());
      }
      
      private function §>'§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]!6§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!6§.length)
         {
            _loc1_ += §^!M§.INTERNAL_DELIM;
            _loc1_ += this.§]!6§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§86§) : void
      {
         var _loc2_:§%!+§ = null;
         if(this.§]!6§.length > this.§@!E§)
         {
            _loc2_ = this.§]!6§[this.§@!E§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §7!0§).§<!<§();
               ++this.§@!E§;
            }
         }
         super.step(param1);
      }
   }
}
