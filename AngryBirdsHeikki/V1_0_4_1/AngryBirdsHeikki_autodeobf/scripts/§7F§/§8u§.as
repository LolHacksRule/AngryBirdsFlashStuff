package §7F§
{
   import §^!7§.§^A§;
   import §`+§.§ !]§;
   import §`+§.§5_§;
   import §`+§.§>!&§;
   
   public class §8u§ extends §>!&§
   {
       
      
      protected var § <§:Vector.<§7f§>;
      
      private var §9Q§:int;
      
      public function §8u§(param1:String)
      {
         this.§ <§ = new Vector.<§7f§>();
         super(param1);
      }
      
      public static function initialize(param1:String) : §8u§
      {
         var _loc2_:§8u§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§ !]§ = null;
         var _loc11_:§5_§ = null;
         var _loc12_:String = null;
         var _loc13_:§7f§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §8u§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            for each(_loc7_ in _loc4_)
            {
               if(_loc10_ = § !]§.initialize(_loc7_))
               {
                  _loc2_.§ in§.push(_loc10_);
               }
            }
            for each(_loc8_ in _loc5_)
            {
               if(_loc11_ = §5_§.initialize(_loc8_))
               {
                  _loc2_.§;§.push(_loc11_);
               }
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc12_ = _loc6_[_loc9_];
               if(_loc13_ = §7f§.initialize(_loc12_))
               {
                  _loc2_.§ <§.push(_loc13_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §>Y§(param1:int) : void
      {
         if(!§7b§)
         {
            this.§ <§.push(new §7f§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§>!&§.DELIM + this.§ w§());
      }
      
      private function § w§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§ <§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§ <§.length)
         {
            _loc1_ += §>!&§.INTERNAL_DELIM;
            _loc1_ += this.§ <§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§^A§) : void
      {
         var _loc2_:§7f§ = null;
         if(this.§ <§.length > this.§9Q§)
         {
            _loc2_ = this.§ <§[this.§9Q§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §!E§).§ o§();
               ++this.§9Q§;
            }
         }
         super.step(param1);
      }
   }
}
