package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   import §>2§.§!6§;
   import §>2§.§7#;§;
   import §`#@§.§7n§;
   
   public class §%6§ extends §<#]§
   {
       
      
      public function §%6§(param1:§^"[§, param2:§3$§)
      {
         super(param1,param2);
      }
      
      public function §5l§(param1:Number, param2:Number) : void
      {
         var _loc3_:§[$<§ = new §[$<§(animationManager,textureManager,§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§[$<§.§;!N§,"",0,0,§7#;§.§%!T§,2,Math.random() * Math.PI * 2,§7#;§.§8#"§,-1,false);
         this.§`!@§(_loc3_,_loc3_.§["6§());
      }
      
      public function §1"G§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4!^§ = new §4!^§(param1,param2);
         this.§`!@§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §2y§(param1:Number, param2:Number) : void
      {
         var _loc3_:§@§ = new §@§(param1,param2);
         this.§`!@§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §5!1§(param1:Number, param2:Number, param3:Number) : void
      {
         §7n§.§6#K§.particles.addSimpleParticle("FIREORB_FLAME",§6!9§.§2!w§,§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,600,"",§6!9§.§^!+§,0,0,0,0,param3,14,true);
      }
      
      public function §3"l§(param1:Number, param2:Number) : void
      {
      }
      
      public function §+!j§(param1:Number, param2:Number) : void
      {
         var _loc3_:§>$"§ = new §>$"§(animationManager,textureManager,§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§`!@§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §"p§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§-"&§ = new §-"&§(animationManager,textureManager,§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§6!9§.§'s§,param5,param6,param4,0,param3,6,true,param7);
         this.§`!@§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §'!?§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§7#n§ = new §7#n§(animationManager,textureManager,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §!6§.§[#v§,param2 * §!6§.§[#v§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§`!@§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      public function §;#f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§7E§ = new §7E§(animationManager,textureManager,param1,param2,param3,param4,param5);
         this.§`!@§(_loc6_,§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      private function §`!@§(param1:§&"+§, param2:int) : void
      {
         var _loc3_:§[$1§ = §`!x§(param2);
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
