package com.angrybirds.slingshots
{
   import com.rovio.factory.Log;
   
   public class LevelItemSlingShotManager
   {
       
      
      public function LevelItemSlingShotManager()
      {
         super();
      }
      
      public function loadSlingShotBonusDamages(bonusDamages:XMLList) : void
      {
         var slingShotBonusDamage:XML = null;
         var slingShotDefinition:SlingShotDefinition = null;
         for each(slingShotBonusDamage in bonusDamages.Slingshot_Bonus_Damage)
         {
            slingShotDefinition = SlingShotType.getSlingShotByID(slingShotBonusDamage.@id);
            if(slingShotDefinition)
            {
               slingShotDefinition.addItemDamageFromXML(slingShotBonusDamage);
            }
            else
            {
               Log.log("WARNING! Slingshot bonus damage without any slingshot" + slingShotBonusDamage.@id);
            }
         }
      }
      
      public function loadSlingShotBirdMaterials(birdMaterials:XMLList) : void
      {
         var birdMaterial:XML = null;
         var slingShotDefinition:SlingShotDefinition = null;
         for each(birdMaterial in birdMaterials.Slingshot_Bird_Material)
         {
            slingShotDefinition = SlingShotType.getSlingShotByID(birdMaterial.@id);
            if(slingShotDefinition)
            {
               slingShotDefinition.addBirdMaterialFromXML(birdMaterial);
            }
            else
            {
               Log.log("WARNING! Slingshot bird material without any slingshot" + birdMaterial.@id);
            }
         }
      }
      
      public function loadSlingShotBirdCollisionEffects(specialEffects:XMLList) : void
      {
         var specialEffect:XML = null;
         var slingShotDefinition:SlingShotDefinition = null;
         for each(specialEffect in specialEffects.Slingshot_Bird_Collision_Effect)
         {
            slingShotDefinition = SlingShotType.getSlingShotByID(specialEffect.@id);
            if(slingShotDefinition)
            {
               slingShotDefinition.addBirdCollisionEffectData(specialEffect);
            }
            else
            {
               Log.log("WARNING! Slingshot bird special effect without any slingshot" + specialEffect.@id);
            }
         }
      }
   }
}
