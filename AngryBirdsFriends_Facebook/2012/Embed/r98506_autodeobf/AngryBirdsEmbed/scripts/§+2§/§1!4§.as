package §+2§
{
   import §#;§.§4!8§;
   import flash.system.Capabilities;
   
   public class §1!4§
   {
      
      public static const §0k§:String = "@@";
      
      public static const §2!>§:String = "@";
       
      
      private var §6!H§:String;
      
      private var §!!0§:int;
      
      private var §8w§:Number;
      
      private var §;?§:Number;
      
      protected var §+!F§:Boolean;
      
      protected var §;a§:Vector.<§#<§>;
      
      protected var §]R§:Vector.<PowerUp>;
      
      private var §60§:int;
      
      private var § E§:int;
      
      public function §1!4§(param1:String)
      {
         this.§;a§ = new Vector.<§#<§>();
         this.§]R§ = new Vector.<PowerUp>();
         super();
         this.§6!H§ = param1;
         this.§8w§ = 1;
      }
      
      public static function initialize(param1:String) : §1!4§
      {
         var _loc2_:§1!4§ = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:§#<§ = null;
         var _loc9_:PowerUp = null;
         var _loc3_:Array = param1.split(§0k§);
         if(_loc3_.length == 3)
         {
            _loc2_ = new §1!4§(_loc3_[0]);
            _loc4_ = _loc3_[1].split(§2!>§);
            _loc5_ = _loc3_[2].split(§2!>§);
            for each(_loc6_ in _loc4_)
            {
               if(_loc8_ = §#<§.initialize(_loc6_))
               {
                  _loc2_.§;a§.push(_loc8_);
               }
            }
            for each(_loc7_ in _loc5_)
            {
               if(_loc9_ = PowerUp.initialize(_loc7_))
               {
                  _loc2_.§]R§.push(_loc9_);
               }
            }
         }
         return _loc2_;
      }
      
      public function get §-D§() : Boolean
      {
         return this.§+!F§;
      }
      
      public function get §-N§() : String
      {
         return this.§6!H§;
      }
      
      public function set speed(param1:Number) : void
      {
         this.§8w§ = param1;
      }
      
      public function get speed() : Number
      {
         return this.§8w§;
      }
      
      protected function get §3D§() : int
      {
         return this.§!!0§;
      }
      
      public function §9!>§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         if(!this.§+!F§)
         {
            this.§;a§.push(new §#<§(param1,param2,param3,param4,param5));
         }
      }
      
      public function § set§(param1:int) : void
      {
         if(!this.§+!F§)
         {
            if(this.§]R§.length > 0)
            {
               if(this.§]R§[this.§]R§.length - 1].step == param1)
               {
                  return;
               }
            }
            this.§]R§.push(new PowerUp(param1));
         }
      }
      
      public function play() : void
      {
         this.§+!F§ = true;
      }
      
      public function step(param1:§4!8§) : void
      {
         var _loc2_:§#<§ = null;
         var _loc3_:PowerUp = null;
         if(this.§;a§.length > this.§60§)
         {
            _loc2_ = this.§;a§[this.§60§];
            if(_loc2_.step == this.§3D§)
            {
               param1.slingshot.§2L§(_loc2_.x,_loc2_.y,_loc2_.§[P§,_loc2_.angle);
               ++this.§60§;
            }
         }
         if(this.§]R§.length > this.§ E§)
         {
            _loc3_ = this.§]R§[this.§ E§];
            if(_loc3_.step == this.§3D§)
            {
               param1.activatePowerup();
               ++this.§ E§;
            }
         }
         ++this.§!!0§;
      }
      
      public function toString() : String
      {
         var _loc1_:String = Capabilities.version.substr(0,3);
         return _loc1_ + (this.§6!H§ + §0k§ + this.§,>§() + §0k§ + this.§implements§());
      }
      
      private function §,>§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§;a§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§;a§.length)
         {
            _loc1_ += §2!>§;
            _loc1_ += this.§;a§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function §implements§() : String
      {
         var _loc1_:String = "";
         _loc1_ += this.§]R§.length.toString();
         var _loc2_:int = 0;
         while(_loc2_ < this.§]R§.length)
         {
            _loc1_ += §2!>§;
            _loc1_ += this.§]R§[_loc2_].toString();
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
