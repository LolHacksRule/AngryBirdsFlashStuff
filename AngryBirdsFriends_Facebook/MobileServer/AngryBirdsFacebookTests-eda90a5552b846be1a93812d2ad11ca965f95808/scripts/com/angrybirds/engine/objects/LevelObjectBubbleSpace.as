package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBubbleSpace extends LevelObjectBlockSpace
   {
       
      
      private var mIsPushedByForce:Boolean = false;
      
      public function LevelObjectBubbleSpace(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      public function pushByForce() : void
      {
         this.mIsPushedByForce = true;
      }
      
      override public function update(deltaTimeMilliSeconds:Number, updateManager:ILevelObjectUpdateManager) : void
      {
         super.update(deltaTimeMilliSeconds,updateManager);
         if(!isMoving() && this.mIsPushedByForce)
         {
            health = 0;
         }
      }
   }
}
