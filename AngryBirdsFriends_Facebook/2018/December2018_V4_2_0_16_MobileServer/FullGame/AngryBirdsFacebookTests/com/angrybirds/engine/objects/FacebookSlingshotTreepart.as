package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class FacebookSlingshotTreepart extends LevelObject
   {
       
      
      public function FacebookSlingshotTreepart(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var filterData:b2FilterData = super.createFilterData();
         filterData.maskBits = 0;
         return filterData;
      }
   }
}
