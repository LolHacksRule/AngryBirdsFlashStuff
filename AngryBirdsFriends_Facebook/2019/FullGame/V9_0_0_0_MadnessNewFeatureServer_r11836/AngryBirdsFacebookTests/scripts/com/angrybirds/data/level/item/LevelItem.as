package com.angrybirds.data.level.item
{
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
      
      public static const ITEM_TYPE_BIRD_AMMO:int = 10;
      
      public static const TEXTURE_TYPE_DEFAULT:String = "default";
      
      public static const TEXTURE_TYPE_BG:String = "background";
       
      
      protected var mItemName:String;
      
      protected var mItemType:int;
      
      protected var mDestroyedScoreInc:int;
      
      protected var mFloatingScoreFont:String;
      
      protected var mMaxStrength:int;
      
      protected var mDamageScore:int;
      
      protected var mCategory:String;
      
      protected var mFront:Boolean = false;
      
      protected var mShape:ShapeDefinition;
      
      protected var mMaterial:LevelItemMaterial;
      
      protected var mSoundResource:LevelItemSoundResource;
      
      protected var mDisableBirdPassThrough:Boolean = false;
      
      protected var mScale:Number = 1.0;
      
      protected var mParticleJSONId:String;
      
      protected var mParticleVariationCount:int;
      
      private var mLevelGoalItem:Boolean;
      
      private var mCollisionEnabled:Boolean;
      
      private var mTextureType:String;
      
      protected var mParticleAmount:int;
      
      private var mBubbleDamage:int;
      
      private var mSpecialtyAvailableAfterCollision:Boolean;
      
      private var mIsBrandedOverride:Boolean;
      
      private var mSpawnBlockDefinition:Object;
      
      private var mSpawnParticlesDefinition:Object;
      
      protected var mSpecialty:String;
      
      protected var mExplosionRadius:Number;
      
      protected var mExplosionForce:Number;
      
      protected var mExplosionDamageRadius:Number;
      
      protected var mExplosionDamage:Number;
      
      public function LevelItem(name:String, itemType:int, material:LevelItemMaterial, soundResource:LevelItemSoundResource, shape:ShapeDefinition, destroyedScoreInc:int, floatingScoreFont:String, damageScore:int, category:String, strength:int, scale:Number = 1.0, front:Boolean = false, particleJSONId:String = "", particleVariationCount:int = 1, particleAmount:int = -1, disableBirdPassThrough:Boolean = false, levelGoal:Boolean = false, collision:Boolean = true, textureType:String = null, bubbleDamage:int = 0, specialtyAvailableAfterCollision:Boolean = false)
      {
         super();
         this.mItemName = name;
         this.mItemType = itemType;
         this.mMaterial = material;
         this.mFront = front;
         this.mDisableBirdPassThrough = disableBirdPassThrough;
         this.mSoundResource = soundResource;
         this.mShape = shape;
         this.mDestroyedScoreInc = destroyedScoreInc;
         this.mFloatingScoreFont = floatingScoreFont;
         this.mParticleAmount = particleAmount;
         this.mMaxStrength = strength;
         if(damageScore == -1)
         {
            this.mDamageScore = this.mMaxStrength > 0 ? int(this.mMaxStrength * 10) : 0;
         }
         else
         {
            this.mDamageScore = damageScore;
         }
         this.mCategory = category;
         this.mScale = scale;
         this.mLevelGoalItem = levelGoal;
         this.mParticleJSONId = particleJSONId;
         this.mParticleVariationCount = particleVariationCount;
         this.mCollisionEnabled = collision;
         this.mTextureType = textureType == null ? TEXTURE_TYPE_DEFAULT : textureType.toLowerCase();
         this.mBubbleDamage = bubbleDamage;
         this.mSpecialtyAvailableAfterCollision = specialtyAvailableAfterCollision;
         this.mSpawnBlockDefinition = null;
         this.mSpawnParticlesDefinition = null;
         this.mIsBrandedOverride = false;
      }
      
      public function get front() : Boolean
      {
         return this.mFront;
      }
      
      public function get textureType() : String
      {
         return this.mTextureType;
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
      
      public function get maxStrength() : int
      {
         return this.mMaxStrength;
      }
      
      public function get material() : LevelItemMaterial
      {
         return this.mMaterial;
      }
      
      public function get particleJSONId() : String
      {
         return this.mParticleJSONId;
      }
      
      public function get particleVariationCount() : int
      {
         return this.mParticleVariationCount;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.mDisableBirdPassThrough;
      }
      
      public function get isLevelGoalItem() : Boolean
      {
         return this.mLevelGoalItem;
      }
      
      public function get damageScore() : int
      {
         return this.mDamageScore;
      }
      
      public function get bubbleDamage() : int
      {
         return this.mBubbleDamage;
      }
      
      public function get specialtyAvailableAfterCollision() : Boolean
      {
         return this.mSpecialtyAvailableAfterCollision;
      }
      
      public function get isBrandedOverride() : Boolean
      {
         return this.mIsBrandedOverride;
      }
      
      public function set isBrandedOverride(value:Boolean) : void
      {
         this.mIsBrandedOverride = value;
      }
      
      public function setSpawnBlockDefinition(spawnBlockDef:Object) : void
      {
         this.mSpawnBlockDefinition = spawnBlockDef;
      }
      
      public function setSpawnParticlesDefinition(spawnParticlesDef:Object) : void
      {
         this.mSpawnParticlesDefinition = spawnParticlesDef;
         if(this.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.spawnParticlesDefinition.frequencyInSeconds *= 1000;
         }
      }
      
      public function get spawnBlockDefinition() : Object
      {
         return this.mSpawnBlockDefinition;
      }
      
      public function get spawnParticlesDefinition() : Object
      {
         return this.mSpawnParticlesDefinition;
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
         if(this.itemType == ITEM_TYPE_BIRD_AMMO)
         {
            return 5;
         }
         if(this.front)
         {
            return LevelObject.Z_ORDER_FRONT;
         }
         return LevelObject.Z_ORDER_DEFAULT;
      }
      
      public function get shape() : ShapeDefinition
      {
         return this.mShape;
      }
      
      public function get soundResource() : LevelItemSoundResource
      {
         return this.mSoundResource;
      }
      
      public function set soundResource(newSoundResource:LevelItemSoundResource) : void
      {
         this.mSoundResource = newSoundResource;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.mDestroyedScoreInc;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.mFloatingScoreFont;
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
      
      public function getDamageMultiplier(targetMaterialName:String) : Number
      {
         return this.mMaterial.getDamageMultiplier(targetMaterialName);
      }
      
      public function getVelocityMultiplier(targetMaterialName:String) : Number
      {
         return this.mMaterial.getVelocityMultiplier(targetMaterialName);
      }
      
      public function get particleAmount() : int
      {
         return this.mParticleAmount;
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
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.getAnimationDefinitionsGoldenEgg();
         }
         return this.getAnimationDefinitionsBlock();
      }
      
      public function get isColliding() : Boolean
      {
         return this.mCollisionEnabled;
      }
      
      private function getAnimationDefinitionsBlock() : Array
      {
         var frames:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[LevelObject.ANIMATION_NORMAL,frames]];
      }
      
      private function getAnimationDefinitionsGoldenEgg() : Array
      {
         var frames:Array = [["1",[this.itemName]]];
         return [[LevelObject.ANIMATION_NORMAL,frames]];
      }
      
      private function getAnimationDefinitionsPig() : Array
      {
         return [[LevelObject.ANIMATION_NORMAL,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[LevelObject.ANIMATION_BLINK,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[LevelObject.ANIMATION_SCREAM,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
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
            return [[LevelObject.ANIMATION_NORMAL,[["1",[this.itemName + "_YELL"]]]],[LevelObject.ANIMATION_BLINK,[["1",[this.itemName + "_BLINK"]]]],[LevelObjectBird.ANIMATION_FLY,[["1",[this.itemName + "_YELL"]]]],[LevelObject.ANIMATION_SCREAM,[["1",[this.itemName + "_EXCITED"]]]],[LevelObjectBird.ANIMATION_FLY_SCREAM,[["1",[this.itemName + "_EXCITED"]]]],[LevelObjectBird.ANIMATION_SPECIAL,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var special:Array = this.getAnimationDefinitionsBirdSpecial();
         var normal:Array = this.getAnimationDefinitionsBirdNormal();
         var animations:Array = [[LevelObject.ANIMATION_NORMAL,normal],[LevelObject.ANIMATION_BLINK,[["1",[this.itemName + "_BLINK"]]]],[LevelObjectBird.ANIMATION_FLY,[["1",[this.itemName + "_FLYING"]]]],[LevelObject.ANIMATION_SCREAM,[["1",[this.itemName + "_YELL"]]]],[LevelObjectBird.ANIMATION_FLY_SCREAM,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(special)
         {
            animations.push([LevelObjectBird.ANIMATION_SPECIAL,special]);
         }
         return animations;
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
         if(this.itemName == "BIRD_WHITE" || this.itemName == "BIRD_YELLOW")
         {
            return [["1",[this.itemName + "_SPECIAL"]]];
         }
         if(this.itemName == "BIRD_GREEN")
         {
            return [["1",[this.itemName + "_SPECIAL"]],["2",[this.itemName + "_2"]]];
         }
         return null;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         if(this.category == "BirdAmmo" || this.category == "Birds")
         {
            return false;
         }
         if(this.maxStrength != -1 && this.damageScore > 0)
         {
            return true;
         }
         return false;
      }
      
      public function hasGraphics() : Boolean
      {
         return true;
      }
      
      public function get explosionRadius() : Number
      {
         return this.mExplosionRadius;
      }
      
      public function get explosionForce() : Number
      {
         return this.mExplosionForce;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.mExplosionDamageRadius;
      }
      
      public function get explosionDamage() : Number
      {
         return this.mExplosionDamage;
      }
      
      public function get specialty() : String
      {
         return this.mSpecialty;
      }
   }
}
