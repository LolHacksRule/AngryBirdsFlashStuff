package §#B§
{
   import § y§.b2World;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §2!G§.§+>§;
   import §2!G§.§2!V§;
   import §54§.b2Settings;
   import §<!$§.Sprite;
   
   public class §8+§ extends §@p§
   {
       
      
      private var §-[§:Boolean = false;
      
      private var §4!J§:Number = 0;
      
      public function §8+§(param1:§ ! §, param2:Sprite, param3:b2World, param4:§2!V§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§]s§) : void
      {
         var _loc2_:String = !!this.§-[§ ? §&!^§.§2p§ : §&!^§.§`!_§;
         param1.§;!V§(_loc2_,§]s§.§0!E§,§&!^§.§3T§,§4g§().GetPosition().x,§4g§().GetPosition().y - 1,2000,"",§&!^§.§%@§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§-[§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§4g§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§4g§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§4g§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§4!J§ > 0)
         {
            this.§4!J§ -= param1;
            §#8§.mTryToScream = §-!I§.§49§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §<!X§() : void
      {
         this.§4!J§ = §+>§.§>§;
         §#8§.mTryToScream = §-!I§.§49§;
         playScreamingSoundEffect();
      }
   }
}
