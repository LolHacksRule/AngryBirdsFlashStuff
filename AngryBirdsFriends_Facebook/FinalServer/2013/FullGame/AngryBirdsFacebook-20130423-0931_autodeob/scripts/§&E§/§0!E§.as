package §&E§
{
   import §@!"§.§?l§;
   
   public class §0!E§ extends §]6§
   {
       
      
      private var §#8§:int;
      
      public function §0!E§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§#8§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§?l§.§'h§.animationManager,§?l§.§'h§.textureManager,§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.§,G§,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §="3§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §!"W§ += this.§#8§;
         return super.update(param1);
      }
   }
}
