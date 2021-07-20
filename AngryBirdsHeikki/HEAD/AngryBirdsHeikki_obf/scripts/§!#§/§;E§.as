package §!#§
{
   import §!I§.§8!!§;
   import §#!R§.§,!M§;
   import §#!R§.§0E§;
   import §#!R§.§2A§;
   import §9!'§.§0!%§;
   
   public class §;E§ extends §0E§
   {
       
      
      protected var §7m§:Vector.<§]!J§>;
      
      private var §`?§:int;
      
      public function §;E§(param1:String)
      {
         this.§7m§ = new Vector.<§]!J§>();
         super(param1);
      }
      
      public static function initialize(param1:String) : §;E§
      {
         var _loc2_:§;E§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§,!M§ = null;
         var _loc11_:§2A§ = null;
         var _loc12_:String = null;
         var _loc13_:§]!J§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §;E§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            for each(_loc7_ in _loc4_)
            {
               if(_loc10_ = §,!M§.initialize(_loc7_))
               {
                  _loc2_.§]z§.push(_loc10_);
               }
            }
            for each(_loc8_ in _loc5_)
            {
               if(_loc11_ = §2A§.initialize(_loc8_))
               {
                  _loc2_.§+]§.push(_loc11_);
               }
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc12_ = _loc6_[_loc9_];
               if(_loc13_ = §]!J§.initialize(_loc12_))
               {
                  _loc2_.§7m§.push(_loc13_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §#4§(param1:int) : void
      {
         if(!§[K§)
         {
            this.§7m§.push(new §]!J§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§0E§.DELIM + this.§0!>§());
      }
      
      private function §0!>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§7m§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§7m§.length)
         {
            _loc1_ += §0E§.INTERNAL_DELIM;
            _loc1_ += this.§7m§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§0!%§) : void
      {
         var _loc2_:§]!J§ = null;
         if(this.§7m§.length > this.§`?§)
         {
            _loc2_ = this.§7m§[this.§`?§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §8!!§).§;!A§();
               ++this.§`?§;
            }
         }
         super.step(param1);
      }
   }
}
