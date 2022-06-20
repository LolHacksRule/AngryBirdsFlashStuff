package §7"o§
{
   import §#g§.§8§;
   import §'#K§.b2World;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §8#K§.§&2§;
   import §8#K§.§?!t§;
   import §8#K§.§@"M§;
   import §;!=§.§]!m§;
   
   public class §8#n§ extends §=" §
   {
      
      public static const §@!4§:String = "LASER_CROSSHAIR";
       
      
      protected var §6"z§:DisplayObject;
      
      protected var §0"^§:§@"M§;
      
      protected var §,#$§:Number;
      
      protected var §^#'§:Number;
      
      protected var §1!M§:Number;
      
      private var §5#l§:Number;
      
      private var §!m§:Number;
      
      public function §8#n§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§0"^§ = param4 as §?!t§;
         this.§6"z§ = param2.getFrame(0,this.§6"z§);
         this.§6"z§.x = param5 / §8#3§.§2K§;
         this.§6"z§.y = param6 / §8#3§.§2K§;
         param1.addChild(this.§6"z§);
         this.§,#$§ = this.§0"^§.lifeTime * 1000;
         this.§^#'§ = 0;
         this.§5#l§ = §?y§(this.§0"^§.minScaleBegin,this.§0"^§.maxScaleBegin);
         this.§!m§ = §?y§(this.§0"^§.minScaleEnd,this.§0"^§.maxScaleEnd);
         this.§1!M§ = this.§5#l§;
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
         return this.§^#'§ >= this.§,#$§;
      }
      
      protected function §0v§() : void
      {
         if(this.§!m§ > 0 && this.§5#l§ > 0)
         {
            this.§1!M§ = (this.§!m§ + this.§5#l§) / 2 + (this.§!m§ - this.§5#l§) / 2 * -Math.cos(this.§^#'§ / this.§,#$§ * Math.PI * 4);
            this.§6"z§.scaleX = this.§1!M§;
            this.§6"z§.scaleY = this.§1!M§;
         }
      }
      
      override public function update(param1:Number, param2:§]!m§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§&#o§;
         }
         this.§^#'§ += param1;
         this.§0v§();
      }
   }
}
