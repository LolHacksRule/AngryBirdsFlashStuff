package §!u§
{
   import §3R§.§1!R§;
   import §4"@§.§?!0§;
   import §4"@§.Sprite;
   import §5"D§.§0!5§;
   import §6!M§.§<!r§;
   import §;`§.b2World;
   import §^e§.§7!R§;
   
   public class §#!d§ extends §5r§
   {
      
      public static const §8p§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §3!O§:Number = 0;
      
      private static const §!!u§:Number = 2;
      
      private static const §<!b§:Number = 0;
       
      
      protected var §2"G§:§?!0§;
      
      protected var §;!t§:§7!R§;
      
      protected var §2!@§:Number;
      
      protected var §]3§:int;
      
      protected var §@p§:Number;
      
      protected var §'!6§:Number;
      
      protected var §&!k§:Number;
      
      public function §#!d§(param1:§7!R§, param2:Sprite, param3:b2World, param4:§<!r§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§;!t§ = param1;
         this.§2"G§ = new §?!0§(this.§;!t§.texture);
         param2.addChild(this.§2"G§);
         this.§2"G§.scaleX = §3!O§;
         this.§2"G§.scaleY = §3!O§;
         this.§2!@§ = §3!O§;
         this.§]3§ = 0;
         this.§@p§ = 0;
         this.§'!6§ = param5;
         this.§&!k§ = param6;
         param2.x = this.§'!6§ / §1!R§.§00§;
         param2.y = this.§&!k§ / §1!R§.§00§;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function dispose() : void
      {
         if(this.§2"G§)
         {
            this.§2"G§.dispose();
            this.§2"G§ = null;
         }
         this.§;!t§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§]3§ > 2;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         super.update(param1,param2);
         this.§@p§ += param1;
         if(this.§]3§ == 0)
         {
            this.§2!@§ = §3!O§ + (§!!u§ - §3!O§) * (this.§@p§ / SCALE_STEP1_TIME_MS);
            if(this.§2!@§ >= §!!u§)
            {
               this.§2!@§ = §!!u§;
               ++this.§]3§;
               this.§@p§ = 0;
            }
         }
         else if(this.§]3§ == 1)
         {
            if(this.§@p§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§]3§;
               this.§@p§ = 0;
            }
         }
         else if(this.§]3§ == 2)
         {
            this.§2!@§ = §!!u§ + (§<!b§ - §!!u§) * (this.§@p§ / SCALE_STEP3_TIME_MS);
            if(this.§2!@§ <= 0)
            {
               ++this.§]3§;
            }
         }
         this.§2"G§.scaleX = this.§2!@§;
         this.§2"G§.scaleY = this.§2!@§;
         sprite.x = this.§'!6§ / §1!R§.§00§ - this.§2"G§.width / 2;
         sprite.y = this.§&!k§ / §1!R§.§00§ - this.§2"G§.height;
      }
   }
}
