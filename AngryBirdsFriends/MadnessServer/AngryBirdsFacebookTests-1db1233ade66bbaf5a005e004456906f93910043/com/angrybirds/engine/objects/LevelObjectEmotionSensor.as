package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.item.ShapeDefinition;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import starling.display.Sprite;
   
   public class LevelObjectEmotionSensor extends LevelObjectSensor
   {
       
      
      protected var mOwner:IEmotionSensorOwner;
      
      public function LevelObjectEmotionSensor(sprite:Sprite, world:b2World, levelItem:LevelItem, shapeDefinition:ShapeDefinition, levelObjectModel:LevelObjectModel)
      {
         super(sprite,world,levelItem,shapeDefinition,levelObjectModel);
      }
      
      public function set owner(owner:IEmotionSensorOwner) : void
      {
         this.mOwner = owner;
      }
      
      public function get owner() : IEmotionSensorOwner
      {
         return this.mOwner;
      }
      
      override public function collidedWith(object:LevelObjectBase) : void
      {
         super.collidedWith(object);
         if(this.mOwner)
         {
            this.mOwner.objectEnteredSensor(object,this);
         }
      }
      
      override public function collisionEnded(object:LevelObjectBase) : void
      {
         super.collisionEnded(object);
         if(this.mOwner)
         {
            this.mOwner.objectExitedSensor(object,this);
         }
      }
   }
}
