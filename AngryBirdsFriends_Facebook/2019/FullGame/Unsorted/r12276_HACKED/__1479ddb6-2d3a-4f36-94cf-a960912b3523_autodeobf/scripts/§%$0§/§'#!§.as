package §%$0§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §-!j§.§4#"§;
   import §-!j§.§@U§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §?$#§.§<d§;
   import §^0§.§>"T§;
   
   public class §'#!§ extends §1c§
   {
      
      public static const §&";§:String = "LASER_CROSSHAIR";
       
      
      protected var §8"`§:DisplayObject;
      
      protected var §>$5§:§@U§;
      
      protected var §,U§:Number;
      
      protected var §8!y§:Number;
      
      protected var §'#b§:Number;
      
      private var §=!R§:Number;
      
      private var §8#%§:Number;
      
      public function §'#!§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§>$5§ = param4 as §4#"§;
         this.§8"`§ = param2.getFrame(0,this.§8"`§);
         this.§8"`§.x = param5 / §<d§.§6@§;
         this.§8"`§.y = param6 / §<d§.§6@§;
         param1.addChild(this.§8"`§);
         this.§,U§ = this.§>$5§.lifeTime * 1000;
         this.§8!y§ = 0;
         this.§=!R§ = §'$'§(this.§>$5§.minScaleBegin,this.§>$5§.maxScaleBegin);
         this.§8#%§ = §'$'§(this.§>$5§.minScaleEnd,this.§>$5§.maxScaleEnd);
         this.§'#b§ = this.§=!R§;
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
         return this.§8!y§ >= this.§,U§;
      }
      
      protected function §5"d§() : void
      {
         if(this.§8#%§ > 0 && this.§=!R§ > 0)
         {
            this.§'#b§ = (this.§8#%§ + this.§=!R§) / 2 + (this.§8#%§ - this.§=!R§) / 2 * -Math.cos(this.§8!y§ / this.§,U§ * Math.PI * 4);
            this.§8"`§.scaleX = this.§'#b§;
            this.§8"`§.scaleY = this.§'#b§;
         }
      }
      
      override public function update(param1:Number, param2:§>"T§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§5D§;
         }
         this.§8!y§ += param1;
         this.§5"d§();
      }
   }
}
