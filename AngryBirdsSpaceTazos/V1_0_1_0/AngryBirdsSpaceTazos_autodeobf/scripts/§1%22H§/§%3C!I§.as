package §1"H§
{
   import §"!&§.§"v§;
   import §"!&§.§%F§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §]">§.§;U§;
   
   public class §<!I§ extends §+>§
   {
      
      public static const §!!p§:String = "LASER_CROSSHAIR";
       
      
      protected var §@!]§:DisplayObject;
      
      protected var §2"!§:§"v§;
      
      protected var §@n§:Number;
      
      protected var §9S§:Number;
      
      protected var §'!8§:Number;
      
      private var §`"4§:Number;
      
      private var §0! §:Number;
      
      public function §<!I§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§2"!§ = param4 as §%F§;
         this.§@!]§ = param2.getFrame(0,this.§@!]§);
         this.§@!]§.x = param5 / §^g§.§5!-§;
         this.§@!]§.y = param6 / §^g§.§5!-§;
         param1.addChild(this.§@!]§);
         this.§@n§ = this.§2"!§.lifeTime * 1000;
         this.§9S§ = 0;
         this.§`"4§ = §!9§(this.§2"!§.minScaleBegin,this.§2"!§.maxScaleBegin);
         this.§0! § = §!9§(this.§2"!§.minScaleEnd,this.§2"!§.maxScaleEnd);
         this.§'!8§ = this.§`"4§;
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
         return this.§9S§ >= this.§@n§;
      }
      
      protected function §'-§() : void
      {
         if(this.§0! § > 0 && this.§`"4§ > 0)
         {
            this.§'!8§ = (this.§0! § + this.§`"4§) / 2 + (this.§0! § - this.§`"4§) / 2 * -Math.cos(this.§9S§ / this.§@n§ * Math.PI * 4);
            this.§@!]§.scaleX = this.§'!8§;
            this.§@!]§.scaleY = this.§'!8§;
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§+"1§;
         }
         this.§9S§ += param1;
         this.§'-§();
      }
   }
}
