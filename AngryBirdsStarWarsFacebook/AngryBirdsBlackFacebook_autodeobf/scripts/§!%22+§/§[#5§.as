package §!"+§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§>"G§;
   import §7P§.§7B§;
   import §<a§.§8#F§;
   import §^#>§.§#_§;
   
   public class §[#5§
   {
       
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      protected var §[<§:Number;
      
      protected var §2n§:Number;
      
      protected var §<C§:Number;
      
      protected var §-!H§:Number;
      
      protected var §!#4§:Number;
      
      protected var §%G§:Sprite;
      
      protected var §]!`§:§>"G§;
      
      protected var §`!j§:Number;
      
      protected var §8"R§:Number;
      
      protected var §,!d§:DisplayObject;
      
      protected var §^C§:Number;
      
      protected var §?#?§:Number;
      
      protected var §8"2§:Number;
      
      protected var §5"X§:Vector.<§7B§>;
      
      public function §[#5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§>"G§, param7:Number)
      {
         super();
         this.§8!+§ = param1;
         this.§=!Z§ = param2;
         this.§]!`§ = param6;
         this.§%G§ = param5;
         this.§,!d§ = param6.getFrame(0);
         this.§%G§.addChild(this.§,!d§);
         this.§^C§ = this.§,!d§.width;
         this.§?#?§ = this.§,!d§.height;
         this.§8"2§ = param7;
         this.§+"^§();
         this.§+#Z§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get angle() : Number
      {
         return this.§[<§;
      }
      
      public function get speed() : Number
      {
         return this.§<C§;
      }
      
      public function get §&"j§() : Number
      {
         return this.§-!H§;
      }
      
      public function get §4#@§() : Number
      {
         return this.§!#4§;
      }
      
      public function get width() : Number
      {
         return this.§^C§ * §#_§.§8]§;
      }
      
      public function get height() : Number
      {
         return this.§?#?§ * §#_§.§8]§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function dispose() : void
      {
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
      }
      
      public function §@"4§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§<C§ * 1000;
         if(_loc2_ > this.§2n§)
         {
            _loc2_ = this.§2n§;
         }
         return this.§8!+§ - this.§-!H§ * _loc2_ / 1000;
      }
      
      public function §"A§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§<C§ * 1000;
         if(_loc2_ > this.§2n§)
         {
            _loc2_ = this.§2n§;
         }
         return this.§=!Z§ - this.§!#4§ * _loc2_ / 1000;
      }
      
      protected function §]"^§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§<C§ * 1000;
         if(_loc2_ > this.§2n§)
         {
            _loc2_ = this.§2n§;
         }
         return this.§<C§ * _loc2_ / 1000;
      }
      
      public function §+"^§() : void
      {
         if(!this.§5"X§ || this.§5"X§.length > 0)
         {
            this.§5"X§ = new Vector.<§7B§>();
         }
      }
      
      public function §33§(param1:§8#F§) : void
      {
         this.§5"X§.push(param1.§[!@§);
      }
      
      public function §'x§(param1:§8#F§) : Boolean
      {
         return this.§5"X§.indexOf(param1.§[!@§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§+#Z§(param1,param2);
      }
      
      protected function §+#Z§(param1:Number, param2:Number) : void
      {
         this.§<C§ = param2;
         this.§[<§ = param1;
         this.§-!H§ = Math.cos(this.§[<§) * this.§<C§;
         this.§!#4§ = Math.sin(this.§[<§) * this.§<C§;
         this.§2n§ = 0;
         this.§<!p§();
      }
      
      public function update(param1:Number) : void
      {
         this.§8!+§ += this.§-!H§ * param1 / 1000;
         this.§=!Z§ += this.§!#4§ * param1 / 1000;
         this.§<!p§();
         this.§2n§ += param1;
      }
      
      protected function §<!p§() : void
      {
         this.§`!j§ = this.§8!+§ / §#_§.§8]§;
         this.§8"R§ = this.§=!Z§ / §#_§.§8]§;
         var _loc1_:Number = this.§]"^§(this.§^C§ * §#_§.§8]§) / §#_§.§8]§;
         var _loc2_:Number = this.§?#?§;
         this.§,!d§.width = _loc1_ * this.§8"2§;
         this.§,!d§.height = _loc2_ * this.§8"2§;
         this.§,!d§.pivotX = -_loc1_;
         this.§,!d§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§%G§.visible = true;
         this.§%G§.rotation = this.§[<§;
         this.§%G§.x = this.§`!j§;
         this.§%G§.y = this.§8"R§;
      }
   }
}
