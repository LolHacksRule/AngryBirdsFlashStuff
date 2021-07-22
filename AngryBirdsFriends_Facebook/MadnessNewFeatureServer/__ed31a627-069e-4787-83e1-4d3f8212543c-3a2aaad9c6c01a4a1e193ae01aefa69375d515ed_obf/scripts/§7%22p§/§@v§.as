package §7"p§
{
   import §'G§.§;D§;
   import §6!3§.§8$B§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §>2§.§!6§;
   import §?$<§.§,#q§;
   import §?$<§.§?$>§;
   import §?$<§.§[S§;
   import §@!S§.b2World;
   
   public class §@v§ extends §[!f§
   {
      
      public static const § !V§:String = "LASER_CROSSHAIR";
       
      
      protected var §&#W§:DisplayObject;
      
      protected var §4<§:§[S§;
      
      protected var §9"t§:Number;
      
      protected var §-!N§:Number;
      
      protected var §9"v§:Number;
      
      private var §3!i§:Number;
      
      private var §!b§:Number;
      
      public function §@v§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§4<§ = param4 as §,#q§;
         this.§&#W§ = param2.getFrame(0,this.§&#W§);
         this.§&#W§.x = param5 / §!6§.§[#v§;
         this.§&#W§.y = param6 / §!6§.§[#v§;
         param1.addChild(this.§&#W§);
         this.§9"t§ = this.§4<§.lifeTime * 1000;
         this.§-!N§ = 0;
         this.§3!i§ = §4#>§(this.§4<§.minScaleBegin,this.§4<§.maxScaleBegin);
         this.§!b§ = §4#>§(this.§4<§.minScaleEnd,this.§4<§.maxScaleEnd);
         this.§9"v§ = this.§3!i§;
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
         return this.§-!N§ >= this.§9"t§;
      }
      
      protected function §!+§() : void
      {
         if(this.§!b§ > 0 && this.§3!i§ > 0)
         {
            this.§9"v§ = (this.§!b§ + this.§3!i§) / 2 + (this.§!b§ - this.§3!i§) / 2 * -Math.cos(this.§-!N§ / this.§9"t§ * Math.PI * 4);
            this.§&#W§.scaleX = this.§9"v§;
            this.§&#W§.scaleY = this.§9"v§;
         }
      }
      
      override public function update(param1:Number, param2:§8$B§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§!x§;
         }
         this.§-!N§ += param1;
         this.§!+§();
      }
   }
}
