package §3Y§
{
   import §%!M§.§8!;§;
   import §%!M§.LevelParticleManager;
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §8!H§.b2Settings;
   import §?A§.§5a§;
   import §?A§.LevelMain;
   
   public class §!!^§ extends §5!E§
   {
       
      
      private var §!n§:Boolean = false;
      
      private var §0!9§:Number = 0;
      
      public function §!!^§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §8@§ = param11;
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc2_:String = !!this.§!n§ ? §8!;§.§7!,§ : §8!;§.§!k§;
         if(§8@§ == "")
         {
            param1.§%!!§(_loc2_,LevelParticleManager.§1!'§,§8!;§.§&!"§,§8!N§().GetPosition().x,§8!N§().GetPosition().y - 1,2000,"",§8!;§.§0J§);
         }
         else
         {
            param1.§5V§(§8@§,_loc2_,LevelParticleManager.§1!'§,§8!;§.§&!"§,§8!N§().GetPosition().x,§8!N§().GetPosition().y - 1,2000,"",§8!;§.§0J§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc7_ <= 0 && param3 && param4)
         {
            this.§!n§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§8!N§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§8!N§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§8!N§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§0!9§ > 0)
         {
            this.§0!9§ -= param1;
            § get§.mTryToScream = LevelObjectRenderer.§6!H§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §[!h§() : void
      {
         this.§0!9§ = §5a§.§3?§;
         § get§.mTryToScream = LevelObjectRenderer.§6!H§;
         playScreamingSoundEffect();
      }
   }
}
