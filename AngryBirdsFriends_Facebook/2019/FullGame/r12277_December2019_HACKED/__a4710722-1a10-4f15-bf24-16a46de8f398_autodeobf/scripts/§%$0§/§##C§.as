package §%$0§
{
   import §+!n§.§+!p§;
   
   public class §##C§ extends §'T§
   {
       
      
      private var §<1§:int;
      
      public function §##C§(param1:Number, param2:Number)
      {
         this.§<1§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§+!p§.§`?§.animationManager,§+!p§.§`?§.textureManager,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §^I§ += this.§<1§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
