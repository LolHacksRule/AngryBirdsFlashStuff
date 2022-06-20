package §^$1§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §1!+§.b2World;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §7"&§.§;"$§;
   import §7"&§.§?"B§;
   import §>!5§.§-!S§;
   
   public class §4D§ extends §!!O§
   {
      
      public static const §["A§:String = "LASER_CROSSHAIR";
       
      
      protected var §;"6§:DisplayObject;
      
      protected var §9A§:§?"B§;
      
      protected var §3!!§:Number;
      
      protected var §9!o§:Number;
      
      protected var §9#8§:Number;
      
      private var §&"q§:Number;
      
      private var §'"p§:Number;
      
      public function §4D§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§9A§ = param4 as §;"$§;
         this.§;"6§ = param2.getFrame(0,this.§;"6§);
         this.§;"6§.x = param5 / §!!S§.§,"3§;
         this.§;"6§.y = param6 / §!!S§.§,"3§;
         param1.addChild(this.§;"6§);
         this.§3!!§ = this.§9A§.lifeTime * 1000;
         this.§9!o§ = 0;
         this.§&"q§ = §5#'§(this.§9A§.minScaleBegin,this.§9A§.maxScaleBegin);
         this.§'"p§ = §5#'§(this.§9A§.minScaleEnd,this.§9A§.maxScaleEnd);
         this.§9#8§ = this.§&"q§;
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
         return this.§9!o§ >= this.§3!!§;
      }
      
      protected function §["2§() : void
      {
         if(this.§'"p§ > 0 && this.§&"q§ > 0)
         {
            this.§9#8§ = (this.§'"p§ + this.§&"q§) / 2 + (this.§'"p§ - this.§&"q§) / 2 * -Math.cos(this.§9!o§ / this.§3!!§ * Math.PI * 4);
            this.§;"6§.scaleX = this.§9#8§;
            this.§;"6§.scaleY = this.§9#8§;
         }
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§'`§;
         }
         this.§9!o§ += param1;
         this.§["2§();
      }
   }
}
