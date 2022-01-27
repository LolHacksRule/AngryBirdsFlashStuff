package §2!`§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §5!q§.§3"X§;
   import §6"R§.§""M§;
   import §>P§.§=!,§;
   import §>P§.§?L§;
   import §>P§.§^#'§;
   
   public class §%!l§ extends §""j§
   {
      
      public static const §^!3§:String = "LASER_CROSSHAIR";
       
      
      protected var §7"+§:DisplayObject;
      
      protected var § !4§:§?L§;
      
      protected var §%"i§:Number;
      
      protected var §?B§:Number;
      
      protected var §5!_§:Number;
      
      private var §;"_§:Number;
      
      private var §6o§:Number;
      
      public function §%!l§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§ !4§ = param4 as §^#'§;
         this.§7"+§ = param2.getFrame(0,this.§7"+§);
         this.§7"+§.x = param5 / §3"X§.§;"l§;
         this.§7"+§.y = param6 / §3"X§.§;"l§;
         param1.addChild(this.§7"+§);
         this.§%"i§ = this.§ !4§.lifeTime * 1000;
         this.§?B§ = 0;
         this.§;"_§ = §2"'§(this.§ !4§.minScaleBegin,this.§ !4§.maxScaleBegin);
         this.§6o§ = §2"'§(this.§ !4§.minScaleEnd,this.§ !4§.maxScaleEnd);
         this.§5!_§ = this.§;"_§;
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
         return this.§?B§ >= this.§%"i§;
      }
      
      protected function §]c§() : void
      {
         if(this.§6o§ > 0 && this.§;"_§ > 0)
         {
            this.§5!_§ = (this.§6o§ + this.§;"_§) / 2 + (this.§6o§ - this.§;"_§) / 2 * -Math.cos(this.§?B§ / this.§%"i§ * Math.PI * 4);
            this.§7"+§.scaleX = this.§5!_§;
            this.§7"+§.scaleY = this.§5!_§;
         }
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.timeSpeedMultiplier;
         }
         this.§?B§ += param1;
         this.§]c§();
      }
   }
}
