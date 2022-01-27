package §^9§
{
   import §!!k§.§1!^§;
   import §!r§.§'=§;
   import §"§.§;!E§;
   import §#g§.§=!F§;
   import §#g§.§["%§;
   import §#g§.§^"y§;
   import §>"_§.b2World;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §0!X§ extends §3o§
   {
      
      public static const §5!L§:String = "LASER_CROSSHAIR";
       
      
      protected var §&"#§:DisplayObject;
      
      protected var §7!d§:§=!F§;
      
      protected var §[!<§:Number;
      
      protected var §#"R§:Number;
      
      protected var §!d§:Number;
      
      private var §+[§:Number;
      
      private var §-"`§:Number;
      
      public function §0!X§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§7!d§ = param4 as §^"y§;
         this.§&"#§ = param2.getFrame(0,this.§&"#§);
         this.§&"#§.x = param5 / §;!E§.§0"?§;
         this.§&"#§.y = param6 / §;!E§.§0"?§;
         param1.addChild(this.§&"#§);
         this.§[!<§ = this.§7!d§.lifeTime * 1000;
         this.§#"R§ = 0;
         this.§+[§ = §!!m§(this.§7!d§.minScaleBegin,this.§7!d§.maxScaleBegin);
         this.§-"`§ = §!!m§(this.§7!d§.minScaleEnd,this.§7!d§.maxScaleEnd);
         this.§!d§ = this.§+[§;
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
         return this.§#"R§ >= this.§[!<§;
      }
      
      protected function §&!0§() : void
      {
         if(this.§-"`§ > 0 && this.§+[§ > 0)
         {
            this.§!d§ = (this.§-"`§ + this.§+[§) / 2 + (this.§-"`§ - this.§+[§) / 2 * -Math.cos(this.§#"R§ / this.§[!<§ * Math.PI * 4);
            this.§&"#§.scaleX = this.§!d§;
            this.§&"#§.scaleY = this.§!d§;
         }
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.timeSpeedMultiplier;
         }
         this.§#"R§ += param1;
         this.§&!0§();
      }
   }
}
