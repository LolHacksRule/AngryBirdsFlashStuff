package §=8§
{
   import § in§.§;!<§;
   import § in§.§=!K§;
   import § in§.§^$§;
   import §+!J§.;
   import §2z§.§2!U§;
   
   public class §"^§ extends §^$§
   {
       
      
      protected var §<a§:Vector.<§7z§>;
      
      private var §]!^§:int;
      
      public function §"^§(param1:String)
      {
         this.§<a§ = new Vector.<§7z§>();
         super(param1);
      }
      
      public static function initialize(param1:String) : §"^§
      {
         var _loc2_:§"^§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§;!<§ = null;
         var _loc11_:§=!K§ = null;
         var _loc12_:String = null;
         var _loc13_:§7z§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §"^§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            for each(_loc7_ in _loc4_)
            {
               if(_loc10_ = §;!<§.initialize(_loc7_))
               {
                  _loc2_.§2$§.push(_loc10_);
               }
            }
            for each(_loc8_ in _loc5_)
            {
               if(_loc11_ = §=!K§.initialize(_loc8_))
               {
                  _loc2_.§'!&§.push(_loc11_);
               }
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc12_ = _loc6_[_loc9_];
               if(_loc13_ = §7z§.initialize(_loc12_))
               {
                  _loc2_.§<a§.push(_loc13_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §3!-§(param1:int) : void
      {
         if(!§%!!§)
         {
            this.§<a§.push(new §7z§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§^$§.DELIM + this.§+e§());
      }
      
      private function §+e§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§<a§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<a§.length)
         {
            _loc1_ += §^$§.INTERNAL_DELIM;
            _loc1_ += this.§<a§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§2!U§) : void
      {
         var _loc2_:§7z§ = null;
         if(this.§<a§.length > this.§]!^§)
         {
            _loc2_ = this.§<a§[this.§]!^§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §#7§).§1!K§();
               ++this.§]!^§;
            }
         }
         super.step(param1);
      }
   }
}
