package com.angrybirds.data.level.item
{
   import com.rovio.utils.HashMap;
   import com.rovio.factory.Log;
   
   public class LevelItemMaterialManager
   {
       
      
      protected var mMaterials:HashMap;
      
      public function LevelItemMaterialManager()
      {
         super();
      }
      
      public function loadMaterials(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.mMaterials = new HashMap();
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
            this.newMaterial(_loc4_.@id,LevelItemMaterial.getBodyTypeFromString(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         this.loadMaterialFactors(param2,param3);
      }
      
      private function loadMaterialFactors(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:LevelItemMaterial = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.setDamageMultipliersFromXML(_loc3_);
            }
            else
            {
               Log.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.setVelocityMultipliersFromXML(_loc3_);
            }
            else
            {
               Log.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function newMaterial(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : LevelItemMaterial
      {
         var _loc9_:LevelItemMaterial = new LevelItemMaterial(param1,param2,param3,param4,param5,param6,param7,param8);
         this.mMaterials[param1] = _loc9_;
         return _loc9_;
      }
      
      public function getMaterial(param1:String) : LevelItemMaterial
      {
         var _loc2_:LevelItemMaterial = this.mMaterials[param1] as LevelItemMaterial;
         if(_loc2_)
         {
            return _loc2_;
         }
         Log.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
