package §6!!§
{
   import §#!,§.Sprite;
   import §+!g§.b2Settings;
   import §>!L§.b2World;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import §]!@§.§ ?§;
   import §]!@§.LevelMain;
   
   public class §4q§ extends §;!4§
   {
       
      
      private var §4S§:Boolean = false;
      
      private var §=!;§:Number = 0;
      
      public function §4q§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §@J§ = param11;
      }
      
      override public function addDestructionParticles(param1:LevelParticleManager) : void
      {
         var _loc2_:String = !!this.§4S§ ? § !_§.§59§ : § !_§.§9y§;
         if(§@J§ == "")
         {
            param1.§?`§(_loc2_,LevelParticleManager.§9!H§,§ !_§.§=_§,§@!'§().GetPosition().x,§@!'§().GetPosition().y - 1,2000,"",§ !_§.§<!W§);
         }
         else
         {
            param1.§2!9§(§@J§,_loc2_,LevelParticleManager.§9!H§,§ !_§.§=_§,§@!'§().GetPosition().x,§@!'§().GetPosition().y - 1,2000,"",§ !_§.§<!W§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc7_ <= 0 && param3 && param4)
         {
            this.§4S§ = true;
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         if(Math.abs(§@!'§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§@!'§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * 0.3 && Math.abs(§@!'§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * 0.3)
         {
            return false;
         }
         return true;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§=!;§ > 0)
         {
            this.§=!;§ -= param1;
            §`!P§.mTryToScream = LevelObjectRenderer.§9I§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §>!6§() : void
      {
         this.§=!;§ = § ?§.§7r§;
         §`!P§.mTryToScream = LevelObjectRenderer.§9I§;
         playScreamingSoundEffect();
      }
   }
}
