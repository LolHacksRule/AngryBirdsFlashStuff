package §-$!§
{
   import §1#v§.§;!Y§;
   
   public class §-N§
   {
       
      
      public function §-N§()
      {
         super();
      }
      
      public function §&"z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§ $<§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §0$@§.§"P§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§&b§(_loc2_);
            }
            else
            {
               §;!Y§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §@#]§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§ $<§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §0$@§.§"P§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§ #n§(_loc2_);
            }
            else
            {
               §;!Y§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §="v§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§ $<§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §0$@§.§"P§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§2"@§(_loc2_);
            }
            else
            {
               §;!Y§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
