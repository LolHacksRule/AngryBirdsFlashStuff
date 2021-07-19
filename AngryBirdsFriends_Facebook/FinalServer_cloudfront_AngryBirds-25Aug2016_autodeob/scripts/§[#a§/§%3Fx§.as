package §[#a§
{
   import §,#L§.§!#%§;
   import §9$§.Sprite;
   import §=!7§.§ #f§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §?§.§>"$§;
   import §@"§.§`"W§;
   import §`#C§.§8K§;
   
   public class §?x§ extends §="@§
   {
       
      
      private var §4e§:Boolean = false;
      
      public function §?x§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number)
      {
         this.§4e§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(health <= 0 && !this.§4e§)
         {
            this.§ #F§();
            this.§4e§ = true;
         }
         return health;
      }
      
      private function § #F§() : void
      {
         var _loc1_:§ #f§ = §>"$§.§3#'§.particles as § #f§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§=$4§.§<#h§,§5"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§=$4§.§-!0§,0,0,0,0,1.5,15,true);
      }
   }
}
