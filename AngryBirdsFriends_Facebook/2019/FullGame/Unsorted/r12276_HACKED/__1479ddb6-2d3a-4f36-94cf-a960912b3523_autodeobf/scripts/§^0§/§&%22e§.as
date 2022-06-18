package §^0§
{
   import §#Z§.Sprite;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §-!j§.§-"8§;
   import §1#F§.b2Settings;
   import §3#h§.b2World;
   import §9#M§.§,`§;
   import §@"v§.§@$<§;
   
   public class §&"e§ extends §[$?§
   {
       
      
      private var §6!=§:Boolean = false;
      
      private var §7"E§:Number = 0;
      
      public function §&"e§(param1:Sprite, param2:§,`§, param3:b2World, param4:§-"8§, param5:§@$<§, param6:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function addDestructionParticles(param1:§>"T§) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = !!this.§6!=§ ? §`#I§.§,"%§ : §`#I§.§1!h§;
         param1.addParticle(_loc2_,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_STATIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§`#I§.§&#p§);
      }
      
      override public function applyDamage(param1:Number, param2:§>"T§, param3:§=Q§, param4:Boolean = true, param5:Boolean = false) : Number
      {
         var _loc6_:Number;
         if((_loc6_ = super.applyDamage(param1,param2,param3,param4,param5)) <= 0 && param3 is §[# § && param3.health == param3.§,D§)
         {
            this.§6!=§ = true;
         }
         return _loc6_;
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§@"<§;
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
