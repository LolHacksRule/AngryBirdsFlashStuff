package §!D§
{
   import §6h§.§[!4§;
   
   public class §3'§ extends §?!§
   {
       
      
      private var §+t§:int;
      
      public function §3'§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§+t§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§[!4§.§continue§.§%F§,§[!4§.§continue§.textureManager,§7D§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5O§.§]q§,§7D§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§7D§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         § P§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §4!5§ += this.§+t§;
         return super.update(param1);
      }
   }
}
