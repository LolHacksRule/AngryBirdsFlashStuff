package com.angrybirds.data.level.item
{
   import com.rovio.factory.Log;
   import com.rovio.utils.HashMap;
   
   public class LevelItemMaterialManager
   {
      
      private static var smMaterialDamageFactorLimits:HashMap;
       
      
      protected var mMaterials:HashMap;
      
      public function LevelItemMaterialManager()
      {
         super();
      }
      
      public static function addMaterialDamageFactorLimit(birdID:String, data:Object) : void
      {
         if(!smMaterialDamageFactorLimits)
         {
            smMaterialDamageFactorLimits = new HashMap();
         }
         smMaterialDamageFactorLimits[birdID] = data;
      }
      
      public static function getMaterialDamageFactorLimit(birdId:String) : Object
      {
         if(smMaterialDamageFactorLimits)
         {
            return smMaterialDamageFactorLimits[birdId];
         }
         return null;
      }
      
      public function loadMaterials(materials:XMLList, damageMultipliers:XMLList, velocityMultipliers:XMLList) : void
      {
         var material:XML = null;
         this.mMaterials = new HashMap();
         for each(material in materials.Material)
         {
            if(material.attribute("bodyType").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + material.@id);
            }
            if(material.attribute("density").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + material.@id);
            }
            if(material.attribute("friction").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + material.@id);
            }
            if(material.attribute("restitution").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + material.@id);
            }
            if(material.attribute("strength").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + material.@id);
            }
            if(material.attribute("defence").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + material.@id);
            }
            if(material.attribute("colors").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + material.@id);
            }
            this.newMaterial(material.@id,LevelItemMaterial.getBodyTypeFromString(material.@bodyType),material.@density,material.@friction,material.@restitution,material.@strength,material.@defence,material.@colors,material.@sounds);
         }
         this.loadMaterialFactors(damageMultipliers,velocityMultipliers);
      }
      
      private function loadMaterialFactors(damageMultipliers:XMLList, velocityMultipliers:XMLList) : void
      {
         var material:XML = null;
         var item:LevelItemMaterial = null;
         for each(material in damageMultipliers.Material)
         {
            item = this.getMaterial(material.@id);
            if(item)
            {
               item.setDamageMultipliersFromXML(material);
            }
            else
            {
               Log.log("WARNING! Damage material multiplier with unknown material!!" + material.@id);
            }
         }
         for each(material in velocityMultipliers.Material)
         {
            item = this.getMaterial(material.@id);
            if(item)
            {
               item.setVelocityMultipliersFromXML(material);
            }
            else
            {
               Log.log("WARNING! Velocity material multiplier with unknown material!!" + material.@id);
            }
         }
      }
      
      public function newMaterial(aName:String, bodyType:int, density:Number, friction:Number, restitution:Number, strength:Number, defence:Number, colors:Number, sounds:String) : LevelItemMaterial
      {
         var material:LevelItemMaterial = new LevelItemMaterial(aName,bodyType,density,friction,restitution,strength,defence,colors,sounds);
         this.mMaterials[aName] = material;
         return material;
      }
      
      public function getMaterial(name:String) : LevelItemMaterial
      {
         var material:LevelItemMaterial = this.mMaterials[name] as LevelItemMaterial;
         if(material)
         {
            return material;
         }
         Log.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + name);
         return null;
      }
   }
}
