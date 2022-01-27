package §,7§
{
   import §#!X§.b2World;
   import §'!&§.§9!c§;
   import §'!&§.Sprite;
   import §8o§.§!">§;
   import §;"=§.§]"<§;
   import §?!<§.§'!1§;
   import §[,§.§class§;
   
   public class §<g§ extends §-"@§
   {
      
      public static const §2_§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §4!+§:Number = 0;
      
      private static const §5y§:Number = 2;
      
      private static const §4!m§:Number = 0;
       
      
      protected var §^!Y§:§9!c§;
      
      protected var §#G§:§!">§;
      
      protected var §if§:Number;
      
      protected var §!!f§:int;
      
      protected var §;!P§:Number;
      
      protected var §[I§:Number;
      
      protected var §[!m§:Number;
      
      public function §<g§(param1:§!">§, param2:Sprite, param3:b2World, param4:§]"<§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§#G§ = param1;
         this.§^!Y§ = new §9!c§(this.§#G§.texture);
         param2.addChild(this.§^!Y§);
         this.§^!Y§.scaleX = §4!+§;
         this.§^!Y§.scaleY = §4!+§;
         this.§if§ = §4!+§;
         this.§!!f§ = 0;
         this.§;!P§ = 0;
         this.§[I§ = param5;
         this.§[!m§ = param6;
         param2.x = this.§[I§ / §'!1§.§<!@§;
         param2.y = this.§[!m§ / §'!1§.§<!@§;
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
         if(this.§^!Y§)
         {
            this.§^!Y§.dispose();
            this.§^!Y§ = null;
         }
         this.§#G§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§!!f§ > 2;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         this.§;!P§ += param1;
         if(this.§!!f§ == 0)
         {
            this.§if§ = §4!+§ + (§5y§ - §4!+§) * (this.§;!P§ / SCALE_STEP1_TIME_MS);
            if(this.§if§ >= §5y§)
            {
               this.§if§ = §5y§;
               ++this.§!!f§;
               this.§;!P§ = 0;
            }
         }
         else if(this.§!!f§ == 1)
         {
            if(this.§;!P§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§!!f§;
               this.§;!P§ = 0;
            }
         }
         else if(this.§!!f§ == 2)
         {
            this.§if§ = §5y§ + (§4!m§ - §5y§) * (this.§;!P§ / SCALE_STEP3_TIME_MS);
            if(this.§if§ <= 0)
            {
               ++this.§!!f§;
            }
         }
         this.§^!Y§.scaleX = this.§if§;
         this.§^!Y§.scaleY = this.§if§;
         sprite.x = this.§[I§ / §'!1§.§<!@§ - this.§^!Y§.width / 2;
         sprite.y = this.§[!m§ / §'!1§.§<!@§ - this.§^!Y§.height;
      }
   }
}
