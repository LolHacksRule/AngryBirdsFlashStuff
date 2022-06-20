package § O§
{
   import §9#K§.§=#f§;
   
   public class §#!B§
   {
       
      
      public function §#!B§()
      {
         super();
      }
      
      public function §2S§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6f§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §7!S§.§%$<§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§-W§(_loc2_);
            }
            else
            {
               §=#f§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §-!D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6f§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §7!S§.§%$<§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§2#L§(_loc2_);
            }
            else
            {
               §=#f§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §8X§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6f§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §7!S§.§%$<§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§2$E§(_loc2_);
            }
            else
            {
               §=#f§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
