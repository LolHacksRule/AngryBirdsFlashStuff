package §!'§
{
   import §@0§.§%!q§;
   import §@0§.§9"^§;
   import §`"8§.§34§;
   import §`"8§.§`#+§;
   
   public class §7#c§ extends §[p§
   {
       
      
      public function §7#c§(param1:§`#+§, param2:§34§)
      {
         super(param1,param2);
      }
      
      public function §'#f§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3c§ = new §3c§(animationManager,textureManager,§@>§.§2c§,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§3c§.§7#W§,"",0,0,§9"^§.§6"i§,2,Math.random() * Math.PI * 2,§9"^§.§^!>§,-1,false);
         this.§?#<§(_loc3_,_loc3_.§05§());
      }
      
      public function §["Q§(param1:Number, param2:Number) : void
      {
         var _loc3_:§7#P§ = new §7#P§(param1,param2);
         this.§?#<§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §3!w§(param1:Number, param2:Number) : void
      {
         var _loc3_:§'r§ = new §'r§(param1,param2);
         this.§?#<§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §2#h§(param1:Number, param2:Number) : void
      {
      }
      
      public function §0$A§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9o§ = new §9o§(animationManager,textureManager,§@>§.§2c§,§[p§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         this.§?#<§(_loc3_,PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      public function §=!>§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 0, param6:Number = 0, param7:Number = 0) : void
      {
         var _loc8_:§##Q§ = new §##Q§(animationManager,textureManager,§@>§.§2c§,§[p§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§@>§.§&_§,param5,param6,param4,0,param3,6,true,param7);
         this.§?#<§(_loc8_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
      }
      
      public function §8!N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§`#R§ = new §`#R§(animationManager,textureManager,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §%!q§.§6q§,param2 * §%!q§.§6q§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         this.§?#<§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
      }
      
      public function §2"y§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:§`"G§ = new §`"G§(animationManager,textureManager,param1,param2,param3,param4,param5);
         this.§?#<§(_loc6_,§[p§.PARTICLE_GROUP_FOREGROUND_EFFECTS);
      }
      
      private function §?#<§(param1:§8! §, param2:int) : void
      {
         var _loc3_:§&"=§ = §+6§(param2);
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
