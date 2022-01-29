package §8§#8
{
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §,!s§.b2Settings;
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §6!H§ extends §]&§
   {
       
      
      private var §[#0§:Boolean = false;
      
      private var §]"8§:Number = 0;
      
      public function §6!H§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§&#V§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§[#0§ ? §@>§.§ 7§ : §@>§.§2c§;
         param1.addParticle(_loc2_,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§@>§.§&_§);
      }
      
      override public function applyDamage(param1:Number, param2:§&#V§, param3:§4!y§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §?$%§ && param3.health == param3.§""5§)
         {
            this.§[#0§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§[#x§;
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
