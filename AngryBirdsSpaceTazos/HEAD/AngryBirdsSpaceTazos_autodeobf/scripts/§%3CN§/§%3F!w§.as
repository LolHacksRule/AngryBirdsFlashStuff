package §<N§
{
   import §#Z§.§`!X§;
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §9!v§.§1!_§;
   import §9"!§.§,%§;
   
   public class §?!w§
   {
       
      
      protected var §''§:Number;
      
      protected var §3"<§:Number;
      
      protected var §#!$§:Number;
      
      protected var §7l§:Number;
      
      protected var §`"%§:Number;
      
      protected var §0"A§:Number;
      
      protected var §'x§:Number;
      
      protected var §5"'§:Sprite;
      
      protected var §?^§:§1!_§;
      
      protected var §,"@§:Number;
      
      protected var §-n§:Number;
      
      protected var §9!1§:DisplayObject;
      
      protected var §+"E§:Number;
      
      protected var §,a§:Number;
      
      protected var §&!A§:Number;
      
      protected var §1W§:Vector.<§,%§>;
      
      public function §?!w§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§1!_§, param7:Number)
      {
         super();
         this.§''§ = param1;
         this.§3"<§ = param2;
         this.§?^§ = param6;
         this.§5"'§ = param5;
         this.§9!1§ = param6.getFrame(0);
         this.§5"'§.addChild(this.§9!1§);
         this.§+"E§ = this.§9!1§.width;
         this.§,a§ = this.§9!1§.height;
         this.§&!A§ = param7;
         this.§ z§();
         this.§1;§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function get angle() : Number
      {
         return this.§#!$§;
      }
      
      public function get speed() : Number
      {
         return this.§`"%§;
      }
      
      public function get §`"$§() : Number
      {
         return this.§0"A§;
      }
      
      public function get §-u§() : Number
      {
         return this.§'x§;
      }
      
      public function get width() : Number
      {
         return this.§+"E§ * §`"8§.§3!=§;
      }
      
      public function get height() : Number
      {
         return this.§,a§ * §`"8§.§3!=§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5"'§;
      }
      
      public function dispose() : void
      {
         if(this.§5"'§)
         {
            this.§5"'§.dispose();
            this.§5"'§ = null;
         }
      }
      
      public function §?Z§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§`"%§ * 1000;
         if(_loc2_ > this.§7l§)
         {
            _loc2_ = this.§7l§;
         }
         return this.§''§ - this.§0"A§ * _loc2_ / 1000;
      }
      
      public function §=7§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§`"%§ * 1000;
         if(_loc2_ > this.§7l§)
         {
            _loc2_ = this.§7l§;
         }
         return this.§3"<§ - this.§'x§ * _loc2_ / 1000;
      }
      
      protected function §%8§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§`"%§ * 1000;
         if(_loc2_ > this.§7l§)
         {
            _loc2_ = this.§7l§;
         }
         return this.§`"%§ * _loc2_ / 1000;
      }
      
      public function § z§() : void
      {
         if(!this.§1W§ || this.§1W§.length > 0)
         {
            this.§1W§ = new Vector.<§,%§>();
         }
      }
      
      public function §[x§(param1:§`!X§) : void
      {
         this.§1W§.push(param1.§ "G§);
      }
      
      public function §0!$§(param1:§`!X§) : Boolean
      {
         return this.§1W§.indexOf(param1.§ "G§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§1;§(param1,param2);
      }
      
      protected function §1;§(param1:Number, param2:Number) : void
      {
         this.§`"%§ = param2;
         this.§#!$§ = param1;
         this.§0"A§ = Math.cos(this.§#!$§) * this.§`"%§;
         this.§'x§ = Math.sin(this.§#!$§) * this.§`"%§;
         this.§7l§ = 0;
         this.§;A§();
      }
      
      public function update(param1:Number) : void
      {
         this.§''§ += this.§0"A§ * param1 / 1000;
         this.§3"<§ += this.§'x§ * param1 / 1000;
         this.§;A§();
         this.§7l§ += param1;
      }
      
      protected function §;A§() : void
      {
         this.§,"@§ = this.§''§ / §`"8§.§3!=§;
         this.§-n§ = this.§3"<§ / §`"8§.§3!=§;
         var _loc1_:Number = this.§%8§(this.§+"E§ * §`"8§.§3!=§) / §`"8§.§3!=§;
         var _loc2_:Number = this.§,a§;
         this.§9!1§.width = _loc1_ * this.§&!A§;
         this.§9!1§.height = _loc2_ * this.§&!A§;
         this.§9!1§.pivotX = -_loc1_;
         this.§9!1§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§5"'§.visible = true;
         this.§5"'§.rotation = this.§#!$§;
         this.§5"'§.x = this.§,"@§;
         this.§5"'§.y = this.§-n§;
      }
   }
}
