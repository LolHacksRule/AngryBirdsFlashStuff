package §3p§
{
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §+!,§.b2Settings;
   import §2!H§.§&!U§;
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §]=§.b2World;
   
   public class §]x§ extends §"!§
   {
       
      
      private var §!J§:Boolean = false;
      
      private var §5!=§:Number = 0;
      
      public function §]x§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §!!<§ = param11;
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc2_:String = !!this.§!J§ ? §0'§.§2!G§ : §0'§.§9_§;
         if(§!!<§ == "")
         {
            param1.§@4§(_loc2_,LevelParticleManager.§[K§,§0'§.§7R§,§9f§().GetPosition().x,§9f§().GetPosition().y - 1,2000,"",§0'§.§!!U§);
         }
         else
         {
            param1.§3_§(§!!<§,_loc2_,LevelParticleManager.§[K§,§0'§.§7R§,§9f§().GetPosition().x,§9f§().GetPosition().y - 1,2000,"",§0'§.§!!U§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc7_ <= 0 && param3 && param4)
         {
            this.§!J§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§9f§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9f§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§9f§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§5!=§ > 0)
         {
            this.§5!=§ -= param1;
            §7!O§.mTryToScream = LevelObjectRenderer.§9!g§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §=!f§() : void
      {
         this.§5!=§ = §&!U§.§%6§;
         §7!O§.mTryToScream = LevelObjectRenderer.§9!g§;
         playScreamingSoundEffect();
      }
   }
}
