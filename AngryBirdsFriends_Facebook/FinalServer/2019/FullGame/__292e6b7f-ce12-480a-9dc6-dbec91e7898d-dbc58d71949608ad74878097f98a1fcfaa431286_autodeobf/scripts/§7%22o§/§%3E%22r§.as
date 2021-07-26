package §7"o§
{
   import §#g§.§+!C§;
   import §#g§.§8§;
   import §7"T§.§#"^§;
   import §7"T§.§4#[§;
   import §?#z§.§]$?§;
   
   public class §>"r§ extends §##P§
   {
       
      
      public function §>"r§(param1:§4#[§, param2:§#"^§)
      {
         super(param1,param2);
      }
      
      public function §=#r§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4"H§ = new §4"H§(animationManager,textureManager,§=,§.§%!m§,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§4"H§.§,#b§,"",0,0,§+!C§.§3#&§,2,Math.random() * Math.PI * 2,§+!C§.§]!=§,-1,false);
         this.§"#e§(_loc3_,_loc3_.§4#W§());
      }
      
      public function §&"r§(param1:Number, param2:Number) : void
      {
         var _loc3_:§8">§ = new §8">§(param1,param2);
         this.§"#e§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §"!O§(param1:Number, param2:Number) : void
      {
         var _loc3_:§2!;§ = new §2!;§(param1,param2);
         this.§"#e§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §^#O§(param1:Number, param2:Number, param3:Number) : void
      {
         §]$?§.§2#§.particles.addSimpleParticle("FIREORB_FLAME",§=,§.§4#S§,§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,600,"",§=,§.§?E§,0,0,0,0,param3,14,true);
      }
      
      public function §14§(param1:Number, param2:Number) : void
      {
      }
      
      public function §!"=§(param1:Number, param2:Number) : void
      {
         var _loc3_:§0#"§ = new §0#"§(animationManager,textureManager,§=,§.§%!m§,§##P§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§"#e§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§;Y§ = new §;Y§(animationManager,textureManager,§=,§.§%!m§,§##P§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§=,§.§ a§,param5,param6,param4,0,param3,6,true,param7);
         this.§"#e§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §6!h§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§ !M§ = new § !M§(animationManager,textureManager,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §8#3§.§2K§,param2 * §8#3§.§2K§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§"#e§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      public function §=K§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§3!a§ = new §3!a§(animationManager,textureManager,param1,param2,param3,param4,param5);
         this.§"#e§(_loc6_,§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      private function §"#e§(param1:§3#z§, param2:int) : void
      {
         var _loc3_:§#"E§ = §5$<§(param2);
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
