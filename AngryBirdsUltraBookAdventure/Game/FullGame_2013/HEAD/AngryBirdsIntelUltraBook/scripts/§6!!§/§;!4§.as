package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   import §package§.LevelItemSoundResource;
   
   public class §;!4§ extends LevelObject
   {
       
      
      public function §;!4§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§`!P§.mTryToBlink > 0)
         {
            if(§`!P§.mTryToBlink >= LevelObjectRenderer.§;B§)
            {
               _loc2_ = true;
               §`!P§.mTryToBlink = LevelObjectRenderer.§;B§ - 1;
            }
            §`!P§.mTryToBlink -= param1;
            if(§`!P§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§`!P§.mIsBlinking)
         {
            §`!P§.mTryToBlink = 0;
            §`!P§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§`!P§.mTryToScream > 0)
         {
            if(§`!P§.mTryToScream >= LevelObjectRenderer.§9I§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               §`!P§.mTryToScream = LevelObjectRenderer.§9I§ - 1;
            }
            §`!P§.mTryToScream -= param1;
            if(§`!P§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§`!P§.mIsScreaming)
         {
            §`!P§.mTryToScream = 0;
            §`!P§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §!d§(LevelItemSoundResource.§5W§);
      }
   }
}
