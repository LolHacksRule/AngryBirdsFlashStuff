package §7"o§
{
   import §?#z§.§]$?§;
   
   public class §2!;§ extends §3#z§
   {
       
      
      private var §5#4§:int;
      
      public function §2!;§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§5#4§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§]$?§.§2#§.animationManager,§]$?§.§2#§.textureManager,§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §4o§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §^]§ += this.§5#4§;
         return super.update(param1);
      }
   }
}
