package §!'§
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §8§.§&#V§;
   import §@0§.§%!q§;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§`"X§;
   
   public class §[&§ extends §3"V§
   {
      
      public static const §1C§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §>#y§:Number = 0;
      
      private static const §[#p§:Number = 2;
      
      private static const §7$-§:Number = 0;
       
      
      protected var §@"5§:Image;
      
      protected var §-7§:§`"X§;
      
      protected var §?'§:Number;
      
      protected var §%![§:int;
      
      protected var §`"T§:Number;
      
      protected var §!"E§:Number;
      
      protected var §'"?§:Number;
      
      public function §[&§(param1:§`"X§, param2:Sprite, param3:b2World, param4:§4U§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§-7§ = param1;
         this.§@"5§ = new Image(this.§-7§.texture);
         param2.addChild(this.§@"5§);
         this.§@"5§.scaleX = §>#y§;
         this.§@"5§.scaleY = §>#y§;
         this.§?'§ = §>#y§;
         this.§%![§ = 0;
         this.§`"T§ = 0;
         this.§!"E§ = param5;
         this.§'"?§ = param6;
         param2.x = this.§!"E§ / §%!q§.§6q§;
         param2.y = this.§'"?§ / §%!q§.§6q§;
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
         if(this.§@"5§)
         {
            this.§@"5§.dispose();
            this.§@"5§ = null;
         }
         this.§-7§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§%![§ > 2;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         this.§`"T§ += param1;
         if(this.§%![§ == 0)
         {
            this.§?'§ = §>#y§ + (§[#p§ - §>#y§) * (this.§`"T§ / SCALE_STEP1_TIME_MS);
            if(this.§?'§ >= §[#p§)
            {
               this.§?'§ = §[#p§;
               ++this.§%![§;
               this.§`"T§ = 0;
            }
         }
         else if(this.§%![§ == 1)
         {
            if(this.§`"T§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§%![§;
               this.§`"T§ = 0;
            }
         }
         else if(this.§%![§ == 2)
         {
            this.§?'§ = §[#p§ + (§7$-§ - §[#p§) * (this.§`"T§ / SCALE_STEP3_TIME_MS);
            if(this.§?'§ <= 0)
            {
               ++this.§%![§;
            }
         }
         this.§@"5§.scaleX = this.§?'§;
         this.§@"5§.scaleY = this.§?'§;
         sprite.x = this.§!"E§ / §%!q§.§6q§ - this.§@"5§.width / 2;
         sprite.y = this.§'"?§ / §%!q§.§6q§ - this.§@"5§.height;
      }
   }
}
