package §%$0§
{
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§'!-§;
   import §?$#§.§<d§;
   import §^0§.§>"T§;
   
   public class §[$$§ extends §1c§
   {
      
      public static const §&";§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §7#S§:Number = 0;
      
      private static const §&!%§:Number = 2;
      
      private static const § !N§:Number = 0;
       
      
      protected var §7"r§:Image;
      
      protected var §21§:§'!-§;
      
      protected var §'#b§:Number;
      
      protected var §2X§:int;
      
      protected var §9!!§:Number;
      
      protected var positionX:Number;
      
      protected var positionY:Number;
      
      public function §[$$§(param1:§'!-§, param2:Sprite, param3:b2World, param4:§-"8§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§21§ = param1;
         this.§7"r§ = new Image(this.§21§.texture);
         param2.addChild(this.§7"r§);
         this.§7"r§.scaleX = §7#S§;
         this.§7"r§.scaleY = §7#S§;
         this.§'#b§ = §7#S§;
         this.§2X§ = 0;
         this.§9!!§ = 0;
         this.positionX = param5;
         this.positionY = param6;
         param2.x = this.positionX / §<d§.§6@§;
         param2.y = this.positionY / §<d§.§6@§;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§7"r§)
         {
            this.§7"r§.dispose();
            this.§7"r§ = null;
         }
         this.§21§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§2X§ > 2;
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         this.§9!!§ += param1;
         if(this.§2X§ == 0)
         {
            this.§'#b§ = §7#S§ + (§&!%§ - §7#S§) * (this.§9!!§ / SCALE_STEP1_TIME_MS);
            if(this.§'#b§ >= §&!%§)
            {
               this.§'#b§ = §&!%§;
               ++this.§2X§;
               this.§9!!§ = 0;
            }
         }
         else if(this.§2X§ == 1)
         {
            if(this.§9!!§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§2X§;
               this.§9!!§ = 0;
            }
         }
         else if(this.§2X§ == 2)
         {
            this.§'#b§ = §&!%§ + (§ !N§ - §&!%§) * (this.§9!!§ / SCALE_STEP3_TIME_MS);
            if(this.§'#b§ <= 0)
            {
               ++this.§2X§;
            }
         }
         this.§7"r§.scaleX = this.§'#b§;
         this.§7"r§.scaleY = this.§'#b§;
         sprite.x = this.positionX / §<d§.§6@§ - this.§7"r§.width / 2;
         sprite.y = this.positionY / §<d§.§6@§ - this.§7"r§.height;
      }
   }
}
