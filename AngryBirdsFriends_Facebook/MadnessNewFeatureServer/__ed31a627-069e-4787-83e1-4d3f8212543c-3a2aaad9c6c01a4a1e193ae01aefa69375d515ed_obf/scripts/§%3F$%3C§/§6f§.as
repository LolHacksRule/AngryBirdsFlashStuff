package §?$<§
{
   import §&!_§.§[!j§;
   import §1#v§.§;!Y§;
   
   public class §6f§
   {
      
      private static var §+"S§:§[!j§;
       
      
      protected var §^"s§:§[!j§;
      
      public function §6f§()
      {
         super();
      }
      
      public static function §'"'§(param1:String, param2:Object) : void
      {
         if(!§+"S§)
         {
            §+"S§ = new §[!j§();
         }
         §+"S§[param1] = param2;
      }
      
      public static function §6"[§(param1:String) : Object
      {
         if(§+"S§)
         {
            return §+"S§[param1];
         }
         return null;
      }
      
      public function §2#[§(param1:XMLList, param2:XMLList, param3:XMLList) : void
      {
         var _loc4_:XML = null;
         this.§^"s§ = new §[!j§();
         for each(_loc4_ in param1.Material)
         {
            if(_loc4_.attribute("bodyType").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, bodyType is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("density").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, density is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("friction").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, friction is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("restitution").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, restitution is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("strength").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, strength is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("defence").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, defence is missing for material: " + _loc4_.@id);
            }
            if(_loc4_.attribute("colors").length() <= 0)
            {
               §;!Y§.log("WARNING, LevelItemMaterials constructor, colors is missing for material: " + _loc4_.@id);
            }
            this.§22§(_loc4_.@id,§;<§.§`G§(_loc4_.@bodyType),_loc4_.@density,_loc4_.@friction,_loc4_.@restitution,_loc4_.@strength,_loc4_.@defence,_loc4_.@colors,_loc4_.@sounds);
         }
         this.§[!K§(param2,param3);
      }
      
      private function §[!K§(param1:XMLList, param2:XMLList) : void
      {
         var _loc3_:XML = null;
         var _loc4_:§;<§ = null;
         for each(_loc3_ in param1.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§7+§(_loc3_);
            }
            else
            {
               §;!Y§.log("WARNING! Damage material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
         for each(_loc3_ in param2.Material)
         {
            if(_loc4_ = this.getMaterial(_loc3_.@id))
            {
               _loc4_.§continue§(_loc3_);
            }
            else
            {
               §;!Y§.log("WARNING! Velocity material multiplier with unknown material!!" + _loc3_.@id);
            }
         }
      }
      
      public function §22§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String) : §;<§
      {
         var _loc10_:§;<§ = new §;<§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         this.§^"s§[param1] = _loc10_;
         return _loc10_;
      }
      
      public function getMaterial(param1:String) : §;<§
      {
         var _loc2_:§;<§ = this.§^"s§[param1] as §;<§;
         if(_loc2_)
         {
            return _loc2_;
         }
         §;!Y§.log("WARNING: LevelItemMaterials -> getMaterial request has no return value, this material does not exist: " + param1);
         return null;
      }
   }
}
