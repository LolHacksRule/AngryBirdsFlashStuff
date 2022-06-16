package §!'§
{
   import §4"O§.b2World;
   import §8"L§.§3"s§;
   import §8"L§.§3#N§;
   import §8"L§.§4U§;
   import §8§.§&#V§;
   import §@0§.§%!q§;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §+#S§ extends §3"V§
   {
      
      public static const §1C§:String = "LASER_CROSSHAIR";
       
      
      protected var § $9§:DisplayObject;
      
      protected var § !F§:§3#N§;
      
      protected var §?!m§:Number;
      
      protected var §7$=§:Number;
      
      protected var §?'§:Number;
      
      private var § !z§:Number;
      
      private var §["Z§:Number;
      
      public function §+#S§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§ !F§ = param4 as §3"s§;
         this.§ $9§ = param2.getFrame(0,this.§ $9§);
         this.§ $9§.x = param5 / §%!q§.§6q§;
         this.§ $9§.y = param6 / §%!q§.§6q§;
         param1.addChild(this.§ $9§);
         this.§?!m§ = this.§ !F§.lifeTime * 1000;
         this.§7$=§ = 0;
         this.§ !z§ = §>p§(this.§ !F§.minScaleBegin,this.§ !F§.maxScaleBegin);
         this.§["Z§ = §>p§(this.§ !F§.minScaleEnd,this.§ !F§.maxScaleEnd);
         this.§?'§ = this.§ !z§;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§7$=§ >= this.§?!m§;
      }
      
      protected function §6#[§() : void
      {
         if(this.§["Z§ > 0 && this.§ !z§ > 0)
         {
            this.§?'§ = (this.§["Z§ + this.§ !z§) / 2 + (this.§["Z§ - this.§ !z§) / 2 * -Math.cos(this.§7$=§ / this.§?!m§ * Math.PI * 4);
            this.§ $9§.scaleX = this.§?'§;
            this.§ $9§.scaleY = this.§?'§;
         }
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§9"]§;
         }
         this.§7$=§ += param1;
         this.§6#[§();
      }
   }
}
