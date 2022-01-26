package §@!W§
{
   import §?'§.§9N§;
   import flash.system.Capabilities;
   
   public class §>!"§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §"P§:String;
      
      private var §0Y§:int;
      
      private var §4!Y§:Number;
      
      private var §[R§:Number;
      
      protected var §"!#§:Boolean;
      
      protected var §8!O§:Vector.<§[I§>;
      
      protected var §&!0§:Vector.<§0!S§>;
      
      private var §0!T§:int;
      
      private var §9!;§:int;
      
      public function §>!"§(param1:String)
      {
         this.§8!O§ = new Vector.<§[I§>();
         this.§&!0§ = new Vector.<§0!S§>();
         super();
         this.§"P§ = param1;
         this.§4!Y§ = 1;
      }
      
      public static function §<!E§(param1:String) : §>!"§
      {
         var _loc2_:§>!"§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§[I§ = null;
         var _loc9_:§0!S§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §>!"§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §[I§.§<!E§(_loc6_))
               {
                  _loc2_.§8!O§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §0!S§.§<!E§(_loc7_))
               {
                  _loc2_.§&!0§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §?!5§() : Boolean
      {
         return this.§"!#§;
      }
      
      public function get §9y§() : String
      {
         return this.§"P§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4!Y§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§4!Y§;
      }
      
      protected function get currentStep() : int
      {
         return this.§0Y§;
      }
      
      public function §>!O§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§"!#§)
         {
            this.§8!O§.push(new §[I§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §8!"§(param1:int) : void
      {
         if(!this.§"!#§)
         {
            if(this.§&!0§.length > 0)
            {
               if(this.§&!0§[this.§&!0§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§&!0§.push(new §0!S§(param1));
         }
      }
      
      public function play() : void
      {
         this.§"!#§ = true;
      }
      
      public function step(param1:§9N§) : void
      {
         var _loc2_:§[I§ = null;
         var _loc3_:§0!S§ = null;
         if(this.§8!O§.length > this.§0!T§)
         {
            _loc2_ = this.§8!O§[this.§0!T§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§]!F§(_loc2_.x,_loc2_.y,_loc2_.§`[§,_loc2_.angle);
               ++this.§0!T§;
            }
         }
         if(this.§&!0§.length > this.§9!;§)
         {
            _loc3_ = this.§&!0§[this.§9!;§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§9!;§;
            }
         }
         ++this.§0Y§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§"P§ + DELIM + this.§?!3§() + DELIM + this.§+,§());
      }
      
      private function §?!3§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§8!O§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!O§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§8!O§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §+,§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!0§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!0§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§&!0§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
