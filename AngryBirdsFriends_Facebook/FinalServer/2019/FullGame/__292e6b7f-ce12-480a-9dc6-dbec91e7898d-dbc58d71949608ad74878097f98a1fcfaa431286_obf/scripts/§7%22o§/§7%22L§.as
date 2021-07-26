package §7"o§
{
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §7"T§.§4!L§;
   import §8#K§.§&2§;
   import §;!=§.§]!m§;
   
   public class §7"L§ extends §=" §
   {
      
      public static const §@!4§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §8"O§:Number = 0;
      
      private static const §>"]§:Number = 2;
      
      private static const §##i§:Number = 0;
       
      
      protected var §%"u§:Image;
      
      protected var §"#4§:§4!L§;
      
      protected var §1!M§:Number;
      
      protected var §""W§:int;
      
      protected var §2! §:Number;
      
      protected var positionX:Number;
      
      protected var positionY:Number;
      
      public function §7"L§(param1:§4!L§, param2:Sprite, param3:b2World, param4:§&2§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§"#4§ = param1;
         this.§%"u§ = new Image(this.§"#4§.texture);
         param2.addChild(this.§%"u§);
         this.§%"u§.scaleX = §8"O§;
         this.§%"u§.scaleY = §8"O§;
         this.§1!M§ = §8"O§;
         this.§""W§ = 0;
         this.§2! § = 0;
         this.positionX = param5;
         this.positionY = param6;
         param2.x = this.positionX / §8#3§.§2K§;
         param2.y = this.positionY / §8#3§.§2K§;
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
         if(this.§%"u§)
         {
            this.§%"u§.dispose();
            this.§%"u§ = null;
         }
         this.§"#4§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§""W§ > 2;
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         this.§2! § += param1;
         if(this.§""W§ == 0)
         {
            this.§1!M§ = §8"O§ + (§>"]§ - §8"O§) * (this.§2! § / SCALE_STEP1_TIME_MS);
            if(this.§1!M§ >= §>"]§)
            {
               this.§1!M§ = §>"]§;
               ++this.§""W§;
               this.§2! § = 0;
            }
         }
         else if(this.§""W§ == 1)
         {
            if(this.§2! § >= SCALE_STEP2_TIME_MS)
            {
               ++this.§""W§;
               this.§2! § = 0;
            }
         }
         else if(this.§""W§ == 2)
         {
            this.§1!M§ = §>"]§ + (§##i§ - §>"]§) * (this.§2! § / SCALE_STEP3_TIME_MS);
            if(this.§1!M§ <= 0)
            {
               ++this.§""W§;
            }
         }
         this.§%"u§.scaleX = this.§1!M§;
         this.§%"u§.scaleY = this.§1!M§;
         sprite.x = this.positionX / §8#3§.§2K§ - this.§%"u§.width / 2;
         sprite.y = this.positionY / §8#3§.§2K§ - this.§%"u§.height;
      }
   }
}
