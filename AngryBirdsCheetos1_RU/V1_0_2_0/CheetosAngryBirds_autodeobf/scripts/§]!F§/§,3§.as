package §]!F§
{
   import §-A§.§%9§;
   import flash.system.Capabilities;
   
   public class §,3§
   {
      
      public static const DELIM:String = "@@";
      
      public static const INTERNAL_DELIM:String = "@";
       
      
      private var §"!+§:String;
      
      private var §&;§:int;
      
      private var §var §:Number;
      
      private var §7!,§:Number;
      
      protected var §'x§:Boolean;
      
      protected var §=!L§:Vector.<§5!T§>;
      
      protected var §'@§:Vector.<§8"§>;
      
      private var §6!W§:int;
      
      private var §#!"§:int;
      
      public function §,3§(param1:String)
      {
         this.§=!L§ = new Vector.<§5!T§>();
         this.§'@§ = new Vector.<§8"§>();
         super();
         this.§"!+§ = param1;
         this.§var § = 1;
      }
      
      public static function §>!W§(param1:String) : §,3§
      {
         var _loc2_:§,3§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§5!T§ = null;
         var _loc9_:§8"§ = null;
         var _loc3_:Array = param1.split(DELIM);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §,3§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(INTERNAL_DELIM);
            _loc5_ = _loc3_[2].split(INTERNAL_DELIM);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §5!T§.§>!W§(_loc6_))
               {
                  _loc2_.§=!L§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §8"§.§>!W§(_loc7_))
               {
                  _loc2_.§'@§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §]!K§() : Boolean
      {
         return this.§'x§;
      }
      
      public function get §%&§() : String
      {
         return this.§"!+§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§var § = param1;
      }
      
      public function get speed() : Number
      {
         return this.§var §;
      }
      
      protected function get currentStep() : int
      {
         return this.§&;§;
      }
      
      public function §9!N§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§'x§)
         {
            this.§=!L§.push(new §5!T§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §@!T§(param1:int) : void
      {
         if(!this.§'x§)
         {
            if(this.§'@§.length > 0)
            {
               if(this.§'@§[this.§'@§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§'@§.push(new §8"§(param1));
         }
      }
      
      public function play() : void
      {
         this.§'x§ = true;
      }
      
      public function step(param1:§%9§) : void
      {
         var _loc2_:§5!T§ = null;
         var _loc3_:§8"§ = null;
         if(this.§=!L§.length > this.§6!W§)
         {
            _loc2_ = this.§=!L§[this.§6!W§];
            if(_loc2_.step == this.currentStep)
            {
               param1.slingshot.§@h§(_loc2_.x,_loc2_.y,_loc2_.§!'§,_loc2_.angle);
               ++this.§6!W§;
            }
         }
         if(this.§'@§.length > this.§#!"§)
         {
            _loc3_ = this.§'@§[this.§#!"§];
            if(_loc3_.step == this.currentStep)
            {
               param1.activatePowerup();
               ++this.§#!"§;
            }
         }
         ++this.§&;§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§"!+§ + DELIM + this.§&!%§() + DELIM + this.§=!`§());
      }
      
      private function §&!%§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§=!L§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!L§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§=!L§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §=!`§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§'@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§'@§.length)
         {
            _loc1_ += INTERNAL_DELIM;
            _loc1_ += this.§'@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
