package §_-B7§
{
   import §_-ZG§.§_-Ne§;
   
   public class §_-2s§
   {
      
      public static var §_-o9§:Array;
       
      
      public function §_-2s§()
      {
         super();
      }
      
      public static function §_-ra§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §_-o9§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §_-uM§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §_-LP§(param2,param3);
      }
      
      public static function §_-LP§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§_-7Y§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §_-Br§(_loc3_.@id))
            {
               _loc4_.§_-me§(_loc3_);
            }
            else
            {
               §_-Ne§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §_-Br§(_loc3_.@id))
            {
               _loc4_.§_-TF§(_loc3_);
            }
            else
            {
               §_-Ne§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §_-uM§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §_-o9§[§_-o9§.length] = new §_-7Y§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §_-Br§(param1:String) : §_-7Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-o9§.length)
         {
            if((§_-o9§[_loc2_] as §_-7Y§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-7Y§(§_-o9§[_loc2_]);
            }
            _loc2_++;
         }
         §_-Ne§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
