package §7"p§
{
   import §`#@§.§7n§;
   
   public class §@§ extends §&"+§
   {
       
      
      private var §#2§:int;
      
      public function §@§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§#2§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§7n§.§6#K§.animationManager,§7n§.§6#K§.textureManager,§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §`!B§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §'$5§ += this.§#2§;
         return super.update(param1);
      }
   }
}
