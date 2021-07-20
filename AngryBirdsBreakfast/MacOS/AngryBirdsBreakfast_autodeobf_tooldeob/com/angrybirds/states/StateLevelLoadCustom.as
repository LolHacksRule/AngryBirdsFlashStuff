package com.angrybirds.states
{
   import com.rovio.utils.DynamicLanguage;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.sfx.ColorFadeLayer;
   import com.angrybirds.sfx.ColorFadeLayerEvent;
   
   public class StateLevelLoadCustom extends StateLevelLoadClassic
   {
       
      
      protected var mFadeSFX:ColorFadeLayer = null;
      
      private var mFadeStarted:Boolean;
      
      public function StateLevelLoadCustom(param1:LevelManager, param2:LocalizationManager, param3:LevelItemManager, param4:Boolean = true, param5:String = "LevelLoadStateClassic")
      {
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.mFadeSFX = new ColorFadeLayer(0,0,0,0);
         mUIView.movieClip.cacheAsBitmap = true;
      }
      
      override public function activate(param1:String) : void
      {
         if(this.mFadeSFX && this.mFadeSFX.parent == mUIView.container.mClip)
         {
            mUIView.container.mClip.removeChild(this.mFadeSFX);
         }
         super.activate(param1);
         this.updateLocalization();
         this.setLoadingText();
         this.mFadeStarted = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function onLevelLoadError() : void
      {
         setNextState(StateLevelSelection.STATE_NAME);
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         DynamicLanguage.instance.updateTextFields(mUIView.container,"StateLevelLoading");
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override public function onLevelLoadReady() : void
      {
         this.startFade();
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
      }
      
      protected function startFade() : void
      {
         if(this.mFadeSFX && !this.mFadeStarted)
         {
            this.mFadeStarted = true;
            this.mFadeSFX.setAlpha(0);
            if(this.mFadeSFX.parent == mUIView.container.mClip)
            {
               mUIView.container.mClip.removeChild(this.mFadeSFX);
               mUIView.container.mClip.addChild(this.mFadeSFX);
            }
            else
            {
               mUIView.container.mClip.addChild(this.mFadeSFX);
            }
            this.mFadeSFX.fadeToAlpha(1,0.25);
            this.mFadeSFX.addEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeComplete);
         }
      }
      
      protected function onFadeComplete(param1:ColorFadeLayerEvent) : void
      {
         this.mFadeSFX.removeEventListener(ColorFadeLayerEvent.ON_FADE_TO_ALPHA_COMPLETE,this.onFadeComplete);
         setNextState(getPlayState());
      }
   }
}
