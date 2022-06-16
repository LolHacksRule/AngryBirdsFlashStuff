package §!'§
{
   import §;#D§.§3#U§;
   
   public class §7#P§ extends §8! §
   {
       
      
      private var §>$4§:int;
      
      public function §7#P§(param1:Number, param2:Number)
      {
         this.§>$4§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§3#U§.§#$4§.animationManager,§3#U§.§#$4§.textureManager,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §]#8§ += this.§>$4§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
