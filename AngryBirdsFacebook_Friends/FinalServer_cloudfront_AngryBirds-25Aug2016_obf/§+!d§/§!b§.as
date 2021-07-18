package §+!d§
{
   import §!x§.§4"d§;
   
   public class §!b§
   {
       
      
      public function §!b§()
      {
         super();
      }
      
      public function §2H§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§&b§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §3#8§.§6#o§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§>#X§(_loc2_);
            }
            else
            {
               §4"d§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §4E§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§&b§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §3#8§.§6#o§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§7!>§(_loc2_);
            }
            else
            {
               §4"d§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §-"m§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§&b§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §3#8§.§6#o§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§5!V§(_loc2_);
            }
            else
            {
               §4"d§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
