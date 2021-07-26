package com.angrybirds.engine
{
   import com.angrybirds.data.level.LevelModel;
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.LevelItemBirdSpace;
   import com.angrybirds.data.level.item.LevelItemSpaceLua;
   import com.angrybirds.engine.objects.LevelObjectManager;
   import starling.display.Sprite;
   
   public class LevelSlingshotSpace extends LevelSlingshot
   {
       
      
      public function LevelSlingshotSpace(newLevelMain:LevelMain, level:LevelModel, sprite:Sprite)
      {
         super(newLevelMain,level,sprite,!!level.hasGround ? Number(1) : Number(0.5),level.hasGround,level.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(levelItem:LevelItem, x:Number, y:Number, angle:Number, sprite:Sprite, index:int) : LevelSlingshotObject
      {
         if(levelItem is LevelItemBirdSpace)
         {
            return new LevelSlingshotObjectSpace(this,sprite,levelItem.itemName,levelItem,x,y,angle,index);
         }
         return super.initializeSlingshotObject(levelItem,x,y,angle,sprite,index);
      }
      
      override protected function showScoreForRemainingBird(bird:LevelSlingshotObject, score:int) : void
      {
         var showScore:Boolean = true;
         var levelItem:LevelItemSpaceLua = bird.levelItem as LevelItemSpaceLua;
         if(levelItem && levelItem.spriteScore)
         {
            mLevelMain.objects.addObject(levelItem.spriteScore,bird.x,bird.y - 3,0,LevelObjectManager.ID_NEXT_FREE,false,false,false,3,true);
            showScore = false;
         }
         mLevelMain.addScore(score,ScoreCollector.SCORE_TYPE_EXTRA_BIRD,showScore,bird.x,bird.y - 3,-9999,levelItem.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(bird:LevelSlingshotObject) : void
      {
         var i:int = 0;
         var particlesDestroyed:String = null;
         var levelItem:LevelItemSpaceLua = bird.levelItem as LevelItemSpaceLua;
         if(levelItem && levelItem.particlesDestroyedCount > 0)
         {
            for(i = 0; i < levelItem.particlesDestroyedCount; i++)
            {
               particlesDestroyed = levelItem.getParticleDestroyed(i);
               if(particlesDestroyed)
               {
                  mLevelMain.objects.addObject(particlesDestroyed,bird.x,bird.y,0,LevelObjectManager.ID_NEXT_FREE,false,true,false,1,true);
               }
            }
         }
      }
   }
}
