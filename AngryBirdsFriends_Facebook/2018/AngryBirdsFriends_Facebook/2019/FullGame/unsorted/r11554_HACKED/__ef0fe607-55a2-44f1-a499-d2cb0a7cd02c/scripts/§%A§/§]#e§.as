package §%A§
{
   import § !D§.§'"u§;
   import § !D§.§0$?§;
   import §=!2§.§%"T§;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   
   public class §]#e§ extends §>F§
   {
       
      
      public function §]#e§(param1:§2#6§, param2:§=#;§)
      {
         super(param1,param2);
      }
      
      public function §+!3§(param1:Number, param2:Number) : void
      {
         var _loc3_:§2"8§ = new §2"8§(animationManager,textureManager,§'Y§.§>$?§,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§2"8§.§%#N§,"",0,0,§0$?§.§`$?§,2,Math.random() * Math.PI * 2,§0$?§.§&"R§,-1,false);
         this.§=#2§(_loc3_,_loc3_.§0!J§());
      }
      
      public function §?#K§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&$0§ = new §&$0§(param1,param2);
         this.§=#2§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §5#G§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3$8§ = new §3$8§(param1,param2);
         this.§=#2§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §^!j§(param1:Number, param2:Number, param3:Number) : void
      {
         §%"T§.§;`§.particles.addSimpleParticle("FIREORB_FLAME",§'Y§.§?!G§,§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,600,"",§'Y§.§2d§,0,0,0,0,param3,14,true);
      }
      
      public function §1!r§(param1:Number, param2:Number) : void
      {
      }
      
      public function §>! §(param1:Number, param2:Number) : void
      {
         var _loc3_:§^I§ = new §^I§(animationManager,textureManager,§'Y§.§>$?§,§>F§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§=#2§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §?!8§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§'#9§ = new §'#9§(animationManager,textureManager,§'Y§.§>$?§,§>F§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§'Y§.§,"A§,param5,param6,param4,0,param3,6,true,param7);
         this.§=#2§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §4#z§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§&$$§ = new §&$$§(animationManager,textureManager,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §'"u§.§'#e§,param2 * §'"u§.§'#e§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§=#2§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      public function §-L§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§0$5§ = new §0$5§(animationManager,textureManager,param1,param2,param3,param4,param5);
         this.§=#2§(_loc6_,§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      private function §=#2§(param1:§3!t§, param2:int) : void
      {
         var _loc3_:§`$6§ = §'!J§(param2);
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
