package §`=§
{
   import §@V§.§`!5§;
   
   public class §,S§
   {
      
      public static var §9x§:Array;
       
      
      public function §,S§()
      {
         super();
      }
      
      public static function §-1§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §9x§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §@!7§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §>!4§(param2,param3);
      }
      
      public static function §>!4§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§`P§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §+5§(_loc3_.@id))
            {
               _loc4_.§=v§(_loc3_);
            }
            else
            {
               §`!5§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §+5§(_loc3_.@id))
            {
               _loc4_.§-n§(_loc3_);
            }
            else
            {
               §`!5§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §@!7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §9x§[§9x§.length] = new §`P§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §+5§(param1:String) : §`P§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §9x§.length)
         {
            if((§9x§[_loc2_] as §`P§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §`P§(§9x§[_loc2_]);
            }
            _loc2_++;
         }
         §`!5§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
