package §`!W§
{
   import §9T§.§=!^§;
   import flash.system.Capabilities;
   
   public class §9k§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §18§:String;
      
      private var §%L§:int;
      
      private var §4R§:Number;
      
      private var §;c§:Number;
      
      protected var §-f§:Boolean;
      
      protected var §&W§:Vector.<§for§>;
      
      protected var §5;§:Vector.<§5r§>;
      
      private var §",§:int;
      
      private var §"=§:int;
      
      public function §9k§(param1:String)
      {
         this.§&W§ = new Vector.<§for§>();
         this.§5;§ = new Vector.<§5r§>();
         super();
         this.§18§ = param1;
         this.§4R§ = 1;
      }
      
      public static function §!f§(param1:String) : §9k§
      {
         var _loc2_:§9k§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§for§ = null;
         var _loc9_:§5r§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §9k§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §for§.§!f§(_loc6_))
               {
                  _loc2_.§&W§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §5r§.§!f§(_loc7_))
               {
                  _loc2_.§5;§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §7`§() : Boolean
      {
         return this.§-f§;
      }
      
      public function get §]`§() : String
      {
         return this.§18§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§4R§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§4R§;
      }
      
      protected function get currentStep() : int
      {
         return this.§%L§;
      }
      
      public function §#o§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§-f§)
         {
            this.§&W§.push(new §for§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §=t§(param1:int) : void
      {
         if(!this.§-f§)
         {
            if(this.§5;§.length > 0)
            {
               if(this.§5;§[this.§5;§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§5;§.push(new §5r§(param1));
         }
      }
      
      public function play() : void
      {
         this.§-f§ = true;
      }
      
      public function step(param1:§=!^§) : void
      {
         var _loc2_:§for§ = null;
         var _loc3_:§5r§ = null;
         if(this.§&W§.length > this.§",§)
         {
            _loc2_ = this.§&W§[this.§",§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§&!!§(_loc2_.x,_loc2_.y,_loc2_.§`!?§,_loc2_.angle);
               ++this.§",§;
            }
         }
         if(this.§5;§.length > this.§"=§)
         {
            _loc3_ = this.§5;§[this.§"=§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§"=§;
            }
         }
         ++this.§%L§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§18§ + DELIM + this.§0§() + DELIM + this.§'!_§());
      }
      
      private function §0§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§&W§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&W§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§&W§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'!_§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§5;§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§5;§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§5;§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
