package com.angrybirds.popups
{
   import com.rovio.utils.DynamicLanguage;
   import com.angrybirds.ui.sidebar.mouseOver;
   import com.angrybirds.ui.scroller.ScrollerItemRendererLanguage;
   import com.angrybirds.ui.scroller.VScrollerCustom;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.countrydata.Language;
   import com.rovio.countrydata.LanguageData;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.states.StateLevelLoadCreditsCustom;
   import com.angrybirds.states.StateLegal;
   import com.rovio.factory.XMLFactory;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class PopupSelectLanguage extends PopupCustom
   {
      
      private static var sSelectLanguagePopupBin:Class = PopupSelectLanguage_sSelectLanguagePopupBin;
       
      
      private var mLanguageScroller:VScrollerCustom;
      
      private var mParentContainer:UIContainerRovio;
      
      private var mSelectedLanguage:UIButtonRovio;
      
      private var mLanguageData:LanguageData;
      
      public function PopupSelectLanguage(param1:UIContainerRovio)
      {
         mUseFadeLayer = false;
         mUseScaleEffect = false;
         mCenterToOrigin = false;
         super(PopupLayerIndexType.NORMAL_LAYER_INDEX,PopupPriorityType.DEFAULT,this.getViewXML());
         this.mParentContainer = param1;
      }
      
      private function updateArrowGraphicsLanguage() : void
      {
         var _loc1_:* = this.mLanguageScroller.offset != 0;
         var _loc2_:* = this.mLanguageScroller.offset != this.mLanguageScroller.data.length - this.mLanguageScroller.points;
         mContainer.getItemByName("Button_Language_ArrowUp").setVisibility(_loc1_);
         mContainer.getItemByName("Button_Language_ArrowDown").setVisibility(_loc2_);
      }
      
      override public function updateTextFields() : void
      {
         DynamicLanguage.instance.updateTextFields(mContainer,"SelectLanguage_Popup");
         DynamicLanguage.instance.updateTextFields(this.mParentContainer,"LanguageSelectionState");
      }
      
      private function updateLanguage(param1:String) : void
      {
         DynamicLanguage.instance.setLanguage(param1);
         mLocalizationManager.setLanguage(param1);
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = XMLFactory.fromOctetStreamClass(sSelectLanguagePopupBin);
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.updateTextFields();
         this.initializeLanguages();
         mContainer.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         mContainer.getItemByName("MovieClip_SoundOff").mClip.visible = !(AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.updateSoundsButtonState();
      }
      
      private function initializeLanguages() : void
      {
         this.mLanguageData = new LanguageData();
         this.initializeLanguageScroller();
         mApplication.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
      }
      
      private function initializeLanguageScroller() : void
      {
         var _loc2_:Array = null;
         var _loc1_:MovieClip = mContainer.getItemByName("Container_LanguageSelection").mClip;
         _loc2_ = this.mLanguageData.getLanguageList();
         if(!this.mLanguageScroller)
         {
            this.mLanguageScroller = new VScrollerCustom(_loc1_.width,_loc1_.height,mContainer.getItemByName("Container_LanguageSelection") as UIContainerRovio,_loc2_,ScrollerItemRendererLanguage,0,0);
            _loc1_.addChild(this.mLanguageScroller.scrollerSprite);
         }
         this.updateArrowGraphicsLanguage();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         switch(param2)
         {
            case "SCROLL_LANGUAGE_DOWN":
               this.scrollLanguage(this.mLanguageScroller.points);
               SoundEngine.playSound("Menu_Back");
               break;
            case "SCROLL_LANGUAGE_UP":
               this.scrollLanguage(-this.mLanguageScroller.points);
               SoundEngine.playSound("Menu_Back");
               break;
            case "SCROLLITEM_LANGUAGE_CLICK":
               this.setLanguageSelected(param3 as UIButtonRovio);
               mContainer.getItemByName("Button_Play").setVisibility(true);
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_PLAY":
               _loc4_ = this.mSelectedLanguage.mName.substr("ScrollItem_".length);
               (AngryBirdsBase.singleton as AngryBirdsCustom).userProgressCustom.setLanguageSelected(_loc4_);
               AngryBirdsBase.singleton.setNextState(StateLegal.STATE_NAME);
               (AngryBirdsBase.singleton as AngryBirdsCustom).setPlayButtonPressed(true);
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_EXIT":
               AngryBirdsBase.singleton.popupManager.openPopup(new PopupLogout());
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_CREDITS":
               this.enterCredits();
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_MUTE":
               (AngryBirdsBase.singleton as AngryBirdsCustom).toggleSoundsEnabled();
               _loc5_ = (AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
               mContainer.getItemByName("MovieClip_SoundOff").setVisibility(!_loc5_);
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "BUTTON_FULLSCREEN":
               (AngryBirdsBase.singleton as AngryBirdsCustom).getHeight();
               SoundEngine.playSound("Menu_Confirm");
         }
      }
      
      override protected function updateMuteButtonState() : void
      {
         var _loc1_:Boolean = (AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
         mContainer.getItemByName("MovieClip_SoundOff").setVisibility(_loc1_);
         SoundEngine.playSound("Menu_Confirm");
      }
      
      private function updateSoundsButtonState() : void
      {
         var _loc1_:Boolean = (AngryBirdsBase.singleton as AngryBirdsCustom).soundsEnabled;
         mContainer.getItemByName("MovieClip_SoundOff").setVisibility(!_loc1_);
      }
      
      private function setLanguageSelected(param1:UIButtonRovio) : void
      {
         var _loc3_:UIComponentRovio = null;
         var _loc2_:String = param1.mName.substr("ScrollItem_".length);
         this.updateLanguage(_loc2_);
         if(this.mSelectedLanguage)
         {
            for each(_loc3_ in (mContainer.getItemByName("Container_LanguageSelection") as UIContainerRovio).mItems)
            {
               if(_loc3_ is UIButtonRovio)
               {
                  if(_loc3_.mName == this.mSelectedLanguage.mName)
                  {
                     (_loc3_ as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc3_.setEnabled(true);
                  }
               }
            }
         }
         param1.setEnabled(false);
         param1.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         this.mSelectedLanguage = param1;
         this.mLanguageScroller.selectedButtonName = param1.mName;
      }
      
      private function scrollLanguage(param1:int) : void
      {
         if(param1 != 0)
         {
            this.mLanguageScroller.scroll(param1);
            this.updateArrowGraphicsLanguage();
         }
      }
      
      private function enterCredits() : void
      {
         var _loc1_:LevelManager = (AngryBirdsBase.singleton as AngryBirdsCustom).levelManager;
         _loc1_.loadLevel(_loc1_.getValidLevelId(mouseOver.SCROLLABLE_LEVEL_NAME));
         (AngryBirdsBase.singleton as AngryBirdsCustom).setNextState(StateLevelLoadCreditsCustom.STATE_NAME);
         AngryBirdsBase.singleton.popupManager.closeAllPopups();
      }
      
      private function scrollToLanguageStartingWithLetter(param1:uint) : void
      {
         var _loc6_:Language = null;
         var _loc2_:String = String.fromCharCode(param1);
         var _loc3_:int = 0;
         var _loc4_:Language = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.mLanguageScroller.data.length)
         {
            if((_loc6_ = this.mLanguageScroller.data[_loc5_]).nativeName.charAt(0).toLocaleLowerCase() == _loc2_.toLocaleLowerCase())
            {
               _loc3_ = _loc5_;
               _loc4_ = _loc6_;
               break;
            }
            _loc5_++;
         }
         if(!_loc4_)
         {
            return;
         }
         this.scrollLanguage(this.mLanguageScroller.targetOffset + _loc3_);
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:RegExp = /[A-Za-z]/;
         if(String.fromCharCode(param1.charCode).match(_loc2_))
         {
            this.scrollToLanguageStartingWithLetter(param1.charCode);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.scrollLanguage(-this.mLanguageScroller.points);
         }
         else if(param1.keyCode == Keyboard.DOWN)
         {
            this.scrollLanguage(this.mLanguageScroller.points);
         }
      }
      
      override protected function closePressed() : void
      {
      }
      
      override public function dispose() : void
      {
         mApplication.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         super.dispose();
      }
   }
}
