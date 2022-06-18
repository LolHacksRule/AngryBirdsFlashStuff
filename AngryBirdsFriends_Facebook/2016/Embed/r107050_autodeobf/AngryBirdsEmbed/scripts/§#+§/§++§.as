package §#+§
{
   import §>!O§.§[+§;
   
   public class §++§ extends §9!E§
   {
       
      
      private var §^>§:int;
      
      public function §++§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§^>§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§[+§.§,!&§.§7g§,§[+§.§,!&§.textureManager,§@!<§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!C§.§=L§,§@!<§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§@!<§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §^D§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §;!D§ += this.§^>§;
         return super.update(param1);
      }
   }
}
