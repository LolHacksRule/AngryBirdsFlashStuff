package §[#a§
{
   import §,#L§.§!#%§;
   import §0H§.b2Settings;
   import §9$§.Sprite;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §=#n§.b2World;
   import §@"§.§`"W§;
   import §`#C§.§0!y§;
   import §`#C§.§8K§;
   
   public class §3a§ extends §,"!§
   {
       
      
      private var §,]§:Boolean = false;
      
      private var §,"[§:Number = 0;
      
      public function §3a§(param1:Sprite, param2:§`"W§, param3:b2World, param4:§8K§, param5:§!#%§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§7!O§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§,]§ ? §=$4§.§]!L§ : §=$4§.§<#h§;
         param1.addParticle(_loc2_,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.§;";§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§=$4§.§-!0§);
      }
      
      override public function applyDamage(param1:Number, param2:§7!O§, param3:§="@§, param4:Boolean = true) : Number
      {
         var _loc5_:Number;
         if((_loc5_ = super.applyDamage(param1,param2,param3,param4)) <= 0 && param3 is §-k§ && param3.health == param3.§2!w§)
         {
            this.§,]§ = true;
         }
         return _loc5_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§]B§;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc1_:Number = 0.3;
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_ && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_ && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_)
         {
            return false;
         }
         return true;
      }
      
      override public function scream() : void
      {
         super.scream();
         §&!N§(§0!y§.§9i§);
      }
   }
}
