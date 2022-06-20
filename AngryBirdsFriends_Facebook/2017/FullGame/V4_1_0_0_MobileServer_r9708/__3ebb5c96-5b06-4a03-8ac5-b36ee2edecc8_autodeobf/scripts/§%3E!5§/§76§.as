package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§!"v§;
   import §9#K§.b2Settings;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §76§ extends §`!,§
   {
       
      
      private var §["x§:Boolean = false;
      
      private var § 2§:Number = 0;
      
      public function §76§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§!"v§, param5:§]"o§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§["x§ ? §2"^§.§[[§ : §2"^§.§<$+§;
         param1.addParticle(_loc2_,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§2"^§.§9Z§);
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §"7§ && param3.health == param3.§##6§)
         {
            this.§["x§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§0#l§;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
   }
}
