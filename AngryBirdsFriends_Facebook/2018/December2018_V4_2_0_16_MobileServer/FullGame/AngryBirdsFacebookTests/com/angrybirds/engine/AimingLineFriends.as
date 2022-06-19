package com.angrybirds.engine
{
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
   import com.angrybirds.slingshots.SlingShotType;
   import com.angrybirds.slingshots.SlingShotUIManager;
   import starling.display.Sprite;
   import starling.textures.Texture;
   
   public class AimingLineFriends extends AimingLine
   {
       
      
      private var mGamelogicController:FacebookGameLogicController;
      
      public function AimingLineFriends(gameLogicController:FacebookGameLogicController, sprite:Sprite, dotTexture:Texture, dampingStartTimeSeconds:Number, dampingPerSecond:Number)
      {
         super(sprite,dotTexture,dampingStartTimeSeconds,dampingPerSecond);
         this.mGamelogicController = gameLogicController;
      }
      
      override protected function laserSightMaxPoints() : int
      {
         switch(SlingShotUIManager.getSelectedSlingShotId())
         {
            case SlingShotType.SLING_SHOT_CHRISTMAS.identifier:
               return !!(this.mGamelogicController.levelMain as FacebookLevelMain).powerupsHandler.isSlingscopeActivated ? int(Tuner.POWERUP_LASERSIGHT_MAX_POINTS) : 5;
            default:
               return Tuner.POWERUP_LASERSIGHT_MAX_POINTS;
         }
      }
   }
}
