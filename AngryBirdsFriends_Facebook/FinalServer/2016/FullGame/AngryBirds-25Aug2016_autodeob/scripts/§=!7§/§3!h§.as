package §=!7§
{
   import §52§.§#!,§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §[#a§.§7!O§;
   import §`#C§.§'#g§;
   import §`#C§.§-$'§;
   import §`#C§.§8K§;
   
   public class §3!h§ extends §@#f§
   {
      
      public static const §%!H§:String = "LASER_CROSSHAIR";
       
      
      protected var §#P§:DisplayObject;
      
      protected var §?";§:§-$'§;
      
      protected var §^=§:Number;
      
      protected var §`h§:Number;
      
      protected var §0!$§:Number;
      
      private var §]!k§:Number;
      
      private var §"#0§:Number;
      
      public function §3!h§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§?";§ = param4 as §'#g§;
         this.§#P§ = param2.getFrame(0,this.§#P§);
         this.§#P§.x = param5 / §#!,§.§?$#§;
         this.§#P§.y = param6 / §#!,§.§?$#§;
         param1.addChild(this.§#P§);
         this.§^=§ = this.§?";§.lifeTime * 1000;
         this.§`h§ = 0;
         this.§]!k§ = §-Z§(this.§?";§.minScaleBegin,this.§?";§.maxScaleBegin);
         this.§"#0§ = §-Z§(this.§?";§.minScaleEnd,this.§?";§.maxScaleEnd);
         this.§0!$§ = this.§]!k§;
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
         return this.§`h§ >= this.§^=§;
      }
      
      protected function §="6§() : void
      {
         if(this.§"#0§ > 0 && this.§]!k§ > 0)
         {
            this.§0!$§ = (this.§"#0§ + this.§]!k§) / 2 + (this.§"#0§ - this.§]!k§) / 2 * -Math.cos(this.§`h§ / this.§^=§ * Math.PI * 4);
            this.§#P§.scaleX = this.§0!$§;
            this.§#P§.scaleY = this.§0!$§;
         }
      }
      
      override public function update(param1:Number, param2:§7!O§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§[$#§;
         }
         this.§`h§ += param1;
         this.§="6§();
      }
   }
}
