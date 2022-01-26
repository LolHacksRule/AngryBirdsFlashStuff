package §_-TV§
{
   import §_-aA§.§_-I0§;
   
   public class §_-ZH§
   {
      
      public static var §_-Qt§:Array;
       
      
      public function §_-ZH§()
      {
         super();
      }
      
      public static function §_-AC§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §_-Qt§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §_-aG§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §_-NK§(param2,param3);
      }
      
      public static function §_-NK§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§_-m0§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §_-mo§(_loc3_.@id))
            {
               _loc4_.§_-z2§(_loc3_);
            }
            else
            {
               §_-I0§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §_-mo§(_loc3_.@id))
            {
               _loc4_.§_-YG§(_loc3_);
            }
            else
            {
               §_-I0§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §_-aG§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §_-Qt§[§_-Qt§.length] = new §_-m0§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §_-mo§(param1:String) : §_-m0§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-Qt§.length)
         {
            if((§_-Qt§[_loc2_] as §_-m0§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-m0§(§_-Qt§[_loc2_]);
            }
            _loc2_++;
         }
         §_-I0§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
