package §^9§
{
   import §!!k§.§'!j§;
   import §!r§.§'=§;
   import §"§.§;!E§;
   import §#g§.§["%§;
   import §>"_§.b2World;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   public class §["N§ extends §3o§
   {
      
      public static const §5!L§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const § "i§:Number = 0;
      
      private static const §3!r§:Number = 2;
      
      private static const §`"-§:Number = 0;
       
      
      protected var §<"G§:§,!u§;
      
      protected var §8!&§:§'!j§;
      
      protected var §!d§:Number;
      
      protected var §0!b§:int;
      
      protected var §=]§:Number;
      
      protected var §6"i§:Number;
      
      protected var §1!N§:Number;
      
      public function §["N§(param1:§'!j§, param2:Sprite, param3:b2World, param4:§["%§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§8!&§ = param1;
         this.§<"G§ = new §,!u§(this.§8!&§.texture);
         param2.addChild(this.§<"G§);
         this.§<"G§.scaleX = § "i§;
         this.§<"G§.scaleY = § "i§;
         this.§!d§ = § "i§;
         this.§0!b§ = 0;
         this.§=]§ = 0;
         this.§6"i§ = param5;
         this.§1!N§ = param6;
         param2.x = this.§6"i§ / §;!E§.§0"?§;
         param2.y = this.§1!N§ / §;!E§.§0"?§;
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
         if(this.§<"G§)
         {
            this.§<"G§.dispose();
            this.§<"G§ = null;
         }
         this.§8!&§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§0!b§ > 2;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         this.§=]§ += param1;
         if(this.§0!b§ == 0)
         {
            this.§!d§ = § "i§ + (§3!r§ - § "i§) * (this.§=]§ / SCALE_STEP1_TIME_MS);
            if(this.§!d§ >= §3!r§)
            {
               this.§!d§ = §3!r§;
               ++this.§0!b§;
               this.§=]§ = 0;
            }
         }
         else if(this.§0!b§ == 1)
         {
            if(this.§=]§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§0!b§;
               this.§=]§ = 0;
            }
         }
         else if(this.§0!b§ == 2)
         {
            this.§!d§ = §3!r§ + (§`"-§ - §3!r§) * (this.§=]§ / SCALE_STEP3_TIME_MS);
            if(this.§!d§ <= 0)
            {
               ++this.§0!b§;
            }
         }
         this.§<"G§.scaleX = this.§!d§;
         this.§<"G§.scaleY = this.§!d§;
         sprite.x = this.§6"i§ / §;!E§.§0"?§ - this.§<"G§.width / 2;
         sprite.y = this.§1!N§ / §;!E§.§0"?§ - this.§<"G§.height;
      }
   }
}
