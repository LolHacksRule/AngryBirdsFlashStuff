package §;!1§
{
   import §9N§.§9!%§;
   import §>!"§.§"P§;
   import §>!"§.§,!+§;
   import §>!"§.§`[§;
   import §?w§.§null§;
   
   public class §&!@§ extends §"P§
   {
       
      
      protected var §>!C§:Vector.<§<0§>;
      
      private var §]I§:int;
      
      public function §&!@§(param1:String)
      {
         this.§>!C§ = new Vector.<§<0§>();
         super(param1);
      }
      
      public static function §[I§(param1:String) : §"P§
      {
         var _loc2_:§&!@§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:§`[§ = null;
         var _loc12_:String = null;
         var _loc13_:§,!+§ = null;
         var _loc14_:String = null;
         var _loc15_:§<0§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 4)
         {
            _loc2_ = new §&!@§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            _loc6_ = _loc3_[3].split(INTERNAL_DELIM);
            _loc7_ = 1;
            while(_loc7_ < _loc4_.length)
            {
               _loc10_ = _loc4_[_loc7_];
               if(_loc11_ = §`[§.§[I§(_loc10_))
               {
                  _loc2_.§&!0§.push(_loc11_);
               }
               _loc7_++;
            }
            _loc8_ = 1;
            while(_loc8_ < _loc5_.length)
            {
               _loc12_ = _loc5_[_loc8_];
               if(_loc13_ = §,!+§.§[I§(_loc12_))
               {
                  _loc2_.§0!T§.push(_loc13_);
               }
               _loc8_++;
            }
            _loc9_ = 1;
            while(_loc9_ < _loc6_.length)
            {
               _loc14_ = _loc6_[_loc9_];
               if(_loc15_ = §<0§.§[I§(_loc14_))
               {
                  _loc2_.§>!C§.push(_loc15_);
               }
               _loc9_++;
            }
         }
         return _loc2_;
      }
      
      public function §20§(param1:int) : void
      {
         if(!§8!O§)
         {
            this.§>!C§.push(new §<0§(param1));
         }
      }
      
      override public function toString() : String
      {
         var _loc1_:String = super.toString();
         return _loc1_ + (§"P§.DELIM + this.§22§());
      }
      
      private function §22§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§>!C§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§>!C§.length)
         {
            _loc1_ += §"P§.INTERNAL_DELIM;
            _loc1_ += this.§>!C§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function step(param1:§9!%§) : void
      {
         var _loc2_:§<0§ = null;
         if(this.§>!C§.length > this.§]I§)
         {
            _loc2_ = this.§>!C§[this.§]I§];
            if(_loc2_.step == currentStep)
            {
               (param1.slingshot as §null§).§`K§();
               ++this.§]I§;
            }
         }
         super.step(param1);
      }
   }
}
