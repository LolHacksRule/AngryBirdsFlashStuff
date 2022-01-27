package §4!e§
{
   import § !3§.§!X§;
   
   public class §2q§
   {
      
      public static var §<A§:Array;
       
      
      public function §2q§()
      {
         super();
      }
      
      public static function §%!]§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §<A§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §!X§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §5!9§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §4!;§(param2,param3);
      }
      
      public static function §4!;§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§ !'§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §^J§(_loc3_.@id))
            {
               _loc4_.§0z§(_loc3_);
            }
            else
            {
               §!X§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §^J§(_loc3_.@id))
            {
               _loc4_.§@C§(_loc3_);
            }
            else
            {
               §!X§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §5!9§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §<A§[§<A§.length] = new § !'§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §^J§(param1:String) : § !'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §<A§.length)
         {
            if((§<A§[_loc2_] as § !'§).mName.toLowerCase() == param1.toLowerCase())
            {
               return § !'§(§<A§[_loc2_]);
            }
            _loc2_++;
         }
         §!X§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
