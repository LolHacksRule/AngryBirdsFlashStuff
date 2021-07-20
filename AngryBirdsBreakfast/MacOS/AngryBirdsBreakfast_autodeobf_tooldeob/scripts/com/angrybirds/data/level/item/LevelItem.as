package com.angrybirds.data.level.item
{
   import com.rovio.utils.Integer;
   import com.angrybirds.engine.objects.LevelObjectAnimal;
   import com.angrybirds.engine.objects.LevelObject;
   import com.angrybirds.engine.objects.LevelObjectBird;
   
   public class LevelItem
   {
      
      public static const ITEM_TYPE_BORDER:int = 0;
      
      public static const ITEM_TYPE_TEXTURE:int = 1;
      
      public static const ITEM_TYPE_MISC:int = 2;
      
      public static const ITEM_TYPE_BLOCK:int = 3;
      
      public static const ITEM_TYPE_PIG:int = 5;
      
      public static const ITEM_TYPE_BIRD:int = 6;
      
      public static const ITEM_TYPE_MIGHTY_EAGLE:int = 7;
      
      public static const ITEM_TYPE_SARDINE:int = 8;
      
      public static const ITEM_TYPE_PARTICLE:int = 9;
       
      
      protected var mItemName:String;
      
      protected var mItemType:int;
      
      protected var mScore:Integer;
      
      protected var mCategory:String;
      
      protected var mHealthMax:Number;
      
      protected var mFront:Boolean = false;
      
      protected var mShape:ShapeDefinition;
      
      protected var mMaterial:LevelItemMaterial;
      
      protected var mSoundResource:LevelItemSoundResource;
      
      protected var mScale:Number = 1.0;
      
      protected var mParticleJSONId:String;
      
      protected var mParticleVariationCount:int;
      
      public function LevelItem(param1:String, param2:int, param3:LevelItemMaterial, param4:LevelItemSoundResource, param5:ShapeDefinition, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         super();
         this.mItemName = param1;
         this.mItemType = param2;
         this.mMaterial = param3;
         this.mFront = param10;
         this.mSoundResource = param4;
         this.mShape = param5;
         this.mScore = new Integer(param6);
         this.mCategory = param7;
         this.mHealthMax = param8;
         this.mScale = param9;
         this.mParticleJSONId = param11;
         this.mParticleVariationCount = param12;
      }
      
      public function get front() : Boolean
      {
         return this.mFront;
      }
      
      public function get itemType() : int
      {
         return this.mItemType;
      }
      
      public function get itemName() : String
      {
         return this.mItemName;
      }
      
      public function get category() : String
      {
         return this.mCategory;
      }
      
      public function get healthMax() : Number
      {
         return this.mHealthMax;
      }
      
      public function get particleJSONId() : String
      {
         return this.mParticleJSONId;
      }
      
      public function get particleVariationCount() : int
      {
         return this.mParticleVariationCount;
      }
      
      public function getItemWidth() : int
      {
         return this.shape.getWidth();
      }
      
      public function getItemHeight() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.mMaterial.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.mMaterial.bodyType;
      }
      
      public function getItemColors() : Number
      {
         return this.mMaterial.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.mMaterial.defence))
         {
            return this.mMaterial.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.mMaterial.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.mMaterial.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.mMaterial.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == ITEM_TYPE_BIRD)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : ShapeDefinition
      {
         return this.mShape;
      }
      
      public function get soundResource() : LevelItemSoundResource
      {
         return this.mSoundResource;
      }
      
      public function get score() : int
      {
         return this.mScore.getValue();
      }
      
      public function get scale() : Number
      {
         return this.mScale;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.mMaterial.isStatic();
      }
      
      public function get materialName() : String
      {
         return this.mMaterial.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.mMaterial.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.mMaterial.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.getAnimationDefinitionsBird();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.getAnimationDefinitionsPig();
         }
         return this.getAnimationDefinitionsBlock();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function getAnimationDefinitionsBlock() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[LevelObject.ANIMATION_NORMAL,_loc1_]];
      }
      
      private function getAnimationDefinitionsPig() : Array
      {
         return [[LevelObject.ANIMATION_NORMAL,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[LevelObjectAnimal.ANIMATION_BLINK,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[LevelObjectAnimal.ANIMATION_SCREAM,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function getAnimationDefinitionsBird() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[LevelObject.ANIMATION_NORMAL,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[LevelObject.ANIMATION_NORMAL,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[LevelObject.ANIMATION_NORMAL,[["1",[this.itemName + "_YELL"]]]],[LevelObjectAnimal.ANIMATION_BLINK,[["1",[this.itemName + "_BLINK"]]]],[LevelObjectBird.ANIMATION_FLY,[["1",[this.itemName + "_YELL"]]]],[LevelObjectAnimal.ANIMATION_SCREAM,[["1",[this.itemName + "_EXCITED"]]]],[LevelObjectBird.ANIMATION_FLY_SCREAM,[["1",[this.itemName + "_EXCITED"]]]],[LevelObjectBird.ANIMATION_SPECIAL,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.getAnimationDefinitionsBirdSpecial();
         var _loc2_:Array = this.getAnimationDefinitionsBirdNormal();
         var _loc3_:Array = [[LevelObject.ANIMATION_NORMAL,_loc2_],[LevelObjectAnimal.ANIMATION_BLINK,[["1",[this.itemName + "_BLINK"]]]],[LevelObjectBird.ANIMATION_FLY,[["1",[this.itemName + "_FLYING"]]]],[LevelObjectAnimal.ANIMATION_SCREAM,[["1",[this.itemName + "_YELL"]]]],[LevelObjectBird.ANIMATION_FLY_SCREAM,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([LevelObjectBird.ANIMATION_SPECIAL,_loc1_]);
         }
         return _loc3_;
      }
      
      private function getAnimationDefinitionsBirdNormal() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function getAnimationDefinitionsBirdSpecial() : Array
      {
         if(this.itemName == "BIRD_BLACK")
         {
            return [["1",[this.itemName + "_SPECIAL",this.itemName + "_SPECIAL_2",this.itemName + "_SPECIAL_3"],[900,900,5000]]];
         }
         if(this.itemName == "BIRD_WHITE" || this.itemName == "BIRD_YELLOW" || this.itemName == "BIRD_GREEN")
         {
            return [["1",[this.itemName + "_SPECIAL"]]];
         }
         return null;
      }
   }
}
