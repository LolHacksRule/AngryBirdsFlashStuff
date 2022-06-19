package §,!+§
{
   import §?'§.§9N§;
   import §?w§.§null§;
   import §@!W§.§0!S§;
   import §@!W§.§>!"§;
   import §@!W§.§[I§;
   
   public class §;!1§ extends §>!"§
   {
       
      
      protected var §&!@§:Vector.<§22§>;
      
      private var §>!C§:int;
      
      public function §;!1§(param1:String)
      {
         this.§&!@§ = new Vector.<§22§>();
         super(param1);
      }
      
      public static function §<!E§(param1:String) : §>!"§
      {
         var _loc2_:§;!1§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§[I§ = null;
         var _loc12_:String = null;
         var _loc13_:§0!S§ = null;
         var _loc14_:String = null;
         var _loc15_:§22§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §;!1§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §[I§.§<!E§(_loc10_))
               {
                  _loc2_.§8!O§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §0!S§.§<!E§(_loc12_))
               {
                  _loc2_.§&!0§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §22§.§<!E§(_loc14_))
               {
                  _loc2_.§&!@§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §]I§(param1:int) : void
      {
         if(!§"!#§)
         {
            this.§&!@§.push(new §22§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§>!"§.DELIM + this.§20§());
      }
      
      private function §20§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!@§.length)
         {
            _loc1_ += §>!"§.INTERNAL_DELIM;
            _loc1_ += this.§&!@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§9N§) : void
      {
         var _loc2_:§22§ = null;
         if(this.§&!@§.length > this.§>!C§)
         {
            _loc2_ = this.§&!@§[this.§>!C§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §null§).§`K§();
               ++this.§>!C§;
            }
         }
         super.step(param1);
      }
   }
}
