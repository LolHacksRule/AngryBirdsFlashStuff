package §^$1§
{
   import §6"r§.§!#A§;
   
   public class §<#u§ extends §88§
   {
       
      
      private var §2r§:int;
      
      public function §<#u§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§2r§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§!#A§.§#F§.animationManager,§!#A§.§#F§.textureManager,§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.§#$4§,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §]9§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §,!H§ += this.§2r§;
         return super.update(param1);
      }
   }
}
