package com.angrybirds.slingshots
{
   import com.angrybirds.engine.data.CollisionEffect;
   
   public class SlingShotDefinition
   {
      
      public static const MATERIAL_NAME_RESTITUTION:String = "restitution";
      
      public static const MATERIAL_NAME_DENSITY:String = "density";
      
      public static const MATERIAL_NAME_FRICTION:String = "friction";
      
      private static const OTHER_MATERIALS:String = "Other_Materials";
       
      
      private var mPrettyName:String;
      
      private var mIdentifier:String;
      
      private var mButtonName:String;
      
      private var mButtonBuyName:String;
      
      private var mSelectedMovieClipName:String;
      
      private var mEventName:String;
      
      private var mPurchased:Boolean;
      
      private var mAvailable:Boolean;
      
      private var mBonusDamageItemCategory:Object;
      
      private var mDescription:String;
      
      private var mGraphicName:String;
      
      private var mEffectName:String;
      
      private var mParticleName:String;
      
      private var mParticleCount:int;
      
      private var mTrailParticleCount:int;
      
      private var mIntroMovieClipName:String;
      
      private var mSoundName:String;
      
      private var mRopeColor:uint;
      
      private var mStretchSoundName:String;
      
      private var mShootSoundName:String;
      
      private var mBirdGravityFilter:int;
      
      private var mBirdMaterialCategory:Object;
      
      private var mBirdSpecialCollisionEffectData:XML;
      
      public function SlingShotDefinition(id:String, printableName:String, buttonNameString:String, selectedMovieClipName:String, buttonBuyName:String, eventNameString:String, description:String, graphicName:String, effectName:String, particleName:String, particleCount:int, trailParticleCount:int, introMovieClipName:String, soundName:String, available:Boolean, purchased:Boolean, ropeColor:uint, shootSoundName:String, stretchSoundName:String = "SlingshotStreched", birdGravityFilter:int = -1)
      {
         super();
         this.mIdentifier = id;
         this.mPrettyName = printableName;
         this.mButtonName = buttonNameString;
         this.mSelectedMovieClipName = selectedMovieClipName;
         this.mButtonBuyName = buttonBuyName;
         this.mEventName = eventNameString;
         this.mAvailable = available;
         this.mPurchased = purchased;
         this.mDescription = description;
         this.mGraphicName = graphicName;
         this.mEffectName = effectName;
         this.mParticleName = particleName;
         this.mParticleCount = particleCount;
         this.mTrailParticleCount = trailParticleCount;
         this.mIntroMovieClipName = introMovieClipName;
         this.mSoundName = soundName;
         this.mRopeColor = ropeColor;
         this.mShootSoundName = shootSoundName;
         this.mStretchSoundName = stretchSoundName;
         this.mBirdGravityFilter = birdGravityFilter;
      }
      
      public function get prettyName() : String
      {
         return this.mPrettyName;
      }
      
      public function get identifier() : String
      {
         return this.mIdentifier;
      }
      
      public function get purchased() : Boolean
      {
         return this.mPurchased;
      }
      
      public function set purchased(v:Boolean) : void
      {
         this.mPurchased = v;
         if(v == true)
         {
            this.available = true;
         }
      }
      
      public function get available() : Boolean
      {
         return this.mAvailable;
      }
      
      public function set available(v:Boolean) : void
      {
         this.mAvailable = v;
      }
      
      public function get buttonName() : String
      {
         return this.mButtonName;
      }
      
      public function get eventName() : String
      {
         return this.mEventName;
      }
      
      public function get buttonBuyName() : String
      {
         return this.mButtonBuyName;
      }
      
      public function get selectedMovieClipName() : String
      {
         return this.mSelectedMovieClipName;
      }
      
      public function addItemDamageFromXML(list:XML) : void
      {
         var birdSpecificData:XML = null;
         if(this.mBonusDamageItemCategory)
         {
            return;
         }
         this.mBonusDamageItemCategory = new Object();
         this.mBonusDamageItemCategory["Wood"] = list.@Material_Block_Wood;
         this.mBonusDamageItemCategory["Stone"] = list.@Material_Block_Stone;
         this.mBonusDamageItemCategory["Ice"] = list.@Material_Block_Ice;
         this.mBonusDamageItemCategory[OTHER_MATERIALS] = list.@Other_Materials;
         for each(birdSpecificData in list.Bird_Specific)
         {
            this.mBonusDamageItemCategory[birdSpecificData.@id] = new Object();
            if(birdSpecificData.hasOwnProperty("@Material_Block_Wood"))
            {
               this.mBonusDamageItemCategory[birdSpecificData.@id]["Wood"] = birdSpecificData.@Material_Block_Wood;
            }
            if(birdSpecificData.hasOwnProperty("@Material_Block_Stone"))
            {
               this.mBonusDamageItemCategory[birdSpecificData.@id]["Stone"] = birdSpecificData.@Material_Block_Stone;
            }
            if(birdSpecificData.hasOwnProperty("@Material_Block_Ice"))
            {
               this.mBonusDamageItemCategory[birdSpecificData.@id]["Ice"] = birdSpecificData.@Material_Block_Ice;
            }
            if(birdSpecificData.hasOwnProperty("@Other_Materials"))
            {
               this.mBonusDamageItemCategory[birdSpecificData.@id][OTHER_MATERIALS] = birdSpecificData.@Other_Materials;
            }
         }
      }
      
      public function addBirdMaterialFromXML(list:XML) : void
      {
         var birdSpecificData:XML = null;
         if(this.mBirdMaterialCategory)
         {
            return;
         }
         this.mBirdMaterialCategory = new Object();
         if(list.hasOwnProperty("@restitution"))
         {
            this.mBirdMaterialCategory[MATERIAL_NAME_RESTITUTION] = list.@restitution;
         }
         if(list.hasOwnProperty("@density"))
         {
            this.mBirdMaterialCategory[MATERIAL_NAME_DENSITY] = list.@density;
         }
         if(list.hasOwnProperty("@friction"))
         {
            this.mBirdMaterialCategory[MATERIAL_NAME_FRICTION] = list.@friction;
         }
         for each(birdSpecificData in list.Bird_Specific)
         {
            this.mBirdMaterialCategory[birdSpecificData.@id] = new Object();
            if(birdSpecificData.hasOwnProperty("@restitution"))
            {
               this.mBirdMaterialCategory[birdSpecificData.@id][MATERIAL_NAME_RESTITUTION] = birdSpecificData.@restitution;
            }
            if(birdSpecificData.hasOwnProperty("@density"))
            {
               this.mBirdMaterialCategory[birdSpecificData.@id][MATERIAL_NAME_DENSITY] = birdSpecificData.@density;
            }
            if(birdSpecificData.hasOwnProperty("@friction"))
            {
               this.mBirdMaterialCategory[birdSpecificData.@id][MATERIAL_NAME_FRICTION] = birdSpecificData.@friction;
            }
         }
      }
      
      public function getBirdMaterials(birdName:String) : Object
      {
         var materialsObject:Object = new Object();
         if(!this.mBirdMaterialCategory)
         {
            return materialsObject;
         }
         if(this.mBirdMaterialCategory[birdName] && this.mBirdMaterialCategory[birdName][MATERIAL_NAME_RESTITUTION])
         {
            materialsObject[MATERIAL_NAME_RESTITUTION] = this.mBirdMaterialCategory[birdName][MATERIAL_NAME_RESTITUTION];
         }
         else if(this.mBirdMaterialCategory[MATERIAL_NAME_RESTITUTION])
         {
            materialsObject[MATERIAL_NAME_RESTITUTION] = this.mBirdMaterialCategory[MATERIAL_NAME_RESTITUTION];
         }
         if(this.mBirdMaterialCategory[birdName] && this.mBirdMaterialCategory[birdName][MATERIAL_NAME_DENSITY])
         {
            materialsObject[MATERIAL_NAME_DENSITY] = this.mBirdMaterialCategory[birdName][MATERIAL_NAME_DENSITY];
         }
         else if(this.mBirdMaterialCategory[MATERIAL_NAME_DENSITY])
         {
            materialsObject[MATERIAL_NAME_DENSITY] = this.mBirdMaterialCategory[MATERIAL_NAME_DENSITY];
         }
         if(this.mBirdMaterialCategory[birdName] && this.mBirdMaterialCategory[birdName][MATERIAL_NAME_FRICTION])
         {
            materialsObject[MATERIAL_NAME_FRICTION] = this.mBirdMaterialCategory[birdName][MATERIAL_NAME_FRICTION];
         }
         else if(this.mBirdMaterialCategory[MATERIAL_NAME_FRICTION])
         {
            materialsObject[MATERIAL_NAME_FRICTION] = this.mBirdMaterialCategory[MATERIAL_NAME_FRICTION];
         }
         return materialsObject;
      }
      
      public function addBirdCollisionEffectData(list:XML) : void
      {
         if(!this.mBirdSpecialCollisionEffectData)
         {
            this.mBirdSpecialCollisionEffectData = list;
         }
      }
      
      public function getBirdCollisionEffect() : CollisionEffect
      {
         var collisionEffect:CollisionEffect = null;
         var soundEffects:Array = null;
         var soundEffectCounter:int = 0;
         if(this.mBirdSpecialCollisionEffectData)
         {
            collisionEffect = new CollisionEffect();
            soundEffects = new Array();
            soundEffectCounter = 1;
            while(this.mBirdSpecialCollisionEffectData.hasOwnProperty("@Collision_Sound_Name_" + soundEffectCounter))
            {
               soundEffects.push(this.mBirdSpecialCollisionEffectData.attribute("Collision_Sound_Name_" + soundEffectCounter));
               soundEffectCounter++;
            }
            collisionEffect.setSoundEffect(soundEffects,this.mBirdSpecialCollisionEffectData.@Collision_Sound_Channel);
            if(this.mBirdSpecialCollisionEffectData.hasOwnProperty("@Collision_Particle_Name"))
            {
               collisionEffect.setParticleEffect(this.mBirdSpecialCollisionEffectData.@Collision_Particle_Name,this.mBirdSpecialCollisionEffectData.@Particle_Count,this.mBirdSpecialCollisionEffectData.@Particles_LifeTime,this.mBirdSpecialCollisionEffectData.@Particle_Angles,this.mBirdSpecialCollisionEffectData.@Particles_Min_Speed,this.mBirdSpecialCollisionEffectData.@Particles_Max_Speed,this.mBirdSpecialCollisionEffectData.@Particles_Loop,this.mBirdSpecialCollisionEffectData.@Particles_LoopInterval,this.mBirdSpecialCollisionEffectData.@Activation_Ratio_Damage_To_Mass,this.mBirdSpecialCollisionEffectData.@Particles_TransitionType,this.mBirdSpecialCollisionEffectData.@Particles_Scale,this.mBirdSpecialCollisionEffectData.@Particles_Start_Scaling_Lifetime_percentage,this.mBirdSpecialCollisionEffectData.@Particles_Gravity,this.mBirdSpecialCollisionEffectData.@Particles_Rotation,this.mBirdSpecialCollisionEffectData.@Particles_Sequence);
            }
         }
         return collisionEffect;
      }
      
      public function getBonusDamage(itemCategoryName:String, birdName:String) : Number
      {
         if(!this.mBonusDamageItemCategory)
         {
            return 1;
         }
         if(this.mBonusDamageItemCategory[birdName] && this.mBonusDamageItemCategory[birdName][itemCategoryName])
         {
            return this.mBonusDamageItemCategory[birdName][itemCategoryName];
         }
         if(this.mBonusDamageItemCategory[itemCategoryName])
         {
            return this.mBonusDamageItemCategory[itemCategoryName];
         }
         if(this.mBonusDamageItemCategory[birdName] && this.mBonusDamageItemCategory[birdName][OTHER_MATERIALS])
         {
            return this.mBonusDamageItemCategory[birdName][OTHER_MATERIALS];
         }
         if(this.mBonusDamageItemCategory[OTHER_MATERIALS])
         {
            return this.mBonusDamageItemCategory[OTHER_MATERIALS];
         }
         return 1;
      }
      
      public function get description() : String
      {
         return this.mDescription;
      }
      
      public function get graphicName() : String
      {
         return this.mGraphicName;
      }
      
      public function get effectName() : String
      {
         return this.mEffectName;
      }
      
      public function get particleName() : String
      {
         return this.mParticleName;
      }
      
      public function get particleCount() : int
      {
         return this.mParticleCount;
      }
      
      public function get trailParticleCount() : int
      {
         return this.mTrailParticleCount;
      }
      
      public function get introMovieClipName() : String
      {
         return this.mIntroMovieClipName;
      }
      
      public function get soundName() : String
      {
         return this.mSoundName;
      }
      
      public function get ropeColor() : uint
      {
         return this.mRopeColor;
      }
      
      public function get shootSoundName() : String
      {
         return this.mShootSoundName;
      }
      
      public function get stretchSoundName() : String
      {
         return this.mStretchSoundName;
      }
      
      public function getBirdGravityFilter() : int
      {
         return this.mBirdGravityFilter;
      }
   }
}
