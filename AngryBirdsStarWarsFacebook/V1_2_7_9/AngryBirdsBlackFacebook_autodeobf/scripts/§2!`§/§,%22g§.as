package §2!`§
{
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§]!h§;
   import §5!q§.§3"X§;
   import §6"R§.§""M§;
   import §>P§.§=!,§;
   
   public class §,"g§ extends §""j§
   {
      
      public static const §^!3§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §3F§:Number = 0;
      
      private static const §0D§:Number = 2;
      
      private static const §]!H§:Number = 0;
       
      
      protected var §"!>§:§-i§;
      
      protected var §;!>§:§]!h§;
      
      protected var §5!_§:Number;
      
      protected var §##7§:int;
      
      protected var §9!`§:Number;
      
      protected var §0^§:Number;
      
      protected var §%!v§:Number;
      
      public function §,"g§(param1:§]!h§, param2:Sprite, param3:b2World, param4:§=!,§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§;!>§ = param1;
         this.§"!>§ = new §-i§(this.§;!>§.texture);
         param2.addChild(this.§"!>§);
         this.§"!>§.scaleX = §3F§;
         this.§"!>§.scaleY = §3F§;
         this.§5!_§ = §3F§;
         this.§##7§ = 0;
         this.§9!`§ = 0;
         this.§0^§ = param5;
         this.§%!v§ = param6;
         param2.x = this.§0^§ / §3"X§.§;"l§;
         param2.y = this.§%!v§ / §3"X§.§;"l§;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function dispose() : void
      {
         if(this.§"!>§)
         {
            this.§"!>§.dispose();
            this.§"!>§ = null;
         }
         this.§;!>§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§##7§ > 2;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         this.§9!`§ += param1;
         if(this.§##7§ == 0)
         {
            this.§5!_§ = §3F§ + (§0D§ - §3F§) * (this.§9!`§ / SCALE_STEP1_TIME_MS);
            if(this.§5!_§ >= §0D§)
            {
               this.§5!_§ = §0D§;
               ++this.§##7§;
               this.§9!`§ = 0;
            }
         }
         else if(this.§##7§ == 1)
         {
            if(this.§9!`§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§##7§;
               this.§9!`§ = 0;
            }
         }
         else if(this.§##7§ == 2)
         {
            this.§5!_§ = §0D§ + (§]!H§ - §0D§) * (this.§9!`§ / SCALE_STEP3_TIME_MS);
            if(this.§5!_§ <= 0)
            {
               ++this.§##7§;
            }
         }
         this.§"!>§.scaleX = this.§5!_§;
         this.§"!>§.scaleY = this.§5!_§;
         sprite.x = this.§0^§ / §3"X§.§;"l§ - this.§"!>§.width / 2;
         sprite.y = this.§%!v§ / §3"X§.§;"l§ - this.§"!>§.height;
      }
   }
}
