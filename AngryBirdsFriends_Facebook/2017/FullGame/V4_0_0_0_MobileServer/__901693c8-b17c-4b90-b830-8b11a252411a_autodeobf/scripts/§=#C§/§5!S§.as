package §=#C§
{
   import §<"p§.§?!T§;
   
   public class §5!S§
   {
       
      
      public function §5!S§()
      {
         super();
      }
      
      public function §^"4§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6!u§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §7"G§.§-o§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§>$2§(_loc2_);
            }
            else
            {
               §?!T§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §,"+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6!u§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §7"G§.§-o§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§0!!§(_loc2_);
            }
            else
            {
               §?!T§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §^"s§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§6!u§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §7"G§.§-o§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§@#0§(_loc2_);
            }
            else
            {
               §?!T§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
