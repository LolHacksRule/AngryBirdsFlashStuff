package §=!7§
{
   import §?§.§>"$§;
   
   public class §`!y§ extends §,"?§
   {
       
      
      private var §7X§:int;
      
      public function §`!y§(param1:Number, param2:Number)
      {
         this.§7X§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§>"$§.§3#'§.animationManager,§>"$§.§3#'§.textureManager,§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.§4"8§,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §%##§ += this.§7X§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
