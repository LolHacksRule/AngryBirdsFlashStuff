package §=!7§
{
   import §52§.§#!,§;
   import §9$§.Image;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§+!3§;
   import §[#a§.§7!O§;
   import §`#C§.§8K§;
   
   public class §@!l§ extends §@#f§
   {
      
      public static const §%!H§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §<!k§:Number = 0;
      
      private static const §6#]§:Number = 2;
      
      private static const §9#Y§:Number = 0;
       
      
      protected var §4!e§:Image;
      
      protected var §6$"§:§+!3§;
      
      protected var §0!$§:Number;
      
      protected var §'-§:int;
      
      protected var §<!u§:Number;
      
      protected var §["f§:Number;
      
      protected var §9f§:Number;
      
      public function §@!l§(param1:§+!3§, param2:Sprite, param3:b2World, param4:§8K§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§6$"§ = param1;
         this.§4!e§ = new Image(this.§6$"§.texture);
         param2.addChild(this.§4!e§);
         this.§4!e§.scaleX = §<!k§;
         this.§4!e§.scaleY = §<!k§;
         this.§0!$§ = §<!k§;
         this.§'-§ = 0;
         this.§<!u§ = 0;
         this.§["f§ = param5;
         this.§9f§ = param6;
         param2.x = this.§["f§ / §#!,§.§?$#§;
         param2.y = this.§9f§ / §#!,§.§?$#§;
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
         if(this.§4!e§)
         {
            this.§4!e§.dispose();
            this.§4!e§ = null;
         }
         this.§6$"§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§'-§ > 2;
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         this.§<!u§ += param1;
         if(this.§'-§ == 0)
         {
            this.§0!$§ = §<!k§ + (§6#]§ - §<!k§) * (this.§<!u§ / SCALE_STEP1_TIME_MS);
            if(this.§0!$§ >= §6#]§)
            {
               this.§0!$§ = §6#]§;
               ++this.§'-§;
               this.§<!u§ = 0;
            }
         }
         else if(this.§'-§ == 1)
         {
            if(this.§<!u§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§'-§;
               this.§<!u§ = 0;
            }
         }
         else if(this.§'-§ == 2)
         {
            this.§0!$§ = §6#]§ + (§9#Y§ - §6#]§) * (this.§<!u§ / SCALE_STEP3_TIME_MS);
            if(this.§0!$§ <= 0)
            {
               ++this.§'-§;
            }
         }
         this.§4!e§.scaleX = this.§0!$§;
         this.§4!e§.scaleY = this.§0!$§;
         sprite.x = this.§["f§ / §#!,§.§?$#§ - this.§4!e§.width / 2;
         sprite.y = this.§9f§ / §#!,§.§?$#§ - this.§4!e§.height;
      }
   }
}
