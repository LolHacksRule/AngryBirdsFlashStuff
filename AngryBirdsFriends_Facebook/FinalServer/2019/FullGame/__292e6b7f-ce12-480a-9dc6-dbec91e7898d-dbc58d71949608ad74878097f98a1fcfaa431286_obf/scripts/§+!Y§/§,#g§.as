package §+!Y§
{
   import §6"p§.§^"t§;
   
   public class §,#g§
   {
       
      
      public function §,#g§()
      {
         super();
      }
      
      public function §1$6§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§3!B§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §[@§.§[#P§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§`K§(_loc2_);
            }
            else
            {
               §^"t§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §@#a§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§3!B§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §[@§.§[#P§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§`$§(_loc2_);
            }
            else
            {
               §^"t§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §9"W§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§3!B§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §[@§.§[#P§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§>$3§(_loc2_);
            }
            else
            {
               §^"t§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
