package com.angrybirds.popups
{
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.angrybirds.states.StateLevelEndFailCustom;
   import each.XMLFactory;
   
   public class PopupLevelEndFail extends PopupCustom
   {
      
      private static var sLevelEndFailPopupBin:Class = PopupLevelEndFail_sLevelEndFailPopupBin;
       
      
      private var mParentState:StateLevelEndFailCustom;
      
      protected var mDefaultButtonPositions:Array;
      
      private const PIG_ANIMATION_FRAME_COUNT:int = 6;
      
      private const PIG_ANIMATION_FRAME_DURATION:int = 60;
      
      private var mPigAnimationFrameIndex:int = 1;
      
      private var mPigAnimationCurrentFrameDurationLeft:int = 60;
      
      private var mPigAnimation:UIComponentRovio;
      
      private var mIsOpen:Boolean;
      
      public function PopupLevelEndFail(param1:StateLevelEndFailCustom)
      {
         this.mDefaultButtonPositions = [];
         mUseFadeLayer = true;
         mUseScaleEffect = false;
         mCenterToOrigin = true;
         super(PopupLayerIndexType.LEVEL_END_SCREEN_LAYER_INDEX,PopupPriorityType.DEFAULT,this.getViewXML());
         this.mParentState = param1;
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = XMLFactory.fromOctetStreamClass(sLevelEndFailPopupBin);
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         mUseFadeLayer = true;
         this.updateTextFields();
         this.initButtonDefaultPositions();
         this.showButtons();
         this.mIsOpen = true;
         this.mPigAnimation = mContainer.getItemByName("MovieClip_LevelEndFailedPig");
         mCustomContainer.cacheAsBitmap = true;
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.mDefaultButtonPositions.push((mContainer.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mContainer.getItemByName("Button_Replay") as UIButtonRovio).x);
         this.mDefaultButtonPositions.push((mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).x);
      }
      
      protected function showButtons() : void
      {
         var _loc1_:String = this.mParentState.levelManager.getNextLevelId();
         if(!_loc1_ || _loc1_ && !(AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.isLevelOpen(_loc1_))
         {
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (mContainer.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0] + 40;
            (mContainer.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[2] - 40;
         }
         else
         {
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (mContainer.getItemByName("Button_Menu") as UIButtonRovio).x = this.mDefaultButtonPositions[0];
            (mContainer.getItemByName("Button_Replay") as UIButtonRovio).x = this.mDefaultButtonPositions[1];
            (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.mDefaultButtonPositions[2];
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (mContainer.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(param1);
         (mContainer.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(param1);
         (mContainer.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               mUseFadeLayer = false;
               close();
               this.mParentState.proceedToNextLevel();
               break;
            case "REPLAY":
               mUseFadeLayer = false;
               close();
               this.mParentState.setState(this.mParentState.getLevelLoadState());
               break;
            case "MENU":
               SoundEngine.stopSounds();
               mUseFadeLayer = false;
               close();
               this.mParentState.setState(this.mParentState.getLevelSelectionState());
         }
      }
      
      override public function dispose() : void
      {
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.mIsOpen = false;
         super.dispose();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         DynamicLanguage.instance.updateTextFields(mContainer,"StateEndFail");
      }
      
      private function updatePigAnimation(param1:Number) : void
      {
         if(!this.mPigAnimation)
         {
            return;
         }
         this.mPigAnimationCurrentFrameDurationLeft -= param1;
         if(this.mPigAnimationCurrentFrameDurationLeft <= 0)
         {
            this.mPigAnimationCurrentFrameDurationLeft = this.PIG_ANIMATION_FRAME_DURATION;
            ++this.mPigAnimationFrameIndex;
            if(this.mPigAnimationFrameIndex > this.PIG_ANIMATION_FRAME_COUNT)
            {
               this.mPigAnimationFrameIndex = 1;
            }
            this.mPigAnimation.goToFrame(this.mPigAnimationFrameIndex,false);
         }
      }
      
      public function update(param1:Number) : void
      {
         this.updatePigAnimation(param1);
      }
   }
}
