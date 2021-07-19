package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §]">§.§;U§;
   
   public class §1f§ extends §+>§
   {
      
      public static const §!!p§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §?j§:Number = 0;
      
      private static const §6"B§:Number = 2;
      
      private static const §'!1§:Number = 0;
       
      
      protected var §%u§:§`y§;
      
      protected var §9!8§:§'!"§;
      
      protected var §'!8§:Number;
      
      protected var §=!^§:int;
      
      protected var §6"&§:Number;
      
      protected var §]"@§:Number;
      
      protected var §6!g§:Number;
      
      public function §1f§(param1:§'!"§, param2:Sprite, param3:b2World, param4:§8X§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§9!8§ = param1;
         this.§%u§ = new §`y§(this.§9!8§.texture);
         param2.addChild(this.§%u§);
         this.§%u§.scaleX = §?j§;
         this.§%u§.scaleY = §?j§;
         this.§'!8§ = §?j§;
         this.§=!^§ = 0;
         this.§6"&§ = 0;
         this.§]"@§ = param5;
         this.§6!g§ = param6;
         param2.x = this.§]"@§ / §^g§.§5!-§;
         param2.y = this.§6!g§ / §^g§.§5!-§;
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
         if(this.§%u§)
         {
            this.§%u§.dispose();
            this.§%u§ = null;
         }
         this.§9!8§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§=!^§ > 2;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         this.§6"&§ += param1;
         if(this.§=!^§ == 0)
         {
            this.§'!8§ = §?j§ + (§6"B§ - §?j§) * (this.§6"&§ / SCALE_STEP1_TIME_MS);
            if(this.§'!8§ >= §6"B§)
            {
               this.§'!8§ = §6"B§;
               ++this.§=!^§;
               this.§6"&§ = 0;
            }
         }
         else if(this.§=!^§ == 1)
         {
            if(this.§6"&§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§=!^§;
               this.§6"&§ = 0;
            }
         }
         else if(this.§=!^§ == 2)
         {
            this.§'!8§ = §6"B§ + (§'!1§ - §6"B§) * (this.§6"&§ / SCALE_STEP3_TIME_MS);
            if(this.§'!8§ <= 0)
            {
               ++this.§=!^§;
            }
         }
         this.§%u§.scaleX = this.§'!8§;
         this.§%u§.scaleY = this.§'!8§;
         sprite.x = this.§]"@§ / §^g§.§5!-§ - this.§%u§.width / 2;
         sprite.y = this.§6!g§ / §^g§.§5!-§ - this.§%u§.height;
      }
   }
}
