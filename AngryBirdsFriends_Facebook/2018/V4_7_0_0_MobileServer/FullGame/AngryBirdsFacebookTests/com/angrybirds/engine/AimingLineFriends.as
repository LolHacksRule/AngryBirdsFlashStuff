package com.angrybirds.engine
{
   import com.angrybirds.engine.controllers.FacebookGameLogicController;
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
   }
}
