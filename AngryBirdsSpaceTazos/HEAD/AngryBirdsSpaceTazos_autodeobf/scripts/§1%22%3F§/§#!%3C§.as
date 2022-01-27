package §1"?§
{
   import §&!]§.§#[§;
   import §&!]§.Sprite;
   import §3"#§.§`"8§;
   import §3>§.§-"8§;
   import §9!K§.b2World;
   import §9!v§.§"[§;
   import §9"!§.§0!s§;
   
   public class §#!<§ extends §%!0§
   {
      
      public static const §#!"§:String = "ScalingScore";
      
      private static const SCALE_STEP1_TIME_MS:Number = 300;
      
      private static const SCALE_STEP2_TIME_MS:Number = 300;
      
      private static const SCALE_STEP3_TIME_MS:Number = 300;
      
      private static const §7%§:Number = 0;
      
      private static const §,!]§:Number = 2;
      
      private static const §3"%§:Number = 0;
       
      
      protected var § a§:§#[§;
      
      protected var §!y§:§"[§;
      
      protected var §6!x§:Number;
      
      protected var §+!z§:int;
      
      protected var §>t§:Number;
      
      protected var §4"H§:Number;
      
      protected var §`t§:Number;
      
      public function §#!<§(param1:§"[§, param2:Sprite, param3:b2World, param4:§-"8§, param5:Number, param6:Number)
      {
         super(param2,param3,param4);
         this.§!y§ = param1;
         this.§ a§ = new §#[§(this.§!y§.texture);
         param2.addChild(this.§ a§);
         this.§ a§.scaleX = §7%§;
         this.§ a§.scaleY = §7%§;
         this.§6!x§ = §7%§;
         this.§+!z§ = 0;
         this.§>t§ = 0;
         this.§4"H§ = param5;
         this.§`t§ = param6;
         param2.x = this.§4"H§ / §`"8§.§3!=§;
         param2.y = this.§`t§ / §`"8§.§3!=§;
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
         if(this.§ a§)
         {
            this.§ a§.dispose();
            this.§ a§ = null;
         }
         this.§!y§ = null;
         super.dispose();
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§+!z§ > 2;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         this.§>t§ += param1;
         if(this.§+!z§ == 0)
         {
            this.§6!x§ = §7%§ + (§,!]§ - §7%§) * (this.§>t§ / SCALE_STEP1_TIME_MS);
            if(this.§6!x§ >= §,!]§)
            {
               this.§6!x§ = §,!]§;
               ++this.§+!z§;
               this.§>t§ = 0;
            }
         }
         else if(this.§+!z§ == 1)
         {
            if(this.§>t§ >= SCALE_STEP2_TIME_MS)
            {
               ++this.§+!z§;
               this.§>t§ = 0;
            }
         }
         else if(this.§+!z§ == 2)
         {
            this.§6!x§ = §,!]§ + (§3"%§ - §,!]§) * (this.§>t§ / SCALE_STEP3_TIME_MS);
            if(this.§6!x§ <= 0)
            {
               ++this.§+!z§;
            }
         }
         this.§ a§.scaleX = this.§6!x§;
         this.§ a§.scaleY = this.§6!x§;
         sprite.x = this.§4"H§ / §`"8§.§3!=§ - this.§ a§.width / 2;
         sprite.y = this.§`t§ / §`"8§.§3!=§ - this.§ a§.height;
      }
   }
}
