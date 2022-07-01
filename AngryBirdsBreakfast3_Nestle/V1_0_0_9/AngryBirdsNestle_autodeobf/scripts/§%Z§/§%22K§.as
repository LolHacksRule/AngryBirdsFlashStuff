package §%Z§
{
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §2!s§.§2!_§;
   import §8+§.§5"-§;
   import §9!Z§.b2World;
   import §`!B§.Sprite;
   
   public class §"K§ extends §&!-§
   {
      
      public static const § !f§:Number = 1000;
      
      public static const §+z§:Number = 500;
      
      public static const §%![§:String = "yell";
      
      public static const §1!L§:String = "blink";
       
      
      protected var §+!I§:Number = -1.0;
      
      protected var §4!;§:Number = -1.0;
      
      public function §"K§(param1:Sprite, param2:§+!?§, param3:b2World, param4:§!e§, param5:§5"-§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function get § !B§() : Boolean
      {
         return this.§4!;§ >= 0;
      }
      
      public function get §'!f§() : Boolean
      {
         return this.§+!I§ >= 0;
      }
      
      public function get isNormal() : Boolean
      {
         return !this.§ !B§ && !this.§'!f§;
      }
      
      public function scream() : void
      {
         this.§+!I§ = § !f§;
         this.§4!;§ = -1;
         §41§.setAnimation(§%![§,false);
      }
      
      public function blink() : void
      {
         this.§4!;§ = §+z§;
         this.§+!I§ = -1;
         §41§.setAnimation(§1!L§,false);
      }
      
      protected function normalize() : void
      {
         §41§.setAnimation(§ !N§,false);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         if(this.§'!f§)
         {
            this.§+!I§ -= param1;
         }
         if(this.§ !B§)
         {
            this.§4!;§ -= param1;
         }
         if(this.isNormal)
         {
            this.normalize();
         }
         super.render(param1,param2,param3);
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §9!9§(§2!_§.§&U§);
      }
   }
}
