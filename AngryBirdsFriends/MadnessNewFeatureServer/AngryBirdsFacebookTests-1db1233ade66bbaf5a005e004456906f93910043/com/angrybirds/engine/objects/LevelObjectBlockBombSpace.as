package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBlockBombSpace extends LevelObjectBlockSpace
   {
       
      
      protected var mPushRadius:Number;
      
      protected var mPush:Number;
      
      protected var mDamageRadius:Number;
      
      protected var mDamage:Number;
      
      public function LevelObjectBlockBombSpace(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, pushRadius:Number, push:Number, damageRadius:Number, damage:Number, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mPushRadius = pushRadius;
         this.mPush = push;
         this.mDamageRadius = damageRadius;
         this.mDamage = damage;
      }
      
      override protected function explodeBeforeRemoving(updateManager:ILevelObjectUpdateManager) : void
      {
         if(updateManager)
         {
            updateManager.addCustomExplosion(getBody().GetPosition().x,getBody().GetPosition().y,this.mPushRadius,this.mPush,this.mDamageRadius,this.mDamage);
         }
      }
   }
}
