package com.angrybirds.engine.controllers
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelMain;
   
   public class SlowScrollController extends BasicController
   {
       
      
      protected var mTheme:String = null;
      
      protected var mFallingBirdsEnabled:Boolean = true;
      
      protected var mScrollSpeedMultiplier:Number = 1.0;
      
      public function SlowScrollController(param1:LevelMain, param2:LevelManager, param3:String = null, param4:Boolean = true)
      {
         super(param1,param2);
         this.mTheme = param3;
         this.mFallingBirdsEnabled = param4;
      }
      
      override public function init() : void
      {
         mLevelMain.initializeEmptyEnvironment(this.mTheme,this.mFallingBirdsEnabled);
         mLevelMain.camera.initSlowScroll(this.mScrollSpeedMultiplier);
      }
   }
}
