package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?A§.LevelMain;
   import §^L§.LevelItemSoundResource;
   
   public class §5!E§ extends LevelObject
   {
       
      
      public function §5!E§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§ get§.mTryToBlink > 0)
         {
            if(§ get§.mTryToBlink >= LevelObjectRenderer.§&3§)
            {
               _loc2_ = true;
               § get§.mTryToBlink = LevelObjectRenderer.§&3§ - 1;
            }
            § get§.mTryToBlink -= param1;
            if(§ get§.mTryToBlink <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§ get§.mIsBlinking)
         {
            § get§.mTryToBlink = 0;
            § get§.mIsBlinking = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         if(§ get§.mTryToScream > 0)
         {
            if(§ get§.mTryToScream >= LevelObjectRenderer.§6!H§)
            {
               _loc2_ = true;
               this.playScreamingSoundEffect();
               § get§.mTryToScream = LevelObjectRenderer.§6!H§ - 1;
            }
            § get§.mTryToScream -= param1;
            if(§ get§.mTryToScream <= 0)
            {
               _loc2_ = true;
            }
         }
         else if(§ get§.mIsScreaming)
         {
            § get§.mTryToScream = 0;
            § get§.mIsScreaming = false;
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      protected function playScreamingSoundEffect() : void
      {
         §8!9§(LevelItemSoundResource.§0!7§);
      }
   }
}
