package §%A§
{
   import §=!2§.§%"T§;
   
   public class §3$8§ extends §3!t§
   {
       
      
      private var §]I§:int;
      
      public function §3$8§(param1:Number, param2:Number)
      {
         var _loc3_:String = "EARTHQUAKE_PARTICLE_" + Math.round(6 * Math.random());
         var _loc4_:Number = 10 * Math.random() * (Math.random() > 0.5 ? -1 : 1);
         var _loc5_:Number = -2 * Math.random();
         this.§]I§ = (3 + 7 * Math.random()) * (Math.random() > 0.5 ? -1 : 1);
         super(§%"T§.§;`§.animationManager,§%"T§.§;`§.textureManager,§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_FOREGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,3000,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc4_,_loc5_,25,0,0.75 + Math.random() * 0.5,-1,false,_loc3_);
         §6w§ = -500;
      }
      
      override public function update(param1:Number) : Boolean
      {
         §%"b§ += this.§]I§;
         return super.update(param1);
      }
   }
}
