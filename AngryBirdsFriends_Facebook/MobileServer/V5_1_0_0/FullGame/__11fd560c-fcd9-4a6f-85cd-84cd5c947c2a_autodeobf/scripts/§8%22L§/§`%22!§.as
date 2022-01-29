package §8"L§
{
   import §]!6§.§6Y§;
   import §`7§.§0t§;
   
   public class §`"!§
   {
      
      private static var §#!>§:§0t§;
       
      
      protected var §6!'§:§0t§;
      
      public function §`"!§()
      {
         super();
      }
      
      public static function §?"R§(param1:String, param2:Object) : void
      {
         if(!§#!>§)
         {
            §#!>§ = new §0t§();
         }
         §#!>§[param1] = param2;
      }
      
      public static function §6S§(param1:String) : Object
      {
         if(§#!>§)
         {
            return §#!>§[param1];
         }
         return null;
      }
      
      public function §-X§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§6!'§ = new §0t§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §6Y§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§%,§(_loc4_.@id,§?"b§.§@!C§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors,_loc4_.@sounds);
         }
         this.§2]§(param2,param3);
      }
      
      private function §2]§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§?"b§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§#!z§(_loc3_);
            }
            else
            {
               §6Y§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§="T§(_loc3_);
            }
            else
            {
               §6Y§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §%,§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String) : §?"b§
      {
         var _loc10_:§?"b§ = new §?"b§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§6!'§[param1] = _loc10_;
         return _loc10_;
      }
      
      public function getMaterial(param1:String) : §?"b§
      {
         var _loc2_:§?"b§ = this.§6!'§[param1] as §?"b§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §6Y§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
