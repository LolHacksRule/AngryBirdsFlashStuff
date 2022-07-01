package §>!'§
{
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;J§;
   import §?s§.b2Settings;
   
   public class §3^§ extends §5!6§
   {
       
      
      private var §0!m§:Boolean = false;
      
      private var §-!I§:Number = 0;
      
      public function §3^§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function addDestructionParticles(param1:§<!r§) : void
      {
         var _loc2_:String = !!this.§0!m§ ? §!r§.§[#§ : §!r§.§implements§;
         param1.§1&§(_loc2_,§<!r§.§1N§,§!r§.§0!_§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§!r§.§%1§);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§0!m§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return true;
         }
         return false;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§-!I§ > 0)
         {
            this.§-!I§ -= param1;
            §0!E§.mTryToScream = §6!N§.§0+§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §6K§() : void
      {
         this.§-!I§ = §;J§.§+!J§;
         §0!E§.mTryToScream = §6!N§.§0+§;
         playScreamingSoundEffect();
      }
   }
}
