package §`!D§
{
   import §9T§.§1r§;
   import flash.system.Capabilities;
   
   public class §,q§
   {
      
      public static const §-0§:String = "@@";
      
      public static const §5!D§:String = "@";
       
      
      private var §#1§:String;
      
      private var §`!B§:int;
      
      private var §`!;§:Number;
      
      private var §-!9§:Number;
      
      protected var §-!A§:Boolean;
      
      protected var §,[§:Vector.<§71§>;
      
      protected var §"#§:Vector.<PowerUp>;
      
      private var §#!B§:int;
      
      private var §1!C§:int;
      
      public function §,q§(param1:String)
      {
         this.§,[§ = new Vector.<§71§>();
         this.§"#§ = new Vector.<PowerUp>();
         super();
         this.§#1§ = param1;
         this.§`!;§ = 1;
      }
      
      public static function initialize(param1:String) : §,q§
      {
         var _loc2_:§,q§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§71§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§-0§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §,q§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§5!D§);
            _loc5_ = _loc3_[2].split(§5!D§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §71§.initialize(_loc6_))
               {
                  _loc2_.§,[§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§"#§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §+c§() : Boolean
      {
         return this.§-!A§;
      }
      
      public function get §7!7§() : String
      {
         return this.§#1§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§`!;§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§`!;§;
      }
      
      protected function get §=u§() : int
      {
         return this.§`!B§;
      }
      
      public function shootBird(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§-!A§)
         {
            this.§,[§.push(new §71§(param1,param2,param3,param4,param5));
         }
      }
      
      public function §;6§(param1:int) : void
      {
         if(!this.§-!A§)
         {
            if(this.§"#§.length > 0)
            {
               if(this.§"#§[this.§"#§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§"#§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§-!A§ = true;
      }
      
      public function step(param1:§1r§) : void
      {
         var _loc2_:§71§ = null;
         var _loc3_:PowerUp = null;
         if(this.§,[§.length > this.§#!B§)
         {
            _loc2_ = this.§,[§[this.§#!B§];
            if(_loc2_.step == this.§=u§)
            {
               param1.slingshot.§!z§(_loc2_.x,_loc2_.y,_loc2_.§28§,_loc2_.angle);
               ++this.§#!B§;
            }
         }
         if(this.§"#§.length > this.§1!C§)
         {
            _loc3_ = this.§"#§[this.§1!C§];
            if(_loc3_.step == this.§=u§)
            {
               param1.activatePowerup();
               ++this.§1!C§;
            }
         }
         ++this.§`!B§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§#1§ + §-0§ + this.§#>§() + §-0§ + this.§;y§());
      }
      
      private function §#>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§,[§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§,[§.length)
         {
            _loc1_ += §5!D§;
            _loc1_ += this.§,[§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §;y§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§"#§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"#§.length)
         {
            _loc1_ += §5!D§;
            _loc1_ += this.§"#§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
