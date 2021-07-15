package com.angrybirds.states
{
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayerEvent;
   
   public class StateLevelLoadCreditsCustom extends StateLevelLoadCustom
   {
      
      public static const STATE_NAME:String = "LevelLoadCreditsCustom";
       
      
      public function StateLevelLoadCreditsCustom(param1:LevelManager, param2:LocalizationManager, param3:LevelItemManager, param4:Boolean = true, param5:String = "LevelLoadCreditsCustom")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         mFadeSFX.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeComplete);
         setNextState(StateCredits.STATE_NAME);
      }
   }
}
