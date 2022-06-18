package §^$1§
{
   import §6"r§.§!#A§;
   
   public class §>"R§ extends §88§
   {
       
      
      private var §2r§:int;
      
      public function §>"R§(param1:Number, param2:Number)
      {
         this.§2r§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§!#A§.§#F§.animationManager,§!#A§.§#F§.textureManager,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.§#$4§,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §,!H§ += this.§2r§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
