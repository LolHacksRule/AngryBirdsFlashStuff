package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6"r§.§!#A§;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §^$1§.§2"^§;
   import §^$1§.§6#J§;
   import §^$1§.§7"6§;
   
   public class §^!O§ extends §^"9§
   {
       
      
      private var §>7§:Boolean = false;
      
      public function §^!O§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number)
      {
         this.§>7§ = false;
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         super.applyDamage(param1,param2,param3,param4);
         if(health <= 0 && !this.§>7§)
         {
            this.§"!"§();
            this.§>7§ = true;
         }
         return health;
      }
      
      private function §"!"§() : void
      {
         var _loc1_:§6#J§ = §!#A§.§#F§.particles as §6#J§;
         _loc1_.addSimpleParticle("WONDERLAND_MISC_SPLASH",§2"^§.§<$+§,§7"6§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§2"^§.§9Z§,0,0,0,0,1.5,15,true);
      }
   }
}
