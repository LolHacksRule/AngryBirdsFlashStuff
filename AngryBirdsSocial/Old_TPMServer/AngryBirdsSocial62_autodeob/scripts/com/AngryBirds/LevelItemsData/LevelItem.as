package com.AngryBirds.LevelItemsData
{
   public class LevelItem
   {
      
      public static const ITEM_TYPE_BORDER:int = 0;
      
      public static const ITEM_TYPE_BIRD:int = 1;
      
      public static const ITEM_TYPE_BLOCK:int = 2;
      
      public static const ITEM_TYPE_PIG:int = 3;
      
      public static const ITEM_TYPE_MISC:int = 4;
      
      public static const ITEM_TYPE_TEXTURE:int = 5;
      
      public static const MATERIAL_OBJECT:int = 0;
      
      public static const RESOURCE_PATH_SOUND_OBJECT:int = 1;
      
      public static const SHAPE_OBJECT:int = 2;
       
      
      public var mItemName:String;
      
      public var mItemType:int;
      
      public var mValues:Array;
      
      public var mScore:Number;
      
      public var mCategory:String;
      
      public var mThumbnailScale:Number = 1;
      
      public function LevelItem(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemResourcePathSound, param5:LevelItemShape, param6:Number, param7:String, param8:Number)
      {
         super();
         this.mItemName = param1;
         this.mItemType = param2;
         this.mValues = new Array();
         this.mValues[MATERIAL_OBJECT] = param3;
         this.mValues[RESOURCE_PATH_SOUND_OBJECT] = param4;
         this.mValues[SHAPE_OBJECT] = param5;
         this.mScore = param6;
         this.mCategory = param7;
         this.mThumbnailScale = param8;
         if(this.mThumbnailScale <= 0)
         {
            this.mThumbnailScale = 1;
         }
      }
      
      public function getItemShapeType() : int
      {
         return LevelItemShape(this.mValues[SHAPE_OBJECT]).getShape();
      }
      
      public function getItemWidth() : int
      {
         return LevelItemShape(this.mValues[SHAPE_OBJECT]).getWidth();
      }
      
      public function getItemHeight() : int
      {
         return LevelItemShape(this.mValues[SHAPE_OBJECT]).getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.DENSITY));
      }
      
      public function getItemBodyType() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.BODY_TYPE));
      }
      
      public function getItemColors() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.COLORS));
      }
      
      public function getItemDefence() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.DEFENCE));
      }
      
      public function getItemFriction() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.FRICTION));
      }
      
      public function getItemRestitution() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.RESTITUTION));
      }
      
      public function getItemStrenght() : Number
      {
         return Number(LevelItemMaterial(this.mValues[MATERIAL_OBJECT]).getValue(LevelItemMaterial.STRENGHT));
      }
   }
}
