package com.angrybirds.engine.objects
{
   import com.angrybirds.data.level.item.LevelItem;
   import com.angrybirds.data.level.object.LevelObjectModel;
   import com.rovio.Box2D.Dynamics.b2World;
   import com.rovio.graphics.Animation;
   import starling.display.Sprite;
   
   public class TemporaryBlock extends LevelObjectBlock
   {
      
      public static const NAME:String = "TEMPORARY_BLOCK";
       
      
      private var mOriginalBlockType:String;
      
      public function TemporaryBlock(sprite:Sprite, animation:Animation, world:b2World, levelItem:LevelItem, levelObjectModel:LevelObjectModel, scale:Number, aParticleJSONId:String = "", aParticleVariationCount:int = 1)
      {
         super(sprite,animation,world,levelItem,levelObjectModel,scale,aParticleJSONId,aParticleVariationCount);
         this.mOriginalBlockType = levelObjectModel.type;
      }
      
      public function get originalBlockType() : String
      {
         return this.mOriginalBlockType;
      }
   }
}
