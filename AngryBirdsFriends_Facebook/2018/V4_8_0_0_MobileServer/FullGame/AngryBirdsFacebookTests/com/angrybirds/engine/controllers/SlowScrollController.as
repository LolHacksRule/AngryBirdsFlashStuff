package com.angrybirds.engine.controllers
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelMain;
   
   public class SlowScrollController extends BasicController
   {
       
      
      protected var mTheme:String = null;
      
      protected var mFallingBirdsEnabled:Boolean = true;
      
      protected var mScrollSpeedMultiplier:Number = 1.0;
      
      public function SlowScrollController(levelMain:LevelMain, levelManager:LevelManager, theme:String = null, enableFallingBirds:Boolean = true)
      {
         super(levelMain,levelManager);
         this.mTheme = theme;
         this.mFallingBirdsEnabled = enableFallingBirds;
      }
      
      override public function init() : void
      {
         mLevelMain.initializeEmptyEnvironment(this.mTheme,this.mFallingBirdsEnabled);
         mLevelMain.camera.initSlowScroll(this.mScrollSpeedMultiplier);
      }
   }
}
