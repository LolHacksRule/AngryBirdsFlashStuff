package §&E§
{
   import §4!<§.§'!S§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §="@§ extends §6!O§
   {
       
      
      public function §="@§(param1:§^!Y§, param2:§`m§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      public function §;!1§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§>"§ = new §>"§(§8"+§,§=!2§,§0i§.§^"X§,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,§>"§.§?I§,"",0,0,0,2,Math.random() * Math.PI * 2,0.25,-1,false);
         if(_loc4_ || param2)
         {
            this.§,!b§(_loc3_,PARTICLE_GROUP_BACKGROUND_EFFECTS);
         }
      }
      
      public function §="9§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§%!R§ = new §%!R§(param1,param2);
         if(!_loc5_)
         {
            this.§,!b§(_loc3_,§,G§);
         }
      }
      
      public function §;C§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§0!E§ = new §0!E§(param1,param2);
         if(_loc4_ || this)
         {
            this.§,!b§(_loc3_,§,G§);
         }
      }
      
      public function §`">§(param1:Number, param2:Number) : void
      {
      }
      
      public function §?7§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§'`§ = new §'`§(§8"+§,§=!2§,§0i§.§^"X§,§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",0,0,0,0,0,1,-1,false);
         if(_loc4_)
         {
            this.§,!b§(_loc3_,§,G§);
         }
      }
      
      public function § t§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:§""1§ = new §""1§(§8"+§,§=!2§,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1 * §'!S§.§2"<§,param2 * §'!S§.§2"<§,2000,"",0,param3 * Math.cos(param4) * param5,-param3 * Math.sin(param4) * param5,40,param3 * 20,param5,0.5,true,"PARTICLE_WONDERLAND_DUST");
         if(!(_loc7_ && param3))
         {
            this.§,!b§(_loc6_,PARTICLE_GROUP_GAME_EFFECTS);
         }
      }
      
      private function §,!b§(param1:§]6§, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§ @§ = § !N§(param2);
         if(!(_loc4_ && this))
         {
            if(!_loc3_)
            {
               param1.dispose();
               if(!_loc5_)
               {
                  addr59:
               }
               return;
            }
            if(_loc5_)
            {
               addr56:
               _loc3_.§"!J§(param1);
            }
            §§goto(addr59);
         }
         §§goto(addr56);
      }
   }
}
