package §5!7§
{
   import §"I§.§=!U§;
   import §`6§.§6!x§;
   
   public class §>!J§
   {
       
      
      protected var § _§:§6!x§;
      
      public function §>!J§()
      {
         super();
      }
      
      public function § c§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§ _§ = new §6!x§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §=!U§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§'!k§(_loc4_.@id,§3@§.§]!F§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors);
         }
         this.§<!Q§(param2,param3);
      }
      
      private function §<!Q§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§3@§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.§;a§(_loc3_.@id))
            {
               _loc4_.§4!P§(_loc3_);
            }
            else
            {
               §=!U§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.§;a§(_loc3_.@id))
            {
               _loc4_.§1l§(_loc3_);
            }
            else
            {
               §=!U§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §'!k§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : §3@§
      {
         var _loc9_:§3@§ = new §3@§(param1,param2,param3,param4,param5,param6,param7,param8);
         this.§ _§[param1] = _loc9_;
         return _loc9_;
      }
      
      public function §;a§(param1:String) : §3@§
      {
         var _loc2_:§3@§ = this.§ _§[param1] as §3@§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §=!U§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
