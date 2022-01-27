package §,7§
{
   import §#!X§.b2World;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import §;"=§.§@!6§;
   import §;"=§.§]"<§;
   import §;"=§.§return§;
   import §?!<§.§'!1§;
   import §[,§.§class§;
   
   public class §@!c§ extends §-"@§
   {
      
      public static const §2_§:String = "LASER_CROSSHAIR";
       
      
      protected var §'"9§:DisplayObject;
      
      protected var §^B§:§@!6§;
      
      protected var §'c§:Number;
      
      protected var §;!8§:Number;
      
      protected var §if§:Number;
      
      private var §;!R§:Number;
      
      private var §1g§:Number;
      
      public function §@!c§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§]"<§, param5:Number, param6:Number)
      {
         super(param1,param3,param4);
         this.§^B§ = param4 as §return§;
         this.§'"9§ = param2.getFrame(0,this.§'"9§);
         this.§'"9§.x = param5 / §'!1§.§<!@§;
         this.§'"9§.y = param6 / §'!1§.§<!@§;
         param1.addChild(this.§'"9§);
         this.§'c§ = this.§^B§.lifeTime * 1000;
         this.§;!8§ = 0;
         this.§;!R§ = §,!Z§(this.§^B§.minScaleBegin,this.§^B§.maxScaleBegin);
         this.§1g§ = §,!Z§(this.§^B§.minScaleEnd,this.§^B§.maxScaleEnd);
         this.§if§ = this.§;!R§;
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
         return this.§;!8§ >= this.§'c§;
      }
      
      protected function §'"§() : void
      {
         if(this.§1g§ > 0 && this.§;!R§ > 0)
         {
            this.§if§ = (this.§1g§ + this.§;!R§) / 2 + (this.§1g§ - this.§;!R§) / 2 * -Math.cos(this.§;!8§ / this.§'c§ * Math.PI * 4);
            this.§'"9§.scaleX = this.§if§;
            this.§'"9§.scaleY = this.§if§;
         }
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(param2)
         {
            param1 /= param2.§5"C§;
         }
         this.§;!8§ += param1;
         this.§'"§();
      }
   }
}
