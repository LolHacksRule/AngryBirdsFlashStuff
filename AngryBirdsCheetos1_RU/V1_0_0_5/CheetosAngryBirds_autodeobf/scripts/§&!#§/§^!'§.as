package §&!#§
{
   import §%b§.§0!Z§;
   import §7f§.§8!M§;
   import §[2§.§"S§;
   import §[2§.§-G§;
   import §[2§.§;!@§;
   
   public class §^!'§ extends §"S§
   {
       
      
      protected var §[!L§:Vector.<§;V§>;
      
      private var §2!S§:int;
      
      public function §^!'§(param1:String)
      {
         this.§[!L§ = new Vector.<§;V§>();
         super(param1);
      }
      
      public static function §]!^§(param1:String) : §"S§
      {
         var _loc2_:§^!'§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§-G§ = null;
         var _loc12_:String = null;
         var _loc13_:§;!@§ = null;
         var _loc14_:String = null;
         var _loc15_:§;V§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §^!'§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §-G§.§]!^§(_loc10_))
               {
                  _loc2_.§2!R§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §;!@§.§]!^§(_loc12_))
               {
                  _loc2_.§!&§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §;V§.§]!^§(_loc14_))
               {
                  _loc2_.§[!L§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §;4§(param1:int) : void
      {
         if(!§;!I§)
         {
            this.§[!L§.push(new §;V§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§"S§.DELIM + this.§#F§());
      }
      
      private function §#F§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§[!L§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!L§.length)
         {
            _loc1_ += §"S§.INTERNAL_DELIM;
            _loc1_ += this.§[!L§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§0!Z§) : void
      {
         var _loc2_:§;V§ = null;
         if(this.§[!L§.length > this.§2!S§)
         {
            _loc2_ = this.§[!L§[this.§2!S§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §8!M§).§;`§();
               ++this.§2!S§;
            }
         }
         super.step(param1);
      }
   }
}
