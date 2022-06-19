package §_-X4§
{
   import §_-r6§.§_-Oy§;
   
   public class §_-VQ§
   {
      
      public static var §_-oF§:Array;
       
      
      public function §_-VQ§()
      {
         super();
      }
      
      public static function §_-vv§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §_-oF§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §_-Zp§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §_-ML§(param2,param3);
      }
      
      public static function §_-ML§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§_-Fs§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §_-UC§(_loc3_.@id))
            {
               _loc4_.§_-5Z§(_loc3_);
            }
            else
            {
               §_-Oy§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §_-UC§(_loc3_.@id))
            {
               _loc4_.§_-eb§(_loc3_);
            }
            else
            {
               §_-Oy§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §_-Zp§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §_-oF§[§_-oF§.length] = new §_-Fs§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §_-UC§(param1:String) : §_-Fs§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-oF§.length)
         {
            if((§_-oF§[_loc2_] as §_-Fs§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-Fs§(§_-oF§[_loc2_]);
            }
            _loc2_++;
         }
         §_-Oy§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
