package §[^§
{
   import § !Q§.§"D§;
   import §!!&§.§4!7§;
   
   public class §,O§
   {
       
      
      protected var §0"2§:§4!7§;
      
      public function §,O§()
      {
         super();
      }
      
      public function § M§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§0"2§ = new §4!7§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §"D§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§]!-§(_loc4_.@id,§["%§.§<2§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         this.§""!§(param2,param3);
      }
      
      private function §""!§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§["%§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.§5!v§(_loc3_.@id))
            {
               _loc4_.§<!s§(_loc3_);
            }
            else
            {
               §"D§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.§5!v§(_loc3_.@id))
            {
               _loc4_.§!J§(_loc3_);
            }
            else
            {
               §"D§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §]!-§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §["%§
      {
         var _loc9_:§["%§ = new §["%§(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§0"2§[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §5!v§(param1:String) : §["%§
      {
         var _loc2_:§["%§ = this.§0"2§[param1] as §["%§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §"D§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
