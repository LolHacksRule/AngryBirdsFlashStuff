package com.angrybirds.data.level.item
{
   import com.rovio.utils.HashMap;
   import com.rovio.utils.LuaUtils;
   
   public class LevelItemMaterialManagerSpace extends LevelItemMaterialManager
   {
       
      
      protected var mDamageFactors:Object;
      
      public function LevelItemMaterialManagerSpace()
      {
         super();
      }
      
      public function loadMaterialsFromLua(damageFactorsLua:String, materialsLua:String) : void
      {
         this.loadDamageFactorsFromLua(damageFactorsLua);
         this.initMaterials(LuaUtils.luaToObject(materialsLua));
      }
      
      public function initMaterials(materialsLuaObject:Object) : void
      {
         var materialName:* = null;
         var materialObject:Object = null;
         var material:LevelItemMaterial = null;
         var damageFactors:DamageFactors = null;
         var damageMultiplierTargetMaterial:* = null;
         var velocityMultiplierTargetMaterial:* = null;
         mMaterials = mMaterials || new HashMap();
         for(materialName in materialsLuaObject)
         {
            materialObject = materialsLuaObject[materialName];
            material = this.newMaterialSpace(materialName,materialObject);
            if(materialObject.damageFactors != undefined)
            {
               damageFactors = this.mDamageFactors[materialObject.damageFactors] as DamageFactors;
               if(damageFactors == null)
               {
                  throw new Error("Cannot find damageFactors \'" + materialObject.damageFactors + "\' for material \'" + materialName + "\'!");
               }
               for(damageMultiplierTargetMaterial in damageFactors.damageMultipliers)
               {
                  material.setDamageMultiplier(damageMultiplierTargetMaterial,damageFactors.damageMultipliers[damageMultiplierTargetMaterial]);
               }
               for(velocityMultiplierTargetMaterial in damageFactors.velocityMultipliers)
               {
                  material.setVelocityMultiplier(velocityMultiplierTargetMaterial,damageFactors.velocityMultipliers[velocityMultiplierTargetMaterial]);
               }
            }
            mMaterials[materialName] = material;
         }
      }
      
      protected function loadDamageFactorsFromLua(damageFactorsLua:String) : void
      {
         var damageFactorKey:* = null;
         var damageFactors:DamageFactors = null;
         this.mDamageFactors = {};
         var damageFactorsObject:Object = LuaUtils.luaToObject(damageFactorsLua);
         for(damageFactorKey in damageFactorsObject)
         {
            damageFactors = new DamageFactors();
            damageFactors.damageMultipliers = damageFactorsObject[damageFactorKey].damageMultiplier;
            damageFactors.velocityMultipliers = damageFactorsObject[damageFactorKey].velocityMultiplier;
            this.mDamageFactors[damageFactorKey] = damageFactors;
         }
      }
      
      protected function newMaterialSpace(name:String, data:Object) : LevelItemMaterial
      {
         var bodyType:int = data.density != undefined && data.density == 0 ? int(LevelItemMaterial.BODY_TYPE_STATIC) : int(LevelItemMaterial.BODY_TYPE_DYNAMIC);
         var density:Number = data.density;
         var friction:Number = data.friction;
         var restitution:Number = data.restitution;
         var strength:Number = data.strength;
         var defence:Number = data.defence;
         var bouncesLaser:* = data.bouncesLaser == true;
         var bouncesLaserTargeted:* = data.bouncesLaserTargeted == true;
         var particlesDestroyed:String = !!data.particlesDestroyed ? data.particlesDestroyed : data.particles;
         var collisionSound:String = data.collisionSound;
         var damageSound:String = data.damageSound;
         var destroyedSound:String = data.destroyedSound;
         var rollingSound:String = data.rollingSound;
         var damageFactors:String = data.damageFactors;
         var z_order:int = data.z_order;
         var soundChannel:String = data.soundChannel;
         var forceX:Number = !!data.forceX ? Number(data.forceX) : Number(0);
         var forceY:Number = !!data.forceY ? Number(data.forceY) : Number(0);
         var material:LevelItemMaterialSpace = new LevelItemMaterialSpace(name,bodyType,density,friction,restitution,strength,defence,0,bouncesLaser,bouncesLaserTargeted,particlesDestroyed,collisionSound,damageSound,destroyedSound,rollingSound,damageFactors,z_order,soundChannel,forceX,forceY);
         mMaterials[name] = material;
         return material;
      }
   }
}
