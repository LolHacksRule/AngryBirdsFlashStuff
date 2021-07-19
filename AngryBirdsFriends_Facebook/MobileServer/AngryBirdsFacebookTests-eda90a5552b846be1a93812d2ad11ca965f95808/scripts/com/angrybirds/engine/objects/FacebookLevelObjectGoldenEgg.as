package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import data.user.FacebookUserProgress;
   import starling.display.Sprite;
   
   public class FacebookLevelObjectGoldenEgg extends LevelObject
   {
       
      
      public function FacebookLevelObjectGoldenEgg(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         if(updateManager)
         {
            (AngryBirdsBase.singleton.dataModel.userProgress as FacebookUserProgress).setEggUnlocked("1000-" + itemName.split("_")[3]);
            super.updateBeforeRemoving(updateManager,countScore);
         }
      }
   }
}
