package §_-WH§
{
   import §_-Eo§.§_-R4§;
   
   public class §_-Nm§
   {
      
      public static var §_-E1§:Array;
       
      
      public function §_-Nm§()
      {
         super();
      }
      
      public static function §_-Ga§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §_-E1§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §_-u-§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §_-T2§(param2,param3);
      }
      
      public static function §_-T2§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§_-Yj§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §_-Qs§(_loc3_.@id))
            {
               _loc4_.§_-Cq§(_loc3_);
            }
            else
            {
               §_-R4§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §_-Qs§(_loc3_.@id))
            {
               _loc4_.§_-IC§(_loc3_);
            }
            else
            {
               §_-R4§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §_-u-§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §_-E1§[§_-E1§.length] = new §_-Yj§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §_-Qs§(param1:String) : §_-Yj§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-E1§.length)
         {
            if((§_-E1§[_loc2_] as §_-Yj§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-Yj§(§_-E1§[_loc2_]);
            }
            _loc2_++;
         }
         §_-R4§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
