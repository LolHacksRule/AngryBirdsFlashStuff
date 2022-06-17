package §-!!§
{
   import §!6§.Sprite;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%A§.§]#e§;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §=!2§.§%"T§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §"!%§ extends §8"J§
   {
       
      
      private var §^#_§:Boolean = false;
      
      public function §"!%§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         this.§^#_§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§ #'§, param3:§8"J§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(health <= 0 && !this.§^#_§)
         {
            this.§2!r§();
            this.§^#_§ = true;
         }
         return health;
      }
      
      private function §2!r§() : void
      {
         var _loc1_:§]#e§ = §%"T§.§;`§.particles as §]#e§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§'Y§.§>$?§,§>F§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§'Y§.§,"A§,0,0,0,0,1.5,15,true);
      }
   }
}
