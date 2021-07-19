package §`!r§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§1#K§;
   import §2"Y§.§2"q§;
   import §7!F§.§>"G§;
   import §7P§.§;$§;
   import §^#>§.§#_§;
   
   public class §#!j§ extends §!!H§
   {
      
      public static const §+"§:String = "LASER_CROSSHAIR";
       
      
      protected var §&![§:DisplayObject;
      
      protected var §<X§:§1#K§;
      
      protected var §4#N§:Number;
      
      protected var §'!#§:Number;
      
      protected var §[G§:Number;
      
      private var §%"g§:Number;
      
      private var §="d§:Number;
      
      public function §#!j§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§<X§ = param4 as §2"q§;
         this.§&![§ = param2.getFrame(0,this.§&![§);
         this.§&![§.x = param5 / §#_§.§8]§;
         this.§&![§.y = param6 / §#_§.§8]§;
         param1.addChild(this.§&![§);
         this.§4#N§ = this.§<X§.lifeTime * 1000;
         this.§'!#§ = 0;
         this.§%"g§ = §^"9§(this.§<X§.minScaleBegin,this.§<X§.maxScaleBegin);
         this.§="d§ = §^"9§(this.§<X§.minScaleEnd,this.§<X§.maxScaleEnd);
         this.§[G§ = this.§%"g§;
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
         return this.§'!#§ >= this.§4#N§;
      }
      
      protected function §^v§() : void
      {
         if(this.§="d§ > 0 && this.§%"g§ > 0)
         {
            this.§[G§ = (this.§="d§ + this.§%"g§) / 2 + (this.§="d§ - this.§%"g§) / 2 * -Math.cos(this.§'!#§ / this.§4#N§ * Math.PI * 4);
            this.§&![§.scaleX = this.§[G§;
            this.§&![§.scaleY = this.§[G§;
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.timeSpeedMultiplier;
         }
         this.§'!#§ += param1;
         this.§^v§();
      }
   }
}
