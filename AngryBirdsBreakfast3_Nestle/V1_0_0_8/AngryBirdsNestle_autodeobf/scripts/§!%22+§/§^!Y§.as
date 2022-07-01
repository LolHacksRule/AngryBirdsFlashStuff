package §!"+§
{
   import §%f§.§ n§;
   import §;4§.§]!%§;
   
   public class §^!Y§
   {
       
      
      protected var §["6§:§ n§;
      
      public function §^!Y§()
      {
         super();
      }
      
      public function §"%§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§["6§ = new § n§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §]!%§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§'+§(_loc4_.@id,§,D§.§+`§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         this.§7!3§(param2,param3);
      }
      
      private function §7!3§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§,D§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.§2"4§(_loc3_.@id))
            {
               _loc4_.§%6§(_loc3_);
            }
            else
            {
               §]!%§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.§2"4§(_loc3_.@id))
            {
               _loc4_.§?V§(_loc3_);
            }
            else
            {
               §]!%§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §'+§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §,D§
      {
         var _loc9_:§,D§ = new §,D§(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§["6§[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §2"4§(param1:String) : §,D§
      {
         var _loc2_:§,D§ = this.§["6§[param1] as §,D§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §]!%§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
