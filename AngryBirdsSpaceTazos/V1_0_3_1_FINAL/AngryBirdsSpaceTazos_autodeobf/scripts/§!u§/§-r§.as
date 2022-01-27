package §!u§
{
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5"D§.§0!5§;
   import §6!M§.§<!r§;
   import §6!M§.§?R§;
   import §6!M§.§[]§;
   import §;`§.b2World;
   import §^e§.§^5§;
   
   public class §-r§ extends §5r§
   {
      
      public static const §8p§:String = "LASER_CROSSHAIR";
       
      
      protected var §#!R§:DisplayObject;
      
      protected var §'!m§:§?R§;
      
      protected var § !Z§:Number;
      
      protected var §%!7§:Number;
      
      protected var §2!@§:Number;
      
      private var §!!x§:Number;
      
      private var §6!X§:Number;
      
      public function §-r§(param1:Sprite, param2:§^5§, param3:b2World, param4:§<!r§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§'!m§ = param4 as §[]§;
         this.§#!R§ = param2.getFrame(0,this.§#!R§);
         this.§#!R§.x = param5 / §1!R§.§00§;
         this.§#!R§.y = param6 / §1!R§.§00§;
         param1.addChild(this.§#!R§);
         this.§ !Z§ = this.§'!m§.lifeTime * 1000;
         this.§%!7§ = 0;
         this.§!!x§ = §;"3§(this.§'!m§.minScaleBegin,this.§'!m§.maxScaleBegin);
         this.§6!X§ = §;"3§(this.§'!m§.minScaleEnd,this.§'!m§.maxScaleEnd);
         this.§2!@§ = this.§!!x§;
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
         return this.§%!7§ >= this.§ !Z§;
      }
      
      protected function § z§() : void
      {
         if(this.§6!X§ > 0 && this.§!!x§ > 0)
         {
            this.§2!@§ = (this.§6!X§ + this.§!!x§) / 2 + (this.§6!X§ - this.§!!x§) / 2 * -Math.cos(this.§%!7§ / this.§ !Z§ * Math.PI * 4);
            this.§#!R§.scaleX = this.§2!@§;
            this.§#!R§.scaleY = this.§2!@§;
         }
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§37§;
         }
         this.§%!7§ += param1;
         this.§ z§();
      }
   }
}
