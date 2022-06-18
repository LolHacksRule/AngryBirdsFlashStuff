package §^$1§
{
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §1!+§.b2World;
   import §7!j§.§'#'§;
   import §7"&§.§!"v§;
   import §>!5§.§-!S§;
   
   public class §!">§ extends §!!O§
   {
      
      public static const §["A§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §,!Y§:Number = 0;
      
      private static const §`!L§:Number = 2;
      
      private static const §;"m§:Number = 0;
       
      
      protected var §,"x§:Image;
      
      protected var §^u§:§'#'§;
      
      protected var §9#8§:Number;
      
      protected var § #^§:int;
      
      protected var §%"§:Number;
      
      protected var §7! §:Number;
      
      protected var §[E§:Number;
      
      public function §!">§(param1:§'#'§, param2:Sprite, param3:b2World, param4:§!"v§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§^u§ = param1;
         this.§,"x§ = new Image(this.§^u§.texture);
         param2.addChild(this.§,"x§);
         this.§,"x§.scaleX = §,!Y§;
         this.§,"x§.scaleY = §,!Y§;
         this.§9#8§ = §,!Y§;
         this.§ #^§ = 0;
         this.§%"§ = 0;
         this.§7! § = param5;
         this.§[E§ = param6;
         param2.x = this.§7! § / §!!S§.§,"3§;
         param2.y = this.§[E§ / §!!S§.§,"3§;
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
         if(this.§,"x§)
         {
            this.§,"x§.dispose();
            this.§,"x§ = null;
         }
         this.§^u§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§ #^§ > 2;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         this.§%"§ += param1;
         if(this.§ #^§ == 0)
         {
            this.§9#8§ = §,!Y§ + (§`!L§ - §,!Y§) * (this.§%"§ / SCALE_STEP1_TIME_MS);
            if(this.§9#8§ >= §`!L§)
            {
               this.§9#8§ = §`!L§;
               ++this.§ #^§;
               this.§%"§ = 0;
            }
         }
         else if(this.§ #^§ == 1)
         {
            if(this.§%"§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§ #^§;
               this.§%"§ = 0;
            }
         }
         else if(this.§ #^§ == 2)
         {
            this.§9#8§ = §`!L§ + (§;"m§ - §`!L§) * (this.§%"§ / SCALE_STEP3_TIME_MS);
            if(this.§9#8§ <= 0)
            {
               ++this.§ #^§;
            }
         }
         this.§,"x§.scaleX = this.§9#8§;
         this.§,"x§.scaleY = this.§9#8§;
         sprite.x = this.§7! § / §!!S§.§,"3§ - this.§,"x§.width / 2;
         sprite.y = this.§[E§ / §!!S§.§,"3§ - this.§,"x§.height;
      }
   }
}
