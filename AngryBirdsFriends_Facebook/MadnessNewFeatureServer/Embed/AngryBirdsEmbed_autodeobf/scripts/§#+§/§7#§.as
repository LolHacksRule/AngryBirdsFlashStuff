package §#+§
{
   import §#?§.§6!4§;
   import §#?§.§=E§;
   import §`!4§.§6l§;
   
   public class §7#§ extends §6!C§
   {
       
      
      public function §7#§(param1:§=E§, param2:§6!4§)
      {
         super(param1,param2);
      }
      
      public function §%0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§0!8§ = new §0!8§(§ 2§,§[E§,§@!<§.§%F§,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§0!8§.§?!&§,"",0,0,0,2,Math.random() * Math.PI * 2,0.25,-1,false);
         this.§[d§(_loc3_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §=J§(param1:Number, param2:Number) : void
      {
         var _loc3_:§20§ = new §20§(param1,param2);
         this.§[d§(_loc3_,§=L§);
      }
      
      public function §>Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:§++§ = new §++§(param1,param2);
         this.§[d§(_loc3_,§=L§);
      }
      
      public function §]=§(param1:Number, param2:Number) : void
      {
      }
      
      public function §0!6§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9! § = new §9! §(§ 2§,§[E§,§@!<§.§%F§,§6!C§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§[d§(_loc3_,§=L§);
      }
      
      public function §0x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§`-§ = new §`-§(§ 2§,§[E§,§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.PARTICLE_GROUP_GAME_EFFECTS,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §6l§.§%!<§,param2 * §6l§.§%!<§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§[d§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      private function §[d§(param1:§9!E§, param2:int) : void
      {
         var _loc3_:§%3§ = §'4§(param2);
         if(_loc3_)
         {
            _loc3_.§-!$§(param1);
         }
         else
         {
            param1.dispose();
         }
      }
   }
}
