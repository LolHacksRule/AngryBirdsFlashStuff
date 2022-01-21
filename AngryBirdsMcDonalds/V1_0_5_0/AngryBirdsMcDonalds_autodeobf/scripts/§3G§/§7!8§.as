package §3G§
{
   import §0i§.§4!%§;
   
   public class §7!8§
   {
      
      public static var §%!O§:Array;
       
      
      public function §7!8§()
      {
         super();
      }
      
      public static function §%4§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         §%!O§ = new Array();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            §@!8§(_loc4_.@id,_loc4_.@bodyType,_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         §?!$§(param2,param3);
      }
      
      public static function §?!$§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§9!S§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = §"f§(_loc3_.@id))
            {
               _loc4_.§9!-§(_loc3_);
            }
            else
            {
               §4!%§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = §"f§(_loc3_.@id))
            {
               _loc4_.§&3§(_loc3_);
            }
            else
            {
               §4!%§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public static function §@!8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : void
      {
         §%!O§[§%!O§.length] = new §9!S§(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public static function §"f§(param1:String) : §9!S§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §%!O§.length)
         {
            if((§%!O§[_loc2_] as §9!S§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §9!S§(§%!O§[_loc2_]);
            }
            _loc2_++;
         }
         §4!%§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
