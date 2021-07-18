package §&E§
{
   import §@!"§.§?l§;
   
   public class §%!R§ extends §]6§
   {
       
      
      private var §#8§:int;
      
      public function §%!R§(param1:Number, param2:Number)
      {
         this.§#8§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§?l§.§'h§.animationManager,§?l§.§'h§.textureManager,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.§,G§,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §!"W§ += this.§#8§;
         §"$§.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
