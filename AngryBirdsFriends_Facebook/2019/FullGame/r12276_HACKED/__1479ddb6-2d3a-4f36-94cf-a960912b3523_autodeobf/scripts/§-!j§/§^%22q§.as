package §-!j§
{
   import §#"3§.§4!h§;
   import §2E§.§&#a§;
   
   public class §^"q§
   {
      
      private static var §@#g§:§&#a§;
       
      
      protected var §^e§:§&#a§;
      
      public function §^"q§()
      {
         super();
      }
      
      public static function §2#c§(param1:String, param2:Object) : void
      {
         if(!§@#g§)
         {
            §@#g§ = new §&#a§();
         }
         §@#g§[param1] = param2;
      }
      
      public static function § "c§(param1:String) : Object
      {
         if(§@#g§)
         {
            return §@#g§[param1];
         }
         return null;
      }
      
      public function §9"C§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§^e§ = new §&#a§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §4!h§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§0!Q§(_loc4_.@id,§5!,§.§[!J§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors,_loc4_.@sounds);
         }
         this.§8!N§(param2,param3);
      }
      
      private function §8!N§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§5!,§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§0@§(_loc3_);
            }
            else
            {
               §4!h§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§7!r§(_loc3_);
            }
            else
            {
               §4!h§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §0!Q§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String) : §5!,§
      {
         var _loc10_:§5!,§ = new §5!,§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§^e§[param1] = _loc10_;
         return _loc10_;
      }
      
      public function getMaterial(param1:String) : §5!,§
      {
         var _loc2_:§5!,§ = this.§^e§[param1] as §5!,§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §4!h§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
