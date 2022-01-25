package §+!Y§
{
   import §2!G§.§2!V§;
   import flash.system.Capabilities;
   
   public class §&]§
   {
      
      public static const § E§:String = "@@";
      
      public static const §2L§:String = "@";
       
      
      private var §#!`§:String;
      
      private var §;!N§:int;
      
      private var §%a§:Number;
      
      private var §&!a§:Number;
      
      protected var §@!Z§:Boolean;
      
      protected var §%2§:Vector.<§ !]§>;
      
      protected var §-!@§:Vector.<§]7§>;
      
      private var §=!M§:int;
      
      private var §4![§:int;
      
      public function §&]§(param1:String)
      {
         this.§%2§ = new Vector.<§ !]§>();
         this.§-!@§ = new Vector.<§]7§>();
         super();
         this.§#!`§ = param1;
         this.§%a§ = 1;
      }
      
      public static function §@#§(param1:String) : §&]§
      {
         var _loc2_:§&]§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§ !]§ = null;
         var _loc9_:§]7§ = null;
         var _loc3_:Array = param1.split(§ E§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §&]§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§2L§);
            _loc5_ = _loc3_[2].split(§2L§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = § !]§.§@#§(_loc6_))
               {
                  _loc2_.§%2§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = §]7§.§@#§(_loc7_))
               {
                  _loc2_.§-!@§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §7!U§() : Boolean
      {
         return this.§@!Z§;
      }
      
      public function get §2n§() : String
      {
         return this.§#!`§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§%a§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§%a§;
      }
      
      protected function get §+!c§() : int
      {
         return this.§;!N§;
      }
      
      public function §9s§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§@!Z§)
         {
            this.§%2§.push(new § !]§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §5!1§(param1:int) : void
      {
         if(!this.§@!Z§)
         {
            if(this.§-!@§.length > 0)
            {
               if(this.§-!@§[this.§-!@§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§-!@§.push(new §]7§(param1));
         }
      }
      
      public function play() : void
      {
         this.§@!Z§ = true;
      }
      
      public function step(param1:§2!V§) : void
      {
         var _loc2_:§ !]§ = null;
         var _loc3_:§]7§ = null;
         if(this.§%2§.length > this.§=!M§)
         {
            _loc2_ = this.§%2§[this.§=!M§];
            if(_loc2_.step == this.§+!c§)
            {
               param1.slingshot.§,!I§(_loc2_.x,_loc2_.y,_loc2_.§5Q§,_loc2_.angle);
               ++this.§=!M§;
            }
         }
         if(this.§-!@§.length > this.§4![§)
         {
            _loc3_ = this.§-!@§[this.§4![§];
            if(_loc3_.step == this.§+!c§)
            {
               param1.activatePowerup();
               ++this.§4![§;
            }
         }
         ++this.§;!N§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§#!`§ + § E§ + this.§,R§() + § E§ + this.§'S§());
      }
      
      private function §,R§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§%2§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§%2§.length)
         {
            _loc1_ += §2L§;
            _loc1_ += this.§%2§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §'S§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§-!@§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!@§.length)
         {
            _loc1_ += §2L§;
            _loc1_ += this.§-!@§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
