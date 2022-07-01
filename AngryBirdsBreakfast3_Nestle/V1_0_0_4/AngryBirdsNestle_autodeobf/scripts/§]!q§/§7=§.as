package §]!q§
{
   import §-!f§.Sprite;
   import §5!7§.§3!Y§;
   import §5!7§.§7!R§;
   import §6_§.§6k§;
   import §9"5§.b2World;
   
   public class §7=§ extends §,[§
   {
      
      public static const §5!I§:Number = 1000;
      
      public static const § "§:Number = 500;
      
      public static const §7"§:String = "yell";
      
      public static const §""$§:String = "blink";
       
      
      protected var §]&§:Number = -1.0;
      
      protected var §<!o§:Number = -1.0;
      
      public function §7=§(param1:Sprite, param2:§6k§, param3:b2World, param4:§3!Y§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function get §1!I§() : Boolean
      {
         return this.§<!o§ >= 0;
      }
      
      public function get §4!-§() : Boolean
      {
         return this.§]&§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§1!I§ && !this.§4!-§;
      }
      
      public function scream() : void
      {
         this.§]&§ = §5!I§;
         this.§<!o§ = -1;
         §3<§.setAnimation(§7"§);
      }
      
      public function blink() : void
      {
         this.§<!o§ = § "§;
         this.§]&§ = -1;
         §3<§.setAnimation(§""$§);
      }
      
      protected function normalize() : void
      {
         this.§<!o§ = -1;
         this.§]&§ = -1;
         §3<§.setAnimation(§0h§);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§4!-§)
         {
            this.§]&§ -= param1;
         }
         if(this.§1!I§)
         {
            this.§<!o§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §?[§(§7!R§.§4N§);
      }
   }
}
