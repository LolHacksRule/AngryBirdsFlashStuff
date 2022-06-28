package §`K§
{
   import §0!<§.§#y§;
   
   public class §?x§
   {
      
      public static var §#l§:Array;
       
      
      public function §?x§()
      {
         super();
      }
      
      public static function §-§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §#l§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §#y§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §;a§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §7!?§(param2,param3);
      }
      
      public static function §7!?§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§7g§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §2E§(_loc3_.@id))
            {
               _loc4_.§=!1§(_loc3_);
            }
            else
            {
               §#y§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §2E§(_loc3_.@id))
            {
               _loc4_.§@g§(_loc3_);
            }
            else
            {
               §#y§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §;a§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §#l§[§#l§.length] = new §7g§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §2E§(param1:String) : §7g§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §#l§.length)
         {
            if((§#l§[_loc2_] as §7g§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §7g§(§#l§[_loc2_]);
            }
            _loc2_++;
         }
         §#y§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
