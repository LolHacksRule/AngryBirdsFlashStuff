package §6!3§
{
   import §'G§.§;D§;
   import §-#X§.§,!B§;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §?$<§.§?$>§;
   import §@!S§.b2World;
   import §`#@§.§7n§;
   
   public class §^$4§ extends §;!U§
   {
       
      
      private var §2!D§:Boolean = false;
      
      public function §^$4§(param1:Sprite, param2:§;D§, param3:b2World, param4:§?$>§, param5:§,!B§, param6:Number)
      {
         this.§2!D§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§8$B§, param3:§;!U§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         super.applyDamage(param1,param2,param3,param4,param5);
         if(health <= 0 && !this.§2!D§)
         {
            this.§2#H§();
            this.§2!D§ = true;
         }
         return health;
      }
      
      private function §2#H§() : void
      {
         var _loc1_:§%6§ = §7n§.§6#K§.particles as §%6§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§6!9§.§5!L§,§<#]§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§6!9§.§'s§,0,0,0,0,1.5,15,true);
      }
   }
}
