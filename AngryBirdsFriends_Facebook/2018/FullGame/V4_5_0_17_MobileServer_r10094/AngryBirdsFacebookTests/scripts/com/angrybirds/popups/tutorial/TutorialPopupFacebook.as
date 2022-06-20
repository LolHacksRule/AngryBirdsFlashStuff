package com.angrybirds.popups.tutorial
{
   import com.angrybirds.popup.tutorial.ITutorialTitleSolver;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import com.rovio.ui.popup.event.PopupEvent;
   import data.user.FacebookUserProgress;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TutorialPopupFacebook extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var mTutorialClip:MovieClip;
      
      protected var mTutorialName:String;
      
      protected var mTitleSolver:ITutorialTitleSolver;
      
      protected var mFirstRun:Boolean;
      
      public function TutorialPopupFacebook(layerIndex:int, priority:int, tutorialClip:MovieClip, name:String, titleSolver:ITutorialTitleSolver, firstRun:Boolean = true)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Popups.Popup_Tutorial[0],ID);
         this.mTutorialName = name;
         this.mTitleSolver = titleSolver;
         this.mFirstRun = firstRun;
         this.mTutorialClip = tutorialClip;
         this.mTutorialClip.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : FacebookUserProgress
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress;
      }
      
      override protected function init() : void
      {
         super.init();
         var container:DisplayObjectContainer = mContainer.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         container.addChildAt(this.mTutorialClip,container.numChildren - 1);
         this.mTutorialClip.gotoAndPlay(1);
         if(this.mTutorialClip.ButtonEasterEgg5)
         {
            if(userProgress.isEggUnlocked("1000-5"))
            {
               this.mTutorialClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.mTutorialClip.ButtonEasterEgg5.visible = true;
               this.mTutorialClip.ButtonEasterEgg5.buttonMode = true;
               this.mTutorialClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.onEasterEggClick);
            }
         }
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         mContainer.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(useTransition);
      }
      
      override protected function hide(useTransition:Boolean = false, waitForAnimationsToStop:Boolean = false) : void
      {
         var container:DisplayObjectContainer = mContainer.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         container.removeChild(this.mTutorialClip);
         mContainer.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(useTransition,waitForAnimationsToStop);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         super.onUIInteraction(eventIndex,eventName,component);
         switch(eventName.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               dispatchEvent(new PopupEvent(PopupEvent.CLOSE,this));
         }
      }
      
      private function onEasterEggClick(e:MouseEvent) : void
      {
         userProgress.setEggUnlocked("1000-5");
         this.mTutorialClip.ButtonEasterEgg5.visible = false;
      }
   }
}
