package §7"p§
{
   import §'G§.§3$B§;
   import §6!3§.§8$B§;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   
   public class §%!I§ extends §[!f§
   {
      
      public static const § !V§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §`"T§:Number = 0;
      
      private static const §'"F§:Number = 2;
      
      private static const §#e§:Number = 0;
       
      
      protected var §["a§:Image;
      
      protected var §;"s§:§3$B§;
      
      protected var §9"v§:Number;
      
      protected var §6!5§:int;
      
      protected var §2"8§:Number;
      
      protected var positionX:Number;
      
      protected var positionY:Number;
      
      public function §%!I§(param1:§3$B§, param2:Sprite, param3:b2World, param4:§?$>§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§;"s§ = param1;
         this.§["a§ = new Image(this.§;"s§.texture);
         param2.addChild(this.§["a§);
         this.§["a§.scaleX = §`"T§;
         this.§["a§.scaleY = §`"T§;
         this.§9"v§ = §`"T§;
         this.§6!5§ = 0;
         this.§2"8§ = 0;
         this.positionX = param5;
         this.positionY = param6;
         param2.x = this.positionX / §!6§.§[#v§;
         param2.y = this.positionY / §!6§.§[#v§;
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
         if(this.§["a§)
         {
            this.§["a§.dispose();
            this.§["a§ = null;
         }
         this.§;"s§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§6!5§ > 2;
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         this.§2"8§ += param1;
         if(this.§6!5§ == 0)
         {
            this.§9"v§ = §`"T§ + (§'"F§ - §`"T§) * (this.§2"8§ / SCALE_STEP1_TIME_MS);
            if(this.§9"v§ >= §'"F§)
            {
               this.§9"v§ = §'"F§;
               ++this.§6!5§;
               this.§2"8§ = 0;
            }
         }
         else if(this.§6!5§ == 1)
         {
            if(this.§2"8§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§6!5§;
               this.§2"8§ = 0;
            }
         }
         else if(this.§6!5§ == 2)
         {
            this.§9"v§ = §'"F§ + (§#e§ - §'"F§) * (this.§2"8§ / SCALE_STEP3_TIME_MS);
            if(this.§9"v§ <= 0)
            {
               ++this.§6!5§;
            }
         }
         this.§["a§.scaleX = this.§9"v§;
         this.§["a§.scaleY = this.§9"v§;
         sprite.x = this.positionX / §!6§.§[#v§ - this.§["a§.width / 2;
         sprite.y = this.positionY / §!6§.§[#v§ - this.§["a§.height;
      }
   }
}
