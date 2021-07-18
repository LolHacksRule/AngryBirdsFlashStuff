package §=!7§
{
   import §?§.§>"$§;
   
   public class §4#c§ extends §,"?§
   {
       
      
      private var §7X§:int;
      
      public function §4#c§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§7X§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§>"$§.§3#'§.animationManager,§>"$§.§3#'§.textureManager,§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.§4"8§,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §9$+§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §%##§ += this.§7X§;
         return super.update(param1);
      }
   }
}
