package §%$0§
{
   import §+!n§.§+!p§;
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   import §?$#§.§<d§;
   import §?$#§.§]"]§;
   
   public class §0E§ extends §2#Z§
   {
       
      
      public function §0E§(param1:§!!]§, param2:§%"=§)
      {
         super(param1,param2);
      }
      
      public function §"#f§(param1:Number, param2:Number) : void
      {
         var _loc3_:§-#i§ = new §-#i§(animationManager,textureManager,§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§-#i§.§,o§,"",0,0,§]"]§.§`#C§,2,Math.random() * Math.PI * 2,§]"]§.§^#s§,-1,false);
         this.§47§(_loc3_,_loc3_.§3S§());
      }
      
      public function §>#1§(param1:Number, param2:Number) : void
      {
         var _loc3_:§##C§ = new §##C§(param1,param2);
         this.§47§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §>C§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'#g§ = new §'#g§(param1,param2);
         this.§47§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §;i§(param1:Number, param2:Number, param3:Number) : void
      {
         §+!p§.§`?§.particles.addSimpleParticle("FIREORB_FLAME",§`#I§.§^!+§,§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,600,"",§`#I§.§@!T§,0,0,0,0,param3,14,true);
      }
      
      public function §^"^§(param1:Number, param2:Number) : void
      {
      }
      
      public function §^#0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§!"@§ = new §!"@§(animationManager,textureManager,§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§47§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §##2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§7!p§ = new §7!p§(animationManager,textureManager,§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§`#I§.§&#p§,param5,param6,param4,0,param3,6,true,param7);
         this.§47§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §'!d§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§!L§ = new §!L§(animationManager,textureManager,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §<d§.§6@§,param2 * §<d§.§6@§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§47§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      public function §;"@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§@"k§ = new §@"k§(animationManager,textureManager,param1,param2,param3,param4,param5);
         this.§47§(_loc6_,§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      private function §47§(param1:§'T§, param2:int) : void
      {
         var _loc3_:§`#H§ = §1"O§(param2);
         if(_loc3_)
         {
            _loc3_.addParticle(param1);
         }
         else
         {
            param1.dispose();
         }
      }
   }
}
