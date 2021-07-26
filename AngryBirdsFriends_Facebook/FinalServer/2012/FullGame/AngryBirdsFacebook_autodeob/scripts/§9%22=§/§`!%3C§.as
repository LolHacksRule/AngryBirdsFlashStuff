package §9"=§
{
   import §5!G§.§&2§;
   
   public class §`!<§ extends §#Q§
   {
       
      
      private var §%!D§:int;
      
      public function §`!<§(param1:Number, param2:Number)
      {
         this.§%!D§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§&2§.§],§.animationManager,§&2§.§],§.textureManager,§4! §.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§3!p§.§`! §,§4! §.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§4! §.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         § !r§ += this.§%!D§;
         §8+§.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
