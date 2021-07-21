package §#+§
{
   import §>!O§.§[+§;
   
   public class §20§ extends §9!E§
   {
       
      
      private var §^>§:int;
      
      public function §20§(param1:Number, param2:Number)
      {
         this.§^>§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§[+§.§,!&§.§7g§,§[+§.§,!&§.textureManager,§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.§=L§,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§@!<§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §;!D§ += this.§^>§;
         §7!B§.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
