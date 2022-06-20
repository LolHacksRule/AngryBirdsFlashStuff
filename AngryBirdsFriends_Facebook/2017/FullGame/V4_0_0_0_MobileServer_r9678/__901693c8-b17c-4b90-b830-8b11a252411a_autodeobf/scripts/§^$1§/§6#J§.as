package §^$1§
{
   import §+!C§.§!!S§;
   import §+!C§.§9!b§;
   import §7!j§.§"I§;
   import §7!j§.§'0§;
   
   public class §6#J§ extends §7"6§
   {
       
      
      public function §6#J§(param1:§"I§, param2:§'0§)
      {
         super(param1,param2);
      }
      
      public function §<!Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%Z§ = new §%Z§(animationManager,textureManager,§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§%Z§.§-#[§,"",0,0,§9!b§.§2#`§,2,Math.random() * Math.PI * 2,§9!b§.§=,§,-1,false);
         this.§1!H§(_loc3_,_loc3_.§@!G§());
      }
      
      public function §"!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>"R§ = new §>"R§(param1,param2);
         this.§1!H§(_loc3_,§#$4§);
      }
      
      public function §2!8§(param1:Number, param2:Number) : void
      {
         var _loc3_:§<#u§ = new §<#u§(param1,param2);
         this.§1!H§(_loc3_,§#$4§);
      }
      
      public function § !h§(param1:Number, param2:Number) : void
      {
      }
      
      public function §@"y§(param1:Number, param2:Number) : void
      {
         var _loc3_:§;#`§ = new §;#`§(animationManager,textureManager,§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§1!H§(_loc3_,§#$4§);
      }
      
      public function §@#z§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§!"r§ = new §!"r§(animationManager,textureManager,§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§2"^§.§9Z§,param5,param6,param4,0,param3,6,true,param7);
         this.§1!H§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §]!s§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§[!§ = new §[!§(animationManager,textureManager,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §!!S§.§,"3§,param2 * §!!S§.§,"3§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§1!H§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      private function §1!H§(param1:§88§, param2:int) : void
      {
         var _loc3_:§<"n§ = §5f§(param2);
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
