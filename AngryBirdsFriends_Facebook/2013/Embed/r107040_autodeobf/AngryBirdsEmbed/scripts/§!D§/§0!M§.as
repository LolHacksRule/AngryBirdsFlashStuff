package §!D§
{
   import §9s§.§^9§;
   import §[v§.§0&§;
   import §[v§.§7e§;
   
   public class §0!M§ extends §5O§
   {
       
      
      public function §0!M§(param1:§7e§, param2:§0&§)
      {
         super(param1,param2);
      }
      
      public function §'!I§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%'§ = new §%'§(§>&§,§4d§,§7D§.§0!N§,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§%'§.§4R§,"",0,0,0,2,Math.random() * Math.PI * 2,0.25,-1,false);
         this.§+j§(_loc3_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §`,§(param1:Number, param2:Number) : void
      {
         var _loc3_:§+!+§ = new §+!+§(param1,param2);
         this.§+j§(_loc3_,§]q§);
      }
      
      public function §0s§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3'§ = new §3'§(param1,param2);
         this.§+j§(_loc3_,§]q§);
      }
      
      public function §>0§(param1:Number, param2:Number) : void
      {
      }
      
      public function §0!+§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>l§ = new §>l§(§>&§,§4d§,§7D§.§0!N§,§5O§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§+j§(_loc3_,§]q§);
      }
      
      public function §9!2§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§9z§ = new §9z§(§>&§,§4d§,§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.PARTICLE_GROUP_GAME_EFFECTS,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §^9§.§5T§,param2 * §^9§.§5T§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§+j§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      private function §+j§(param1:§?!§, param2:int) : void
      {
         var _loc3_:§'J§ = §=!+§(param2);
         if(_loc3_)
         {
            _loc3_.§3S§(param1);
         }
         else
         {
            param1.dispose();
         }
      }
   }
}
