package com.angrybirds.engine
{
   import com.angrybirds.data.level.item.LevelItem;
   import starling.display.Sprite;
   
   public class LevelSlingshotObjectSpace extends LevelSlingshotObject
   {
       
      
      public function LevelSlingshotObjectSpace(newSlingshot:LevelSlingshot, aSprite:Sprite, newName:String, levelItem:LevelItem, newX:Number, newY:Number, angle:Number = 0.0, index:int = -1)
      {
         super(newSlingshot,aSprite,newName,levelItem,newX,newY,angle,index);
         scale = levelItem.scale;
      }
   }
}
