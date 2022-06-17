package §%A§
{
   import § !D§.§'"u§;
   import §!6§.Image;
   import §!6§.Sprite;
   import §-!!§.§ #'§;
   import §8#t§.b2World;
   import §?§.§,Y§;
   import §^"[§.§^!8§;
   
   public class §>#N§ extends §"j§
   {
      
      public static const §9!O§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §"]§:Number = 0;
      
      private static const §!a§:Number = 2;
      
      private static const §9!F§:Number = 0;
       
      
      protected var §1#G§:Image;
      
      protected var §>#=§:§^!8§;
      
      protected var §5"x§:Number;
      
      protected var §2<§:int;
      
      protected var §6!P§:Number;
      
      protected var positionX:Number;
      
      protected var positionY:Number;
      
      public function §>#N§(param1:§^!8§, param2:Sprite, param3:b2World, param4:§,Y§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§>#=§ = param1;
         this.§1#G§ = new Image(this.§>#=§.texture);
         param2.addChild(this.§1#G§);
         this.§1#G§.scaleX = §"]§;
         this.§1#G§.scaleY = §"]§;
         this.§5"x§ = §"]§;
         this.§2<§ = 0;
         this.§6!P§ = 0;
         this.positionX = param5;
         this.positionY = param6;
         param2.x = this.positionX / §'"u§.§'#e§;
         param2.y = this.positionY / §'"u§.§'#e§;
      }
      
      public function hide() : void
      {
         if(sprite)
         {
            sprite.visible = false;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         if(this.§1#G§)
         {
            this.§1#G§.dispose();
            this.§1#G§ = null;
         }
         this.§>#=§ = null;
         super.dispose(param1);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§2<§ > 2;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         this.§6!P§ += param1;
         if(this.§2<§ == 0)
         {
            this.§5"x§ = §"]§ + (§!a§ - §"]§) * (this.§6!P§ / SCALE_STEP1_TIME_MS);
            if(this.§5"x§ >= §!a§)
            {
               this.§5"x§ = §!a§;
               ++this.§2<§;
               this.§6!P§ = 0;
            }
         }
         else if(this.§2<§ == 1)
         {
            if(this.§6!P§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§2<§;
               this.§6!P§ = 0;
            }
         }
         else if(this.§2<§ == 2)
         {
            this.§5"x§ = §!a§ + (§9!F§ - §!a§) * (this.§6!P§ / SCALE_STEP3_TIME_MS);
            if(this.§5"x§ <= 0)
            {
               ++this.§2<§;
            }
         }
         this.§1#G§.scaleX = this.§5"x§;
         this.§1#G§.scaleY = this.§5"x§;
         sprite.x = this.positionX / §'"u§.§'#e§ - this.§1#G§.width / 2;
         sprite.y = this.positionY / §'"u§.§'#e§ - this.§1#G§.height;
      }
   }
}
