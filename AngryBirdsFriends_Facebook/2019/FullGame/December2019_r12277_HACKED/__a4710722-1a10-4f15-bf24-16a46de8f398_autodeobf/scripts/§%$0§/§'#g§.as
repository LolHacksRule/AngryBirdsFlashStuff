package §%$0§
{
   import §+!n§.§+!p§;
   
   public class §'#g§ extends §'T§
   {
       
      
      private var §<1§:int;
      
      public function §'#g§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§<1§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§+!p§.§`?§.animationManager,§+!p§.§`?§.textureManager,§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §]"A§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §^I§ += this.§<1§;
         return super.update(param1);
      }
   }
}
