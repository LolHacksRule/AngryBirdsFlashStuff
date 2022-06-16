package §=!7§
{
   import §52§.§#!,§;
   import §52§.§&#q§;
   import §@"§.§&!=§;
   import §@"§.§]!-§;
   
   public class § #f§ extends §5"6§
   {
       
      
      public function § #f§(param1:§]!-§, param2:§&!=§)
      {
         super(param1,param2);
      }
      
      public function §1#O§(param1:Number, param2:Number) : void
      {
         var _loc3_:§-"2§ = new §-"2§(animationManager,textureManager,§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§-"2§.§&"S§,"",0,0,§&#q§.§,#P§,2,Math.random() * Math.PI * 2,§&#q§.§%!F§,-1,false);
         this.§5"P§(_loc3_,_loc3_.§0"^§());
      }
      
      public function §&"B§(param1:Number, param2:Number) : void
      {
         var _loc3_:§`!y§ = new §`!y§(param1,param2);
         this.§5"P§(_loc3_,§4"8§);
      }
      
      public function §>"7§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4#c§ = new §4#c§(param1,param2);
         this.§5"P§(_loc3_,§4"8§);
      }
      
      public function §^#@§(param1:Number, param2:Number) : void
      {
      }
      
      public function §]#N§(param1:Number, param2:Number) : void
      {
         var _loc3_:§!#0§ = new §!#0§(animationManager,textureManager,§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§5"P§(_loc3_,§4"8§);
      }
      
      public function §0T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§]!o§ = new §]!o§(animationManager,textureManager,§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500 + Math.random() * 300,"",§=$4§.§-!0§,param5,param6,param4,0,param3,-1,false,param7);
         this.§5"P§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §,!E§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§6O§ = new §6O§(animationManager,textureManager,§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §#!,§.§?$#§,param2 * §#!,§.§?$#§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§5"P§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      private function §5"P§(param1:§,"?§, param2:int) : void
      {
         var _loc3_:§`"@§ = §+!9§(param2);
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
