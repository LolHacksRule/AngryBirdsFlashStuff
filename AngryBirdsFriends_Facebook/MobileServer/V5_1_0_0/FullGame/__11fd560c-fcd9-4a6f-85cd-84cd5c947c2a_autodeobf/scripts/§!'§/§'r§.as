package §!'§
{
   import §;#D§.§3#U§;
   
   public class §'r§ extends §8! §
   {
       
      
      private var §>$4§:int;
      
      public function §'r§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§>$4§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§3#U§.§#$4§.animationManager,§3#U§.§#$4§.textureManager,§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §@$-§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §]#8§ += this.§>$4§;
         return super.update(param1);
      }
   }
}
