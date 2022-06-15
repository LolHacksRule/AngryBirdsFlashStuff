package §;!=§
{
   import § !N§.§5"?§;
   import §'#K§.b2World;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7"o§.§>"r§;
   import §8#K§.§&2§;
   import §?#z§.§]$?§;
   
   public class §9#&§ extends §>"G§
   {
       
      
      private var §7#R§:Boolean = false;
      
      public function §9#&§(param1:Sprite, param2:§7b§, param3:b2World, param4:§&2§, param5:§5"?§, param6:Number)
      {
         this.§7#R§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§]!m§, param3:§>"G§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(health <= 0 && !this.§7#R§)
         {
            this.§?!3§();
            this.§7#R§ = true;
         }
         return health;
      }
      
      private function §?!3§() : void
      {
         var _loc1_:§>"r§ = §]$?§.§2#§.particles as §>"r§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§=,§.§%!m§,§##P§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§=,§.§ a§,0,0,0,0,1.5,15,true);
      }
   }
}
