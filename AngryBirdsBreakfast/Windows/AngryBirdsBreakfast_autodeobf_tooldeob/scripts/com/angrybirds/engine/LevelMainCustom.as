package com.angrybirds.engine
{
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.DynamicContentManager;
   import com.rovio.graphics.AnimationManager;
   import com.angrybirds.data.level.item.LevelItemManager;
   import com.angrybirds.data.level.item.LevelItemManagerCustom;
   import com.angrybirds.engine.camera.LevelCamera;
   import com.angrybirds.engine.camera.LevelCameraCustom;
   import com.graphics.AnimationManagerCustom;
   import com.graphics.DynamicContentManagerCustom;
   import com.angrybirds.data.level.theme.LevelThemeBackgroundManager;
   import com.angrybirds.data.level.theme.LevelThemeBackground;
   import com.angrybirds.engine.objects.LevelObjectManagerCustom;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import starling.display.Sprite;
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.LevelManager;
   import flash.display.Stage;
   
   public class LevelMainCustom extends LevelMain
   {
       
      
      public function LevelMainCustom(param1:Stage, param2:LevelItemManager, param3:LevelThemeBackgroundManager, param4:LevelManager)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         var _loc2_:String = LevelThemeBackground.GROUND_TYPE;
         return new LevelObjectManagerCustom(this,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeLevelCamera(param1:LevelModel) : LevelCamera
      {
         return new LevelCameraCustom(this,param1);
      }
      
      override protected function initializeLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingShotCustom(this,param1,new Sprite());
      }
      
      override protected function initThemeSoundsManager() : DynamicContentManager
      {
         return null;
      }
      
      override protected function initCutSceneManager() : DynamicContentManager
      {
         return new DynamicContentManagerCustom(stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",mLevelManager,LevelItemManagerCustom(mLevelItemManager));
      }
      
      override protected function initAnimationManager(param1:TextureManager) : AnimationManager
      {
         return new AnimationManagerCustom(param1);
      }
   }
}
