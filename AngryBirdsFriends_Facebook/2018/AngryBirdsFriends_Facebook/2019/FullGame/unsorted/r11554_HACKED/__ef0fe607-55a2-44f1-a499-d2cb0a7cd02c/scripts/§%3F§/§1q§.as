package §?§#3
{
   import §+#B§.§4"[§;
   import §9#K§.§=#f§;
   
   public class §1q§
   {
      
      private static var §"!5§:§4"[§;
       
      
      protected var §use §:§4"[§;
      
      public function §1q§()
      {
         super();
      }
      
      public static function §7"F§(param1:String, param2:Object) : void
      {
         if(!§"!5§)
         {
            §"!5§ = new §4"[§();
         }
         §"!5§[param1] = param2;
      }
      
      public static function §6"@§(param1:String) : Object
      {
         if(§"!5§)
         {
            return §"!5§[param1];
         }
         return null;
      }
      
      public function §3$7§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§use § = new §4"[§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §=#f§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§8#r§(_loc4_.@id,§7!$§.§>#c§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors,_loc4_.@sounds);
         }
         this.§+$2§(param2,param3);
      }
      
      private function §+$2§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§7!$§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§[x§(_loc3_);
            }
            else
            {
               §=#f§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§8$C§(_loc3_);
            }
            else
            {
               §=#f§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §8#r§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String) : §7!$§
      {
         var _loc10_:§7!$§ = new §7!$§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§use §[param1] = _loc10_;
         return _loc10_;
      }
      
      public function getMaterial(param1:String) : §7!$§
      {
         var _loc2_:§7!$§ = this.§use §[param1] as §7!$§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §=#f§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
