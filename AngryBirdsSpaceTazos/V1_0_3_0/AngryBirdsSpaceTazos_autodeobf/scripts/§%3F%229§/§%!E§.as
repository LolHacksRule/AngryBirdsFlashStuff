package §?"9§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5"D§.§>q§;
   import §6!z§.§8"B§;
   import §^e§.§^5§;
   
   public class §%!E§
   {
       
      
      protected var §1!`§:Number;
      
      protected var §<2§:Number;
      
      protected var §7_§:Number;
      
      protected var §[F§:Number;
      
      protected var §3!^§:Number;
      
      protected var §@"!§:Number;
      
      protected var §@"2§:Number;
      
      protected var §9A§:Sprite;
      
      protected var §=O§:§^5§;
      
      protected var §<!8§:Number;
      
      protected var §=!U§:Number;
      
      protected var § +§:DisplayObject;
      
      protected var §#v§:Number;
      
      protected var §?!b§:Number;
      
      protected var §1!k§:Number;
      
      protected var §3"'§:Vector.<§>q§>;
      
      public function §%!E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:§^5§, param7:Number)
      {
         super();
         this.§1!`§ = param1;
         this.§<2§ = param2;
         this.§=O§ = param6;
         this.§9A§ = param5;
         this.§ +§ = param6.getFrame(0);
         this.§9A§.addChild(this.§ +§);
         this.§#v§ = this.§ +§.width;
         this.§?!b§ = this.§ +§.height;
         this.§1!k§ = param7;
         this.§'!F§();
         this.§8!_§(param3,param4);
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function get angle() : Number
      {
         return this.§7_§;
      }
      
      public function get speed() : Number
      {
         return this.§3!^§;
      }
      
      public function get §#!x§() : Number
      {
         return this.§@"!§;
      }
      
      public function get §]!W§() : Number
      {
         return this.§@"2§;
      }
      
      public function get width() : Number
      {
         return this.§#v§ * §1!R§.§00§;
      }
      
      public function get height() : Number
      {
         return this.§?!b§ * §1!R§.§00§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§9A§;
      }
      
      public function dispose() : void
      {
         if(this.§9A§)
         {
            this.§9A§.dispose();
            this.§9A§ = null;
         }
      }
      
      public function §-"8§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§3!^§ * 1000;
         if(_loc2_ > this.§[F§)
         {
            _loc2_ = this.§[F§;
         }
         return this.§1!`§ - this.§@"!§ * _loc2_ / 1000;
      }
      
      public function §`!n§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§3!^§ * 1000;
         if(_loc2_ > this.§[F§)
         {
            _loc2_ = this.§[F§;
         }
         return this.§<2§ - this.§@"2§ * _loc2_ / 1000;
      }
      
      protected function §'"8§(param1:Number) : Number
      {
         var _loc2_:Number = param1 / this.§3!^§ * 1000;
         if(_loc2_ > this.§[F§)
         {
            _loc2_ = this.§[F§;
         }
         return this.§3!^§ * _loc2_ / 1000;
      }
      
      public function §'!F§() : void
      {
         if(!this.§3"'§ || this.§3"'§.length > 0)
         {
            this.§3"'§ = new Vector.<§>q§>();
         }
      }
      
      public function §>"8§(param1:§8"B§) : void
      {
         this.§3"'§.push(param1.§8!s§);
      }
      
      public function §`s§(param1:§8"B§) : Boolean
      {
         return this.§3"'§.indexOf(param1.§8!s§) >= 0;
      }
      
      public function reflectToAngle(param1:Number, param2:Number) : void
      {
         this.§8!_§(param1,param2);
      }
      
      protected function §8!_§(param1:Number, param2:Number) : void
      {
         this.§3!^§ = param2;
         this.§7_§ = param1;
         this.§@"!§ = Math.cos(this.§7_§) * this.§3!^§;
         this.§@"2§ = Math.sin(this.§7_§) * this.§3!^§;
         this.§[F§ = 0;
         this.§9v§();
      }
      
      public function update(param1:Number) : void
      {
         this.§1!`§ += this.§@"!§ * param1 / 1000;
         this.§<2§ += this.§@"2§ * param1 / 1000;
         this.§9v§();
         this.§[F§ += param1;
      }
      
      protected function §9v§() : void
      {
         this.§<!8§ = this.§1!`§ / §1!R§.§00§;
         this.§=!U§ = this.§<2§ / §1!R§.§00§;
         var _loc1_:Number = this.§'"8§(this.§#v§ * §1!R§.§00§) / §1!R§.§00§;
         var _loc2_:Number = this.§?!b§;
         this.§ +§.width = _loc1_ * this.§1!k§;
         this.§ +§.height = _loc2_ * this.§1!k§;
         this.§ +§.pivotX = -_loc1_;
         this.§ +§.pivotY = -_loc2_ / 2;
      }
      
      public function render() : void
      {
         this.§9A§.visible = true;
         this.§9A§.rotation = this.§7_§;
         this.§9A§.x = this.§<!8§;
         this.§9A§.y = this.§=!U§;
      }
   }
}
