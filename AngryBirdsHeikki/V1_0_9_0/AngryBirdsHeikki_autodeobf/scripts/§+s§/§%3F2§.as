package §+s§
{
   import § d§.§'!"§;
   import §,F§.§=x§;
   import §1w§.§,3§;
   import §1w§.§8m§;
   import §1w§.§@!X§;
   
   public class §?2§ extends §,3§
   {
       
      
      protected var §&3§:Vector.<§9!U§>;
      
      private var §1! §:int;
      
      public function §?2§(param1:String)
      {
         this.§&3§ = new Vector.<§9!U§>();
         super(param1);
      }
      
      public static function initialize(param1:String) : §?2§
      {
         var _loc2_:§?2§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§8m§ = null;
         var _loc11_:§@!X§ = null;
         var _loc12_:String = null;
         var _loc13_:§9!U§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §?2§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            for each(_loc7_ in _loc4_)
            {
               if(_loc10_ = §8m§.initialize(_loc7_))
               {
                  _loc2_.§^!c§.push(_loc10_);
               }
            }
            for each(_loc8_ in _loc5_)
            {
               if(_loc11_ = §@!X§.initialize(_loc8_))
               {
                  _loc2_.§&!@§.push(_loc11_);
               }
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc12_ = _loc6_[_loc9_];
               if(_loc13_ = §9!U§.initialize(_loc12_))
               {
                  _loc2_.§&3§.push(_loc13_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §'Z§(param1:int) : void
      {
         if(!§-i§)
         {
            this.§&3§.push(new §9!U§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§,3§.DELIM + this.§ !#§());
      }
      
      private function § !#§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&3§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&3§.length)
         {
            _loc1_ += §,3§.INTERNAL_DELIM;
            _loc1_ += this.§&3§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§'!"§) : void
      {
         var _loc2_:§9!U§ = null;
         if(this.§&3§.length > this.§1! §)
         {
            _loc2_ = this.§&3§[this.§1! §];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §=x§).§]+§();
               ++this.§1! §;
            }
         }
         super.step(param1);
      }
   }
}
