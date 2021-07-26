package §8§#8
{
   import §!'§.§7#c§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §;#D§.§3#U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class § #V§ extends §4!y§
   {
       
      
      private var §4"v§:Boolean = false;
      
      public function § #V§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         this.§4"v§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(health <= 0 && !this.§4"v§)
         {
            this.§-!s§();
            this.§4"v§ = true;
         }
         return health;
      }
      
      private function §-!s§() : void
      {
         var _loc1_:§7#c§ = §3#U§.§#$4§.particles as §7#c§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§@>§.§2c§,§[p§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§@>§.§&_§,0,0,0,0,1.5,15,true);
      }
   }
}
