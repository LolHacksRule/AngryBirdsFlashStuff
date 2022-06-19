package §>!"§
{
   import §9N§.§9!%§;
   import flash.system.Capabilities;
   
   public class §"P§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §0Y§:String;
      
      private var §[R§:int;
      
      private var §4!Y§:Number;
      
      private var §"!#§:Number;
      
      protected var §8!O§:Boolean;
      
      protected var §&!0§:Vector.<§`[§>;
      
      protected var §0!T§:Vector.<§,!+§>;
      
      private var §9!;§:int;
      
      private var §?!5§:int;
      
      public function §"P§(param1:String)
      {
         this.§&!0§ = new Vector.<§`[§>();
         this.§0!T§ = new Vector.<§,!+§>();
         super();
         this.§0Y§ = param1;
         this.§4!Y§ = 1;
      }
      
      public static function §[I§(param1:String) : §"P§
      {
         var _loc2_:§"P§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§`[§ = null;
         var _loc9_:§,!+§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §"P§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §`[§.§[I§(_loc6_))
               {
                  _loc2_.§&!0§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §,!+§.§[I§(_loc7_))
               {
                  _loc2_.§0!T§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §9y§() : Boolean
      {
         return this.§8!O§;
      }
      
      public function get §>!O§() : String
      {
         return this.§0Y§;
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
         return this.§[R§;
      }
      
      public function §8!"§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§8!O§)
         {
            this.§&!0§.push(new §`[§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §?!3§(param1:int) : void
      {
         if(!this.§8!O§)
         {
            if(this.§0!T§.length > 0)
            {
               if(this.§0!T§[this.§0!T§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§0!T§.push(new §,!+§(param1));
         }
      }
      
      public function play() : void
      {
         this.§8!O§ = true;
      }
      
      public function step(param1:§9!%§) : void
      {
         var _loc2_:§`[§ = null;
         var _loc3_:§,!+§ = null;
         if(this.§&!0§.length > this.§9!;§)
         {
            _loc2_ = this.§&!0§[this.§9!;§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§<!N§(_loc2_.x,_loc2_.y,_loc2_.§0!S§,_loc2_.angle);
               ++this.§9!;§;
            }
         }
         if(this.§0!T§.length > this.§?!5§)
         {
            _loc3_ = this.§0!T§[this.§?!5§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§?!5§;
            }
         }
         ++this.§[R§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§0Y§ + DELIM + this.§+,§() + DELIM + this.§<!E§());
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
      
      private function §<!E§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§0!T§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!T§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§0!T§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
