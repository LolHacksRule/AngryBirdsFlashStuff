package §%A§
{
   import § !D§.§'"u§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §-!!§.§ #'§;
   import §8#t§.b2World;
   import §?§.§,Y§;
   import §?§.§6!M§;
   import §?§.§["+§;
   import §^"[§.§4!8§;
   
   public class §#!n§ extends §"j§
   {
      
      public static const §9!O§:String = "LASER_CROSSHAIR";
       
      
      protected var §^p§:DisplayObject;
      
      protected var §<"<§:§6!M§;
      
      protected var §=!O§:Number;
      
      protected var §5#w§:Number;
      
      protected var §5"x§:Number;
      
      private var §8$9§:Number;
      
      private var §`"J§:Number;
      
      public function §#!n§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§<"<§ = param4 as §["+§;
         this.§^p§ = param2.getFrame(0,this.§^p§);
         this.§^p§.x = param5 / §'"u§.§'#e§;
         this.§^p§.y = param6 / §'"u§.§'#e§;
         param1.addChild(this.§^p§);
         this.§=!O§ = this.§<"<§.lifeTime * 1000;
         this.§5#w§ = 0;
         this.§8$9§ = §8$D§(this.§<"<§.minScaleBegin,this.§<"<§.maxScaleBegin);
         this.§`"J§ = §8$D§(this.§<"<§.minScaleEnd,this.§<"<§.maxScaleEnd);
         this.§5"x§ = this.§8$9§;
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
         return this.§5#w§ >= this.§=!O§;
      }
      
      protected function §""F§() : void
      {
         if(this.§`"J§ > 0 && this.§8$9§ > 0)
         {
            this.§5"x§ = (this.§`"J§ + this.§8$9§) / 2 + (this.§`"J§ - this.§8$9§) / 2 * -Math.cos(this.§5#w§ / this.§=!O§ * Math.PI * 4);
            this.§^p§.scaleX = this.§5"x§;
            this.§^p§.scaleY = this.§5"x§;
         }
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§="A§;
         }
         this.§5#w§ += param1;
         this.§""F§();
      }
   }
}
