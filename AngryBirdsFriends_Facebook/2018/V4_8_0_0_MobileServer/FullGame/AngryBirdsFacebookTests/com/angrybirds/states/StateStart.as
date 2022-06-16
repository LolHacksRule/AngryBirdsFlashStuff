package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.controllers.SlowScrollController;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIMovieClipRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.utils.YouTubeVideo;
   import flash.geom.Rectangle;
   
   public class StateStart extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "LevelStartState";
       
      
      private var mStatsRequested:Boolean = false;
      
      private var mAvatarCreatorActive:Boolean = false;
      
      private var mEngineController:SlowScrollController = null;
      
      private var mIsOpenLeftMenu:Boolean = false;
      
      private var mIsOpenRightMenu:Boolean = false;
      
      private var mLeftMenuRotation:Number = 0;
      
      private var mRightMenuRotation:Number = 0;
      
      private var mLeftMenuPosY:Number = 0;
      
      private var mRightMenuPosY:Number = 0;
      
      private var mLeftMenuHeight:Number;
      
      private var mRightMenuHeight:Number;
      
      private var mLeftMenuOriginalPosY:Number;
      
      private var mRightMenuOriginalPosY:Number;
      
      private var video:YouTubeVideo;
      
      public function StateStart(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "LevelStartState")
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_LevelStart[0]);
         this.mEngineController = new SlowScrollController(AngryBirdsEngine.smLevelMain,mLevelManager);
         this.mLeftMenuHeight = (mUIView.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).height;
         this.mRightMenuHeight = (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).height;
         this.mLeftMenuOriginalPosY = mUIView.getItemByName("Button_LeftMenuOpen").y - 50;
         this.mRightMenuOriginalPosY = mUIView.getItemByName("Button_RightMenuOpen").y - 50;
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
         AngryBirdsEngine.smLevelMain.setVisible(true);
         AngryBirdsEngine.setController(this.mEngineController);
         this.mEngineController.init();
         AngryBirdsBase.singleton.playThemeMusic();
         mUIView.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsBase.getSoundsEnabled());
         mUIView.getItemByName("MovieClip_ParticlesOff").setVisibility(!AngryBirdsEngine.getParticlesEnabled());
         mUIView.getItemByName("Button_MEBuy").setVisibility(!!AngryBirdsBase.singleton.dataModel.userProgress.mightyEagleBought ? false : true);
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         this.mLeftMenuOriginalPosY = mUIView.getItemByName("Button_LeftMenuOpen").y - 50;
         this.mRightMenuOriginalPosY = mUIView.getItemByName("Button_RightMenuOpen").y - 50;
         this.updateMenuButtons(deltaTime);
         if(!this.mAvatarCreatorActive)
         {
            AngryBirdsEngine.controller.update(deltaTime);
         }
      }
      
      private function updateMenuButtons(deltaTime:Number) : void
      {
         (mUIView.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(mUIView.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).width,this.mLeftMenuHeight + 20 - (this.mLeftMenuHeight - this.mLeftMenuPosY));
         (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).mClip.scrollRect = new Rectangle(0,0,(mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).width,this.mRightMenuHeight + 20 - (this.mRightMenuHeight - this.mRightMenuPosY));
         if(this.mIsOpenLeftMenu)
         {
            (mUIView.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(true);
            if(this.mLeftMenuRotation < 90)
            {
               this.mLeftMenuRotation += 0.3 * deltaTime;
            }
            if(this.mLeftMenuRotation > 90)
            {
               this.mLeftMenuRotation = 90;
            }
            if(this.mLeftMenuPosY < this.mLeftMenuHeight)
            {
               this.mLeftMenuPosY += 0.5 * deltaTime;
            }
            if(this.mLeftMenuPosY > this.mLeftMenuHeight)
            {
               this.mLeftMenuPosY = this.mLeftMenuHeight;
            }
         }
         else
         {
            if(this.mLeftMenuRotation > 0)
            {
               this.mLeftMenuRotation -= 0.3 * deltaTime;
            }
            if(this.mLeftMenuRotation < 0)
            {
               this.mLeftMenuRotation = 0;
            }
            if(this.mLeftMenuPosY > 0)
            {
               this.mLeftMenuPosY -= 0.5 * deltaTime;
            }
            if(this.mLeftMenuPosY < 0)
            {
               (mUIView.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).setVisibility(false);
               this.mLeftMenuPosY = 0;
            }
         }
         if(this.mIsOpenRightMenu)
         {
            (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(true);
            if(this.mRightMenuRotation < 180)
            {
               this.mRightMenuRotation += 0.5 * deltaTime;
               (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y - 0.5 * deltaTime;
            }
            if(this.mRightMenuRotation > 180)
            {
               this.mRightMenuRotation = 180;
            }
            if(this.mRightMenuPosY < this.mRightMenuHeight)
            {
               this.mRightMenuPosY += 0.5 * deltaTime;
            }
            if(this.mRightMenuPosY > this.mRightMenuHeight)
            {
               this.mRightMenuPosY = this.mRightMenuHeight;
            }
         }
         else
         {
            if(this.mRightMenuRotation > 0)
            {
               this.mRightMenuRotation -= 0.5 * deltaTime;
               (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y + 0.5 * deltaTime;
            }
            if(this.mRightMenuRotation < 0)
            {
               this.mRightMenuRotation = 0;
            }
            if(this.mRightMenuPosY > 0)
            {
               this.mRightMenuPosY -= 0.5 * deltaTime;
            }
            if(this.mRightMenuPosY < 0)
            {
               (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).setVisibility(false);
               this.mRightMenuPosY = 0;
            }
         }
         (mUIView.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
         (mUIView.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
         (mUIView.getItemByName("Button_LeftMenuOpen") as UIButtonRovio).mClip.MovieClip_LeftMenuImage.rotation = this.mLeftMenuRotation;
         (mUIView.getItemByName("Button_RightMenuOpen") as UIButtonRovio).mClip.MovieClip_RightMenuImage.rotation = this.mRightMenuRotation;
         (mUIView.getItemByName("Container_MenuLeftButtons") as UIContainerRovio).y = this.mLeftMenuOriginalPosY - this.mLeftMenuPosY;
         (mUIView.getItemByName("Container_MenuRightButtons") as UIContainerRovio).y = this.mRightMenuOriginalPosY - this.mRightMenuPosY;
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("Button_Play") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.mStatsRequested = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var particlesEnabled:* = false;
         var soundsEnabled:* = false;
         switch(eventName)
         {
            case "OPEN_LEFT_MENU":
               if(this.mIsOpenLeftMenu)
               {
                  this.mIsOpenLeftMenu = false;
               }
               else
               {
                  this.mIsOpenLeftMenu = true;
               }
               break;
            case "OPEN_RIGHT_MENU":
               if(this.mIsOpenRightMenu)
               {
                  this.mIsOpenRightMenu = false;
               }
               else
               {
                  this.mIsOpenRightMenu = true;
               }
               break;
            case "PLAY_LEVEL":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateEpisodeSelection.STATE_NAME);
               break;
            case "OPEN_MENU":
               mUIView.setItemVisibility("Container_MenuButtons",!mUIView.getItemByName("Container_MenuButtons").visible);
               break;
            case "OPEN_AVATAR_CREATOR":
               break;
            case "TOGGLE_SOUNDS":
               break;
            case "TOGGLE_PARTICLES":
               particlesEnabled = !AngryBirdsEngine.getParticlesEnabled();
               AngryBirdsEngine.setParticlesEnabled(particlesEnabled);
               mUIView.getItemByName("MovieClip_ParticlesOff").setVisibility(!particlesEnabled);
               break;
            case "FULLSCREEN_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               AngryBirdsBase.singleton.toggleFullScreen();
               break;
            case "OPEN_CREDITS":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               break;
            case "CREDITS_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               setNextState(StateCredits.STATE_NAME);
               this.mIsOpenLeftMenu = false;
               break;
            case "SOUNDS_BUTTON":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
               soundsEnabled = !AngryBirdsBase.getSoundsEnabled();
               AngryBirdsBase.setSoundsEnabled(soundsEnabled);
               if(soundsEnabled)
               {
                  AngryBirdsBase.singleton.playThemeMusic();
               }
               mUIView.getItemByName("MovieClip_SoundsOff").setVisibility(!soundsEnabled);
               break;
            case "POPUP_CREDITS_CLOSE":
               break;
            case "ME_POPUP_VIDEO":
               if(this.video == null)
               {
                  this.video = new YouTubeVideo("http://www.youtube.com/v/-eyig_V-_5o");
                  (mUIView.getItemByName("MovieClip_YouTubeArea") as UIMovieClipRovio).changeMovieClip(this.video);
                  (mUIView.getItemByName("MovieClip_YouTubeArea") as UIMovieClipRovio).setVisibility(true);
               }
         }
      }
   }
}
