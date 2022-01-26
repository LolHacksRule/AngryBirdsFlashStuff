package §>!@§
{
   import §!!V§.§&I§;
   import flash.system.Capabilities;
   
   public class §1A§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §!^§:String;
      
      private var §+!@§:int;
      
      private var §9_§:Number;
      
      private var §9!6§:Number;
      
      protected var §9M§:Boolean;
      
      protected var §&!+§:Vector.<§#! §>;
      
      protected var §,!@§:Vector.<§90§>;
      
      private var §&m§:int;
      
      private var §9,§:int;
      
      public function §1A§(param1:String)
      {
         this.§&!+§ = new Vector.<§#! §>();
         this.§,!@§ = new Vector.<§90§>();
         super();
         this.§!^§ = param1;
         this.§9_§ = 1;
      }
      
      public static function §?!V§(param1:String) : §1A§
      {
         var _loc2_:§1A§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§#! § = null;
         var _loc9_:§90§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §1A§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §#! §.§?!V§(_loc6_))
               {
                  _loc2_.§&!+§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §90§.§?!V§(_loc7_))
               {
                  _loc2_.§,!@§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §"U§() : Boolean
      {
         return this.§9M§;
      }
      
      public function get §"!V§() : String
      {
         return this.§!^§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§9_§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§9_§;
      }
      
      protected function get currentStep() : int
      {
         return this.§+!@§;
      }
      
      public function §8o§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§9M§)
         {
            this.§&!+§.push(new §#! §(param1,param2,param3,param4,param5));
         }
      }
      
      public function §`Y§(param1:int) : void
      {
         if(!this.§9M§)
         {
            if(this.§,!@§.length > 0)
            {
               if(this.§,!@§[this.§,!@§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§,!@§.push(new §90§(param1));
         }
      }
      
      public function play() : void
      {
         this.§9M§ = true;
      }
      
      public function step(param1:§&I§) : void
      {
         var _loc2_:§#! § = null;
         var _loc3_:§90§ = null;
         if(this.§&!+§.length > this.§&m§)
         {
            _loc2_ = this.§&!+§[this.§&m§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§<!O§(_loc2_.x,_loc2_.y,_loc2_.§7!%§,_loc2_.angle);
               ++this.§&m§;
            }
         }
         if(this.§,!@§.length > this.§9,§)
         {
            _loc3_ = this.§,!@§[this.§9,§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§9,§;
            }
         }
         ++this.§+!@§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§!^§ + DELIM + this.§;x§() + DELIM + this.§,>§());
      }
      
      private function §;x§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&!+§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!+§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§&!+§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §,>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§,!@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!@§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§,!@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
