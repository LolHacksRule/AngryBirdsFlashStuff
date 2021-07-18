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
      
      public var mHealthMax:Number;
      
      public function LevelItem(aName:String, aItemType:int, material:LevelItemMaterial, resourcePathsSound:LevelItemResourcePathSound, shape:LevelItemShape, newScore:Number, category:String, thumbnailScale:Number, newHealth:Number)
      {
         super();
         this.mItemName = aName;
         this.mItemType = aItemType;
         this.mValues = new Array();
         this.mValues[MATERIAL_OBJECT] = material;
         this.mValues[RESOURCE_PATH_SOUND_OBJECT] = resourcePathsSound;
         this.mValues[SHAPE_OBJECT] = shape;
         this.mScore = newScore;
         this.mCategory = category;
         this.mThumbnailScale = thumbnailScale;
         if(this.mThumbnailScale <= 0)
         {
            this.mThumbnailScale = 1;
         }
         this.mHealthMax = newHealth;
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
