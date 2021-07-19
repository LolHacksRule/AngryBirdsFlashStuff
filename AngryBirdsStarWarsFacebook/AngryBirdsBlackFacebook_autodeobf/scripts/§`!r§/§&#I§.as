package §`!r§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§8!W§;
   import §7P§.§;$§;
   import §^#>§.§#_§;
   
   public class §&#I§ extends §!!H§
   {
      
      public static const §+"§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §&!E§:Number = 0;
      
      private static const §,!v§:Number = 2;
      
      private static const §5!§:Number = 0;
       
      
      protected var §"v§:§#"t§;
      
      protected var §]!g§:§8!W§;
      
      protected var §[G§:Number;
      
      protected var §0"c§:int;
      
      protected var §[!W§:Number;
      
      protected var §=X§:Number;
      
      protected var §?#§:Number;
      
      public function §&#I§(param1:§8!W§, param2:Sprite, param3:b2World, param4:§"t§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§]!g§ = param1;
         this.§"v§ = new §#"t§(this.§]!g§.texture);
         param2.addChild(this.§"v§);
         this.§"v§.scaleX = §&!E§;
         this.§"v§.scaleY = §&!E§;
         this.§[G§ = §&!E§;
         this.§0"c§ = 0;
         this.§[!W§ = 0;
         this.§=X§ = param5;
         this.§?#§ = param6;
         param2.x = this.§=X§ / §#_§.§8]§;
         param2.y = this.§?#§ / §#_§.§8]§;
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
         if(this.§"v§)
         {
            this.§"v§.dispose();
            this.§"v§ = null;
         }
         this.§]!g§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§0"c§ > 2;
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         this.§[!W§ += param1;
         if(this.§0"c§ == 0)
         {
            this.§[G§ = §&!E§ + (§,!v§ - §&!E§) * (this.§[!W§ / SCALE_STEP1_TIME_MS);
            if(this.§[G§ >= §,!v§)
            {
               this.§[G§ = §,!v§;
               ++this.§0"c§;
               this.§[!W§ = 0;
            }
         }
         else if(this.§0"c§ == 1)
         {
            if(this.§[!W§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§0"c§;
               this.§[!W§ = 0;
            }
         }
         else if(this.§0"c§ == 2)
         {
            this.§[G§ = §,!v§ + (§5!§ - §,!v§) * (this.§[!W§ / SCALE_STEP3_TIME_MS);
            if(this.§[G§ <= 0)
            {
               ++this.§0"c§;
            }
         }
         this.§"v§.scaleX = this.§[G§;
         this.§"v§.scaleY = this.§[G§;
         sprite.x = this.§=X§ / §#_§.§8]§ - this.§"v§.width / 2;
         sprite.y = this.§?#§ / §#_§.§8]§ - this.§"v§.height;
      }
   }
}
