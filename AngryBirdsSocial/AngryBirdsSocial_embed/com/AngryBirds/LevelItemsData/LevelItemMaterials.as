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
      
      public static function loadMaterials(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         mMaterials = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               Log.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            newMaterial(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         loadMaterialFactors(param2,param3);
      }
      
      public static function loadMaterialFactors(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:LevelItemMaterial = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = getMaterial(_loc3_.@id))
            {
               _loc4_.setDamageMultipliers(_loc3_);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = getMaterial(_loc3_.@id))
            {
               _loc4_.setVelocityMultipliers(_loc3_);
            }
         }
      }
      
      public static function newMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         mMaterials[mMaterials.length] = new LevelItemMaterial(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function getMaterial(param1:String) : LevelItemMaterial
      {
         var _loc2_:int = 0;
         while(_loc2_ < mMaterials.length)
         {
            if(LevelItemMaterial(mMaterials[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return LevelItemMaterial(mMaterials[_loc2_]);
            }
            _loc2_++;
         }
         Log.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
