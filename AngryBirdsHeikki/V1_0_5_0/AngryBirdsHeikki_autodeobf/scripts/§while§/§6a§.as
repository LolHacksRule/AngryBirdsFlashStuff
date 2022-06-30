package §while§
{
   import §+D§.§5!P§;
   import §5N§.§!!I§;
   import §<X§.§!4§;
   import §<X§.§#D§;
   import §<X§.§^%§;
   
   public class §6a§ extends §^%§
   {
       
      
      protected var §+X§:Vector.<§4;§>;
      
      private var §9!8§:int;
      
      public function §6a§(param1:String)
      {
         this.§+X§ = new Vector.<§4;§>();
         super(param1);
      }
      
      public static function initialize(param1:String) : §6a§
      {
         var _loc2_:§6a§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§#D§ = null;
         var _loc11_:§!4§ = null;
         var _loc12_:String = null;
         var _loc13_:§4;§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §6a§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            for each(_loc7_ in _loc4_)
            {
               if(_loc10_ = §#D§.initialize(_loc7_))
               {
                  _loc2_.§9!c§.push(_loc10_);
               }
            }
            for each(_loc8_ in _loc5_)
            {
               if(_loc11_ = §!4§.initialize(_loc8_))
               {
                  _loc2_.§1!C§.push(_loc11_);
               }
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc12_ = _loc6_[_loc9_];
               if(_loc13_ = §4;§.initialize(_loc12_))
               {
                  _loc2_.§+X§.push(_loc13_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §9!P§(param1:int) : void
      {
         if(!§&!^§)
         {
            this.§+X§.push(new §4;§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§^%§.DELIM + this.§8!L§());
      }
      
      private function §8!L§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§+X§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§+X§.length)
         {
            _loc1_ += §^%§.INTERNAL_DELIM;
            _loc1_ += this.§+X§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§5!P§) : void
      {
         var _loc2_:§4;§ = null;
         if(this.§+X§.length > this.§9!8§)
         {
            _loc2_ = this.§+X§[this.§9!8§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §!!I§).§6^§();
               ++this.§9!8§;
            }
         }
         super.step(param1);
      }
   }
}
