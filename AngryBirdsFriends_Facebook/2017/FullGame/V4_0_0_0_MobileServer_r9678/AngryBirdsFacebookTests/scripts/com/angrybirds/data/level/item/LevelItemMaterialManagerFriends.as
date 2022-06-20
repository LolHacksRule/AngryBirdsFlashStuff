package com.angrybirds.data.level.item
{
   public class LevelItemMaterialManagerFriends extends LevelItemMaterialManagerSpace
   {
       
      
      public function LevelItemMaterialManagerFriends()
      {
         super();
      }
      
      override public function getMaterial(name:String) : LevelItemMaterial
      {
         switch(name)
         {
            case "wood":
               name = "Material_Block_Wood";
               break;
            case "stone":
            case "rock":
               name = "Material_Block_Stone";
               break;
            case "ice":
               name = "Material_Block_Ice";
               break;
            case "snow":
               name = "Material_Block_Snow";
         }
         return super.getMaterial(name);
      }
   }
}
