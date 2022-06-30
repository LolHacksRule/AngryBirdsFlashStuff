package §!![§
{
   import §"!I§.§^!2§;
   import §&!T§.§%%§;
   import §6!B§.§0[§;
   import §6!B§.§8u§;
   import §6!B§.§?O§;
   
   public class §%!H§ extends §8u§
   {
       
      
      protected var §<!R§:Vector.<§^7§>;
      
      private var §;d§:int;
      
      public function §%!H§(param1:String)
      {
         this.§<!R§ = new Vector.<§^7§>();
         super(param1);
      }
      
      public static function initialize(param1:String) : §%!H§
      {
         var _loc2_:§%!H§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:§?O§ = null;
         var _loc11_:§0[§ = null;
         var _loc12_:String = null;
         var _loc13_:§^7§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §%!H§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            for each(_loc7_ in _loc4_)
            {
               if(_loc10_ = §?O§.initialize(_loc7_))
               {
                  _loc2_.§"!T§.push(_loc10_);
               }
            }
            for each(_loc8_ in _loc5_)
            {
               if(_loc11_ = §0[§.initialize(_loc8_))
               {
                  _loc2_.§'t§.push(_loc11_);
               }
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc12_ = _loc6_[_loc9_];
               if(_loc13_ = §^7§.initialize(_loc12_))
               {
                  _loc2_.§<!R§.push(_loc13_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §6!Z§(param1:int) : void
      {
         if(!§true§)
         {
            this.§<!R§.push(new §^7§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§8u§.DELIM + this.§`H§());
      }
      
      private function §`H§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§<!R§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!R§.length)
         {
            _loc1_ += §8u§.INTERNAL_DELIM;
            _loc1_ += this.§<!R§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§^!2§) : void
      {
         var _loc2_:§^7§ = null;
         if(this.§<!R§.length > this.§;d§)
         {
            _loc2_ = this.§<!R§[this.§;d§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §%%§).§,!+§();
               ++this.§;d§;
            }
         }
         super.step(param1);
      }
   }
}
