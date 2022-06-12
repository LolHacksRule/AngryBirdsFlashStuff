package §3>§
{
   import §@!;§.§&F§;
   
   public class §;!r§
   {
      
      public static var §=,§:Array;
       
      
      public function §;!r§()
      {
         super();
      }
      
      public static function §[i§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §=,§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §&F§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §<!W§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §="1§(param2,param3);
      }
      
      public static function §="1§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§>!y§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §^!W§(_loc3_.@id))
            {
               _loc4_.§>"&§(_loc3_);
            }
            else
            {
               §&F§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §^!W§(_loc3_.@id))
            {
               _loc4_.§>!S§(_loc3_);
            }
            else
            {
               §&F§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §<!W§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §=,§[§=,§.length] = new §>!y§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §^!W§(param1:String) : §>!y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §=,§.length)
         {
            if((§=,§[_loc2_] as §>!y§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §>!y§(§=,§[_loc2_]);
            }
            _loc2_++;
         }
         §&F§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
