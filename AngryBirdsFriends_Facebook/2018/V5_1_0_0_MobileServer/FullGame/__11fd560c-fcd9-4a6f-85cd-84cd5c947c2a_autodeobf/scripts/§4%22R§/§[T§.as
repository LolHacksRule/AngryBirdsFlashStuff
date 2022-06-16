package §4"R§
{
   import §]!6§.§6Y§;
   
   public class §[T§
   {
       
      
      public function §[T§()
      {
         super();
      }
      
      public function §5#<§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§'#v§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §4"c§.§2;§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§%!6§(_loc2_);
            }
            else
            {
               §6Y§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §]#j§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§'#v§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §4"c§.§2;§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§0"n§(_loc2_);
            }
            else
            {
               §6Y§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §##U§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§'#v§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §4"c§.§2;§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§6$§(_loc2_);
            }
            else
            {
               §6Y§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
