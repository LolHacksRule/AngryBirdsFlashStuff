package §"!-§
{
   import §!!<§.§>"4§;
   import §!!<§.§[!L§;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §;'§.b2World;
   
   public class §8!#§ extends §[-§
   {
      
      public static const §%!i§:Number = 1000;
      
      public static const §@!$§:Number = 500;
      
      public static const §3"#§:String = "yell";
      
      public static const §^"+§:String = "blink";
       
      
      protected var §'!z§:Number = -1.0;
      
      protected var § B§:Number = -1.0;
      
      public function §8!#§(param1:Sprite, param2:§7!t§, param3:b2World, param4:§>"4§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §6X§() : Boolean
      {
         return this.§ B§ >= 0;
      }
      
      public function get §<p§() : Boolean
      {
         return this.§'!z§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§6X§ && !this.§<p§;
      }
      
      public function scream() : void
      {
         this.§'!z§ = §%!i§;
         this.§ B§ = -1;
         §[c§.setAnimation(§3"#§);
         this.playScreamingSoundEffect();
      }
      
      public function blink() : void
      {
         this.§ B§ = §@!$§;
         this.§'!z§ = -1;
         §[c§.setAnimation(§^"+§);
      }
      
      protected function normalize() : void
      {
         this.§ B§ = -1;
         this.§'!z§ = -1;
         §[c§.setAnimation(§!!6§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§<p§)
         {
            this.§'!z§ -= param1;
         }
         if(this.§6X§)
         {
            this.§ B§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §0z§(§[!L§.§9!T§);
      }
   }
}
