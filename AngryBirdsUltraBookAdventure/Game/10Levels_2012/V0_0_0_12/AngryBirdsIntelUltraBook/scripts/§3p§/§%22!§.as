package §3p§
{
   import §2!H§.LevelMain;
   import §6!7§.Sprite;
   import §;T§.LevelItemSoundResource;
   import §]=§.b2World;
   
   public class §"!§ extends LevelObject
   {
       
      
      public function §"!§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7!O§.mTryToBlink > 0)
         {
            if(§7!O§.mTryToBlink >= LevelObjectRenderer.§[W§)
            {
               _loc2_ = true;
               §7!O§.mTryToBlink = LevelObjectRenderer.§[W§ - 1;
            }
            §7!O§.mTryToBlink -= param1;
            if(§7!O§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7!O§.mIsBlinking)
         {
            §7!O§.mTryToBlink = 0;
            §7!O§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§7!O§.mTryToScream > 0)
         {
            if(§7!O§.mTryToScream >= LevelObjectRenderer.§9!g§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §7!O§.mTryToScream = LevelObjectRenderer.§9!g§ - 1;
            }
            §7!O§.mTryToScream -= param1;
            if(§7!O§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§7!O§.mIsScreaming)
         {
            §7!O§.mTryToScream = 0;
            §7!O§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §@r§(LevelItemSoundResource.§6!=§);
      }
   }
}
