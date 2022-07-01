package §2!s§
{
   import §8!$§.§?p§;
   import §`!s§.§4M§;
   
   public class §0!Q§
   {
       
      
      protected var §1!x§:§4M§;
      
      public function §0!Q§()
      {
         super();
      }
      
      public function §"!0§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§1!x§ = new §4M§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §?p§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§0[§(_loc4_.@id,§+f§.§5g§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         this.§%!K§(param2,param3);
      }
      
      private function §%!K§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§+f§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.§%J§(_loc3_.@id))
            {
               _loc4_.§&o§(_loc3_);
            }
            else
            {
               §?p§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.§%J§(_loc3_.@id))
            {
               _loc4_.§<$§(_loc3_);
            }
            else
            {
               §?p§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §0[§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §+f§
      {
         var _loc9_:§+f§ = new §+f§(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§1!x§[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §%J§(param1:String) : §+f§
      {
         var _loc2_:§+f§ = this.§1!x§[param1] as §+f§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §?p§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
