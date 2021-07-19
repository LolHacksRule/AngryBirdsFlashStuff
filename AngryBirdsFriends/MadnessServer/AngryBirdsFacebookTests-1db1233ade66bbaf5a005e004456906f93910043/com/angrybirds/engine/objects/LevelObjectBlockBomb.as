package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class LevelObjectBlockBomb extends LevelObjectBlock
   {
       
      
      protected var mExplosionType:int = 0;
      
      public function LevelObjectBlockBomb(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, explosionType:int)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
         this.mExplosionType = explosionType;
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         if(itemName.toUpperCase() == "MISC_WHITE_BIRD_EGG" || itemName.toUpperCase() == "MISC_FOOD_EGG")
         {
            filterData.categoryBits = WHITE_BIRD_EGG_BIT_CATEGORY;
            filterData.maskBits = 65535 & ~BIRD_BIT_CATEGORY;
         }
         return filterData;
      }
      
      override public function updateBeforeRemoving(updateManager:ILevelObjectUpdateManager, countScore:Boolean) : void
      {
         super.updateBeforeRemoving(updateManager,countScore);
         if(updateManager)
         {
            updateManager.addExplosion(this.mExplosionType,getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
   }
}
