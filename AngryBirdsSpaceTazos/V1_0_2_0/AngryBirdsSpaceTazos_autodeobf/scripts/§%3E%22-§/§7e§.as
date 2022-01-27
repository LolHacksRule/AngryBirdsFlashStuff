package §>"-§
{
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §<!%§.§]s§;
   import §?!<§.§'!1§;
   import §[,§.§1d§;
   
   public class §7e§
   {
       
      
      protected var §>!J§:Number;
      
      protected var §;`§:Number;
      
      protected var §%!^§:Number;
      
      protected var §9!J§:Number;
      
      protected var §&w§:Number;
      
      protected var §"0§:Number;
      
      protected var §+"=§:Number;
      
      protected var §>#§:Sprite;
      
      protected var §"">§:§]!U§;
      
      protected var § !$§:Number;
      
      protected var §#]§:Number;
      
      protected var §73§:DisplayObject;
      
      protected var §`r§:Number;
      
      protected var §-R§:Number;
      
      protected var §-!Y§:Number;
      
      protected var §]!2§:Vector.<§1d§>;
      
      public function §7e§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§]!U§, param7:Number)
      {
         super();
         this.§>!J§ = param1;
         this.§;`§ = param2;
         this.§"">§ = param6;
         this.§>#§ = param5;
         this.§73§ = param6.getFrame(0);
         this.§>#§.addChild(this.§73§);
         this.§`r§ = this.§73§.width;
         this.§-R§ = this.§73§.height;
         this.§-!Y§ = param7;
         this.§^m§();
         this.§,!"§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function get angle() : Number
      {
         return this.§%!^§;
      }
      
      public function get speed() : Number
      {
         return this.§&w§;
      }
      
      public function get §]H§() : Number
      {
         return this.§"0§;
      }
      
      public function get §#!F§() : Number
      {
         return this.§+"=§;
      }
      
      public function get width() : Number
      {
         return this.§`r§ * §'!1§.§<!@§;
      }
      
      public function get height() : Number
      {
         return this.§-R§ * §'!1§.§<!@§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>#§;
      }
      
      public function dispose() : void
      {
         if(this.§>#§)
         {
            this.§>#§.dispose();
            this.§>#§ = null;
         }
      }
      
      public function §4!D§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§&w§ * 1000;
         if(_loc2_ > this.§9!J§)
         {
            _loc2_ = this.§9!J§;
         }
         return this.§>!J§ - this.§"0§ * _loc2_ / 1000;
      }
      
      public function §8_§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§&w§ * 1000;
         if(_loc2_ > this.§9!J§)
         {
            _loc2_ = this.§9!J§;
         }
         return this.§;`§ - this.§+"=§ * _loc2_ / 1000;
      }
      
      protected function §0=§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§&w§ * 1000;
         if(_loc2_ > this.§9!J§)
         {
            _loc2_ = this.§9!J§;
         }
         return this.§&w§ * _loc2_ / 1000;
      }
      
      public function §^m§() : void
      {
         if(!this.§]!2§ || this.§]!2§.length > 0)
         {
            this.§]!2§ = new Vector.<§1d§>();
         }
      }
      
      public function §2,§(param1:§]s§) : void
      {
         this.§]!2§.push(param1.§>!]§);
      }
      
      public function §?H§(param1:§]s§) : Boolean
      {
         return this.§]!2§.indexOf(param1.§>!]§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§,!"§(param1,param2);
      }
      
      protected function §,!"§(param1:Number, param2:Number) : void
      {
         this.§&w§ = param2;
         this.§%!^§ = param1;
         this.§"0§ = Math.cos(this.§%!^§) * this.§&w§;
         this.§+"=§ = Math.sin(this.§%!^§) * this.§&w§;
         this.§9!J§ = 0;
         this.§5;§();
      }
      
      public function update(param1:Number) : void
      {
         this.§>!J§ += this.§"0§ * param1 / 1000;
         this.§;`§ += this.§+"=§ * param1 / 1000;
         this.§5;§();
         this.§9!J§ += param1;
      }
      
      protected function §5;§() : void
      {
         this.§ !$§ = this.§>!J§ / §'!1§.§<!@§;
         this.§#]§ = this.§;`§ / §'!1§.§<!@§;
         var _loc1_:Number = this.§0=§(this.§`r§ * §'!1§.§<!@§) / §'!1§.§<!@§;
         var _loc2_:Number = this.§-R§;
         this.§73§.width = _loc1_ * this.§-!Y§;
         this.§73§.height = _loc2_ * this.§-!Y§;
         this.§73§.pivotX = -_loc1_;
         this.§73§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§>#§.visible = true;
         this.§>#§.rotation = this.§%!^§;
         this.§>#§.x = this.§ !$§;
         this.§>#§.y = this.§#]§;
      }
   }
}
