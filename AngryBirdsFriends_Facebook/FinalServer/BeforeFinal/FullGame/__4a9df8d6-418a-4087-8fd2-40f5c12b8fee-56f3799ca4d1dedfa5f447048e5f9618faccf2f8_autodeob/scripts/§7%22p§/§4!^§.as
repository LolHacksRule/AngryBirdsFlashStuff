package §7"p§
{
   import §`#@§.§7n§;
   
   public class §4!^§ extends §&"+§
   {
       
      
      private var §#2§:int;
      
      public function §4!^§(param1:Number, param2:Number)
      {
         this.§#2§ = 5 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         super(§7n§.§6#K§.animationManager,§7n§.§6#K§.textureManager,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,1000,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0.5,0,1,-1,false,"EARTHQUAKE_DUST_CLOUD");
      }
      
      override public function update(param1:Number) : Boolean
      {
         §'$5§ += this.§#2§;
         displayObject.alpha -= 0.0025;
         return super.update(param1);
      }
   }
}
