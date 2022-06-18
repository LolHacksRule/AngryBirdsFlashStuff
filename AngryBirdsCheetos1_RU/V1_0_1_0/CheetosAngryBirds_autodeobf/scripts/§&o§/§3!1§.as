package §&o§
{
   import §!!V§.§&I§;
   import §3X§.§%+§;
   import §>!@§.§#! §;
   import §>!@§.§1A§;
   import §>!@§.§90§;
   
   public class §3!1§ extends §1A§
   {
       
      
      protected var §#!R§:Vector.<§2!P§>;
      
      private var §'C§:int;
      
      public function §3!1§(param1:String)
      {
         this.§#!R§ = new Vector.<§2!P§>();
         super(param1);
      }
      
      public static function §?!V§(param1:String) : §1A§
      {
         var _loc2_:§3!1§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§#! § = null;
         var _loc12_:String = null;
         var _loc13_:§90§ = null;
         var _loc14_:String = null;
         var _loc15_:§2!P§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §3!1§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §#! §.§?!V§(_loc10_))
               {
                  _loc2_.§&!+§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §90§.§?!V§(_loc12_))
               {
                  _loc2_.§,!@§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §2!P§.§?!V§(_loc14_))
               {
                  _loc2_.§#!R§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §'!0§(param1:int) : void
      {
         if(!§9M§)
         {
            this.§#!R§.push(new §2!P§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§1A§.DELIM + this.§?!#§());
      }
      
      private function §?!#§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§#!R§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!R§.length)
         {
            _loc1_ += §1A§.INTERNAL_DELIM;
            _loc1_ += this.§#!R§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§&I§) : void
      {
         var _loc2_:§2!P§ = null;
         if(this.§#!R§.length > this.§'C§)
         {
            _loc2_ = this.§#!R§[this.§'C§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §%+§).§#z§();
               ++this.§'C§;
            }
         }
         super.step(param1);
      }
   }
}
