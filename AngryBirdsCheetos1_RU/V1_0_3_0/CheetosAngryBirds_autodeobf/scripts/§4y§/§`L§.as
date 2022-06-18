package §4y§
{
   import §0q§.§#!_§;
   import §9T§.§=!^§;
   import §`!W§.§5r§;
   import §`!W§.§9k§;
   import §`!W§.§for§;
   
   public class §`L§ extends §9k§
   {
       
      
      protected var §&p§:Vector.<§02§>;
      
      private var §%]§:int;
      
      public function §`L§(param1:String)
      {
         this.§&p§ = new Vector.<§02§>();
         super(param1);
      }
      
      public static function §!f§(param1:String) : §9k§
      {
         var _loc2_:§`L§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§for§ = null;
         var _loc12_:String = null;
         var _loc13_:§5r§ = null;
         var _loc14_:String = null;
         var _loc15_:§02§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §`L§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §for§.§!f§(_loc10_))
               {
                  _loc2_.§&W§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §5r§.§!f§(_loc12_))
               {
                  _loc2_.§5;§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §02§.§!f§(_loc14_))
               {
                  _loc2_.§&p§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §><§(param1:int) : void
      {
         if(!§-f§)
         {
            this.§&p§.push(new §02§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§9k§.DELIM + this.§58§());
      }
      
      private function §58§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&p§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&p§.length)
         {
            _loc1_ += §9k§.INTERNAL_DELIM;
            _loc1_ += this.§&p§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§=!^§) : void
      {
         var _loc2_:§02§ = null;
         if(this.§&p§.length > this.§%]§)
         {
            _loc2_ = this.§&p§[this.§%]§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §#!_§).§>9§();
               ++this.§%]§;
            }
         }
         super.step(param1);
      }
   }
}
