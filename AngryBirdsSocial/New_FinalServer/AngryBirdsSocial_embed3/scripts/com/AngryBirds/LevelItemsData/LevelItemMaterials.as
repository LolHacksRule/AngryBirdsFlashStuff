package com.AngryBirds.LevelItemsData
{
   import com.rovio.factory.Log;
   
   public class LevelItemMaterials
   {
      
      public static var mMaterials:Array;
       
      
      public function LevelItemMaterials()
      {
         super();
      }
      
      public static function loadMaterials(materials:XMLList, damageMultipliers:XMLList, velocityMultipliers:XMLList) : void
      {
         var material:XML = null;
         mMaterials = new Array();
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
            newMaterial(material.@id,material.@bodyType,material.@density,material.@friction,material.@restitution,material.@strength,material.@defence,material.@colors);
         }
         loadMaterialFactors(damageMultipliers,velocityMultipliers);
      }
      
      public static function loadMaterialFactors(damageMultipliers:XMLList, velocityMultipliers:XMLList) : void
      {
         var material:XML = null;
         var item:LevelItemMaterial = null;
         for each(material in damageMultipliers.Material)
         {
            item = getMaterial(material.@id);
            if(item)
            {
               item.setDamageMultipliers(material);
            }
         }
         for each(material in velocityMultipliers.Material)
         {
            item = getMaterial(material.@id);
            if(item)
            {
               item.setVelocityMultipliers(material);
            }
         }
      }
      
      public static function newMaterial(aName:String, bodyType:String, density:Number, friction:Number, restitution:Number, strength:Number, defence:Number, colors:Number) : void
      {
         mMaterials[mMaterials.length] = new LevelItemMaterial(aName,bodyType,density,friction,restitution,strength,defence,colors);
      }
      
      public static function getMaterial(name:String) : LevelItemMaterial
      {
         for(var i:int = 0; i < mMaterials.length; i++)
         {
            if(LevelItemMaterial(mMaterials[i]).mName.toLowerCase() == name.toLowerCase())
            {
               return LevelItemMaterial(mMaterials[i]);
            }
         }
         Log.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + name);
         return null;
      }
   }
}
