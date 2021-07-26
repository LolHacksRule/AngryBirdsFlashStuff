package §7"o§
{
   import §?#z§.§]$?§;
   
   public class §8">§ extends §3#z§
   {
       
      
      private var §5#4§:int;
      
      public function §8">§(param1:Number, param2:Number)
      {
         this.§5#4§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§]$?§.§2#§.animationManager,§]$?§.§2#§.textureManager,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §^]§ += this.§5#4§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
