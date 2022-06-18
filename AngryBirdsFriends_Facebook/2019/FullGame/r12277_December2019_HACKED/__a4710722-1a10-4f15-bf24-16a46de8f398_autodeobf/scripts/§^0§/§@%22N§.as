package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §+!n§.§+!p§;
   import §-!j§.§-"8§;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §@"N§ extends §=Q§
   {
       
      
      private var §,#d§:Boolean = false;
      
      public function §@"N§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number)
      {
         this.§,#d§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(health <= 0 && !this.§,#d§)
         {
            this.§+!S§();
            this.§,#d§ = true;
         }
         return health;
      }
      
      private function §+!S§() : void
      {
         var _loc1_:§0E§ = §+!p§.§`?§.particles as §0E§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§`#I§.§1!h§,§2#Z§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§`#I§.§&#p§,0,0,0,0,1.5,15,true);
      }
   }
}
