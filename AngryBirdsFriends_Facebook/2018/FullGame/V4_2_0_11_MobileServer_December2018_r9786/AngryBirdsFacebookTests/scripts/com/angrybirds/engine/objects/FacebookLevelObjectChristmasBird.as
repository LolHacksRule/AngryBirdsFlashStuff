package com.angrybirds.engine.objects
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.angrybirds.engine.FacebookLevelSlingshotEffect;
   import com.angrybirds.engine.LevelMain;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectChristmasBird extends LevelObjectBirdBlack
   {
       
      
      private var mFuse:FacebookLevelSlingshotEffect;
      
      public function FacebookLevelObjectChristmasBird(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number = 1.0, tryToScream:Boolean = true)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,tryToScream);
         var pivotX:Number = -sprite.width / scale / 2;
         var pivotY:Number = -sprite.height / scale / 2;
         this.mFuse = new FacebookLevelSlingshotEffect("BIRD_CHRISTMAS_FUSE",sprite,AngryBirdsEngine.smLevelMain,pivotX,pivotY,50,true);
         this.mFuse.setCenteredVertically(true);
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         this.mFuse.update(deltaTimeMilliSeconds);
      }
      
      override protected function addTrail(updateManager:ILevelObjectUpdateManager) : Boolean
      {
         super.addTrail(updateManager);
         var birdX:Number = x * LevelMain.PIXEL_TO_B2_SCALE;
         var birdY:Number = y * LevelMain.PIXEL_TO_B2_SCALE;
         return true;
      }
   }
}
