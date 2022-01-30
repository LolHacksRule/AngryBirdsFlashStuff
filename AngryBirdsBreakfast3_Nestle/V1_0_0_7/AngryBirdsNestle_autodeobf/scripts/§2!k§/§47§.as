package §2!k§
{
   import § !=§.Sprite;
   import § !Q§.§"D§;
   import §0!j§.b2World;
   import §[^§.§`!M§;
   import §]A§.§[d§;
   
   public class §47§ extends §,@§
   {
      
      private static const PI:Number = Math.PI;
      
      private static const §>"4§:Number = Math.PI * 2;
       
      
      private var §`r§:Number;
      
      private var §>3§:Number;
      
      private var §9!5§:Number;
      
      private var §"!g§:Number;
      
      private var §=![§:Number;
      
      private var §%!g§:Number;
      
      private var §]2§:Number = 0.0;
      
      private var §>4§:Number = 0;
      
      private var §5X§:Number = 0;
      
      protected var §'!a§:Number = 0;
      
      protected var §[6§:Number = 0;
      
      protected var §;f§:Number = 0;
      
      public function §47§(param1:Sprite, param2:b2World, param3:§`!M§, param4:Number, param5:Number, param6:Number)
      {
         super(param1,param2,param3);
         this.§%!g§ = param6;
         this.§9!5§ = param6;
         this.§"!g§ = param4 / §[d§.§]!U§;
         this.§=![§ = param5 / §[d§.§]!U§;
         this.§`r§ = param4 / §[d§.§]!U§;
         this.§>3§ = param5 / §[d§.§]!U§;
      }
      
      public function get §]!H§() : Number
      {
         return this.§]2§;
      }
      
      public function §8Z§() : Number
      {
         return this.§'!a§ * §[d§.§]!U§;
      }
      
      public function §3k§() : Number
      {
         return this.§[6§ * §[d§.§]!U§;
      }
      
      override public function update(param1:Number, param2:§?N§) : void
      {
         super.update(param1,param2);
         var _loc3_:Number = § 2§().GetPosition().x;
         var _loc4_:Number = § 2§().GetPosition().y;
         this.§`!>§(this.§9!5§);
         this.§"!g§ = this.§`r§;
         this.§=![§ = this.§>3§;
         this.§9!5§ = § 2§().GetAngle();
         this.§`r§ = _loc3_ / §[d§.§]!U§;
         this.§>3§ = _loc4_ / §[d§.§]!U§;
         this.§]2§ += param1;
      }
      
      protected function §`!>§(param1:Number) : void
      {
         this.§%!g§ = param1;
         this.§9!5§ = param1;
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         this.§]S§(param2,param3);
      }
      
      protected function §]S§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(param2 > 1e-9)
         {
            §"D§.log("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2 + " overriding to 0");
         }
         param2 *= -1;
         if(this.§`r§ == this.§"!g§ || param2 == 0)
         {
            this.§>4§ = 0;
            this.§'!a§ = this.§`r§;
         }
         else
         {
            this.§>4§ = param2 * (this.§"!g§ - this.§`r§) / param1;
            this.§'!a§ = this.§`r§ + this.§>4§;
         }
         if(this.§>3§ == this.§=![§ || param2 == 0)
         {
            this.§5X§ = 0;
            this.§[6§ = this.§>3§;
         }
         else
         {
            this.§5X§ = param2 * (this.§=![§ - this.§>3§) / param1;
            this.§[6§ = this.§>3§ + this.§5X§;
         }
         if(this.§9!5§ == this.§%!g§ || param2 == 0)
         {
            this.§;f§ = this.§9!5§;
         }
         else
         {
            _loc3_ = this.§9!5§ - this.§%!g§;
            if(_loc3_ > PI)
            {
               _loc3_ -= §>"4§;
            }
            else if(_loc3_ < -PI)
            {
               _loc3_ += §>"4§;
            }
            this.§;f§ = this.§%!g§ + (param1 - param2) / param1 * _loc3_;
            if(this.§;f§ >= §>"4§)
            {
               this.§;f§ -= §>"4§;
            }
            else if(this.§;f§ < 0)
            {
               this.§;f§ += §>"4§;
            }
         }
      }
   }
}
