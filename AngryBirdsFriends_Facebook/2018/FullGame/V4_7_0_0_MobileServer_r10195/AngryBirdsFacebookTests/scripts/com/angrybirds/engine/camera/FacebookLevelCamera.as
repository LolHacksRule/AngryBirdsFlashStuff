package com.angrybirds.engine.camera
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.engine.LevelMain;
   
   public class FacebookLevelCamera extends LevelCamera
   {
       
      
      public function FacebookLevelCamera(aLevelMain:LevelMain, level:LevelModel, manualScaleMax:Number = 1.0)
      {
         super(aLevelMain,level,manualScaleMax);
      }
      
      public function getCastleCameraBorderRight() : Number
      {
         return castleCamera.x + SCREEN_WIDTH_B2 / castleCamera.scale / 2;
      }
      
      public function getCastleCameraBorderLeft() : Number
      {
         return castleCamera.x - SCREEN_WIDTH_B2 / castleCamera.scale / 2;
      }
      
      override public function adjustManualScale(increase:Boolean, amount:Number = 0.1) : void
      {
         if(!AngryBirdsEngine.isPaused)
         {
            super.adjustManualScale(increase,amount);
         }
      }
      
      override public function loadCameraBorders() : void
      {
         super.loadCameraBorders();
         mCameraBorderLeft = mSlingshotCamera.x - SCREEN_WIDTH_B2 / 2 / mSlingshotCamera.scale;
         mCameraBorderRight = mCastleCamera.x + SCREEN_WIDTH_B2 / 2 / mCastleCamera.scale;
      }
      
      public function get cameraBorderTop() : Number
      {
         return mCameraBorderTop;
      }
      
      public function get cameraBorderBottom() : Number
      {
         return mCameraBorderBottom;
      }
   }
}
