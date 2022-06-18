package §!D§
{
   import §6h§.§[!4§;
   
   public class §+!+§ extends §?!§
   {
       
      
      private var §+t§:int;
      
      public function §+!+§(param1:Number, param2:Number)
      {
         this.§+t§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§[!4§.§continue§.§%F§,§[!4§.§continue§.textureManager,§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.§]q§,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§7D§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §4!5§ += this.§+t§;
         §%>§.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
