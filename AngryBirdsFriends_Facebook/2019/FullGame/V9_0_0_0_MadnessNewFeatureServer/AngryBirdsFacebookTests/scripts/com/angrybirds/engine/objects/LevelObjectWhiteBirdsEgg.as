package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectWhiteBirdsEgg extends LevelObjectBlock
   {
       
      
      public function LevelObjectWhiteBirdsEgg(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, explosionType:int)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = null;
         filterData = super.createFilterData();
         filterData.categoryBits = WHITE_BIRD_EGG_BIT_CATEGORY;
         filterData.maskBits = 65535;
         return filterData;
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         super.updateBeforeRemoving(updateManager,countScore);
         if(updateManager)
         {
            updateManager.addExplosion(LevelExplosion.TYPE_WHITE_BIRD_EGG,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function collidedWith(collidee:LevelObjectBase) : void
      {
         if(!(collidee is LevelObjectBird))
         {
            health = 0;
         }
      }
      
      override public function applyDamage(damage:Number, updateManager:ILevelObjectUpdateManager, damagingObject:LevelObject, addScore:Boolean = true, ignoreDefence:Boolean = false) : Number
      {
         if(damagingObject is LevelObjectBird)
         {
            return health;
         }
         return super.applyDamage(damage,updateManager,damagingObject,addScore,ignoreDefence);
      }
   }
}
