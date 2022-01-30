package §!!<§
{
   import §-!F§.§^!k§;
   import §=!7§.§1!7§;
   
   public class §"!0§
   {
       
      
      protected var §,!U§:§^!k§;
      
      public function §"!0§()
      {
         super();
      }
      
      public function §&!§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§,!U§ = new §^!k§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §1!7§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§!!z§(_loc4_.@id,§+!9§.§1!-§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         this.§7!&§(param2,param3);
      }
      
      private function §7!&§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§+!9§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.§2!x§(_loc3_.@id))
            {
               _loc4_.§5!f§(_loc3_);
            }
            else
            {
               §1!7§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.§2!x§(_loc3_.@id))
            {
               _loc4_.§2!D§(_loc3_);
            }
            else
            {
               §1!7§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §!!z§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §+!9§
      {
         var _loc9_:§+!9§ = new §+!9§(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§,!U§[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §2!x§(param1:String) : §+!9§
      {
         var _loc2_:§+!9§ = this.§,!U§[param1] as §+!9§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §1!7§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
