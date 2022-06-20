package com.angrybirds.popups.league
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.IPopup;
   import flash.events.MouseEvent;
   
   public class LeagueTutorialPopup extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueTutorial";
       
      
      private var mPageIndex:Number = 1;
      
      private var mPopupOnClose:IPopup;
      
      public function LeagueTutorialPopup(layerIndex:int, priority:int, data:XML = null, id:String = "AbstractPopup", popupToDisplayOnClose:IPopup = null)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Popups.Popup_LeagueTutorial[0],ID);
         this.mPopupOnClose = popupToDisplayOnClose;
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         this.updateTutorialPage();
         var friendsBar:FriendsBar = (AngryBirdsEngine.smApp as AngryBirdsFacebook).friendsBar;
         if(!friendsBar.isCurrentlyInLevel())
         {
            if(friendsBar.getCurrentScoreListDataType() != FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_LEAGUE && friendsBar.getCurrentScoreListDataType() != FriendsBar.SCORE_LIST_TYPE_LAST_WEEK_LEAGUE_UNCONCLUDED)
            {
               friendsBar.changeScoreList(FriendsBar.SCORE_LIST_TYPE_LEAGUE);
            }
         }
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         if(mContainer.mClip.btnPrevious)
         {
            mContainer.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.onPreviousClick);
         }
         if(mContainer.mClip.btnNext)
         {
            mContainer.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.onNextClick);
         }
         if(mContainer.mClip.btnCheckMark)
         {
            mContainer.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.onCheckMarkClick);
         }
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      private function onNextClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         if(this.mPageIndex < 3)
         {
            ++this.mPageIndex;
         }
         this.updateTutorialPage();
      }
      
      private function onPreviousClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Back",SoundEngine.UI_CHANNEL);
         if(this.mPageIndex > 1)
         {
            --this.mPageIndex;
         }
         this.updateTutorialPage();
      }
      
      private function onCheckMarkClick(e:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         this.updateTutorialPage();
         if(this.mPopupOnClose)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(this.mPopupOnClose);
         }
         close(false,false);
      }
      
      private function updateTutorialPage() : void
      {
         mContainer.mClip.gotoAndStop(this.mPageIndex);
         if(mContainer.mClip.btnPrevious)
         {
            mContainer.mClip.btnPrevious.visible = this.mPageIndex > 1;
            mContainer.mClip.btnPrevious.gotoAndStop(1);
            mContainer.mClip.btnPrevious.removeEventListener(MouseEvent.CLICK,this.onPreviousClick);
            mContainer.mClip.btnPrevious.addEventListener(MouseEvent.CLICK,this.onPreviousClick);
            mContainer.mClip.btnPrevious.buttonMode = true;
            mContainer.mClip.btnPrevious.useHandCursor = true;
         }
         if(mContainer.mClip.btnNext)
         {
            mContainer.mClip.btnNext.visible = this.mPageIndex < 3;
            mContainer.mClip.btnNext.gotoAndStop(1);
            mContainer.mClip.btnNext.removeEventListener(MouseEvent.CLICK,this.onNextClick);
            mContainer.mClip.btnNext.addEventListener(MouseEvent.CLICK,this.onNextClick);
            mContainer.mClip.btnNext.buttonMode = true;
            mContainer.mClip.btnNext.useHandCursor = true;
         }
         if(mContainer.mClip.btnCheckMark)
         {
            mContainer.mClip.btnCheckMark.visible = this.mPageIndex == 3;
            mContainer.mClip.btnCheckMark.gotoAndStop(1);
            mContainer.mClip.btnCheckMark.removeEventListener(MouseEvent.CLICK,this.onCheckMarkClick);
            mContainer.mClip.btnCheckMark.addEventListener(MouseEvent.CLICK,this.onCheckMarkClick);
            mContainer.mClip.btnCheckMark.buttonMode = true;
            mContainer.mClip.btnCheckMark.useHandCursor = true;
         }
      }
   }
}
