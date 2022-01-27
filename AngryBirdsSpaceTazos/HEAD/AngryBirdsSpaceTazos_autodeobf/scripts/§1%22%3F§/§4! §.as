package §1"?§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §3>§.§-"8§;
   import §3>§.§7!%§;
   import §3>§.§@!1§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §9"!§.§0!s§;
   
   public class §4! § extends §%!0§
   {
      
      public static const §#!"§:String = "LASER_CROSSHAIR";
       
      
      protected var §,l§:DisplayObject;
      
      protected var §>!+§:§@!1§;
      
      protected var §7^§:Number;
      
      protected var §0K§:Number;
      
      protected var §6!x§:Number;
      
      private var §5N§:Number;
      
      private var §3"D§:Number;
      
      public function §4! §(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§>!+§ = param4 as §7!%§;
         this.§,l§ = param2.getFrame(0,this.§,l§);
         this.§,l§.x = param5 / §`"8§.§3!=§;
         this.§,l§.y = param6 / §`"8§.§3!=§;
         param1.addChild(this.§,l§);
         this.§7^§ = this.§>!+§.lifeTime * 1000;
         this.§0K§ = 0;
         this.§5N§ = §7A§(this.§>!+§.minScaleBegin,this.§>!+§.maxScaleBegin);
         this.§3"D§ = §7A§(this.§>!+§.minScaleEnd,this.§>!+§.maxScaleEnd);
         this.§6!x§ = this.§5N§;
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
         return this.§0K§ >= this.§7^§;
      }
      
      protected function §4!?§() : void
      {
         if(this.§3"D§ > 0 && this.§5N§ > 0)
         {
            this.§6!x§ = (this.§3"D§ + this.§5N§) / 2 + (this.§3"D§ - this.§5N§) / 2 * -Math.cos(this.§0K§ / this.§7^§ * Math.PI * 4);
            this.§,l§.scaleX = this.§6!x§;
            this.§,l§.scaleY = this.§6!x§;
         }
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§]"$§;
         }
         this.§0K§ += param1;
         this.§4!?§();
      }
   }
}
