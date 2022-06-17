package §%A§
{
   import §=!2§.§%"T§;
   
   public class §&$0§ extends §3!t§
   {
       
      
      private var §]I§:int;
      
      public function §&$0§(param1:Number, param2:Number)
      {
         this.§]I§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§%"T§.§;`§.animationManager,§%"T§.§;`§.textureManager,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §%"b§ += this.§]I§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
