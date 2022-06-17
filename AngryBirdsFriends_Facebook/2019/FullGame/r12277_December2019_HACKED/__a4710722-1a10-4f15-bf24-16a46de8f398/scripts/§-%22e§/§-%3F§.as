package §-"e§
{
   import §#"3§.§4!h§;
   
   public class §-?§
   {
       
      
      public function §-?§()
      {
         super();
      }
      
      public function §8$ §(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§^#i§ = null;
         for each(_loc2_ in param1.Slingshot_Bonus_Damage)
         {
            _loc3_ = §[9§.§%"%§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§`#§(_loc2_);
            }
            else
            {
               §4!h§.log("WARNING! Slingshot bonus damage without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §^!u§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§^#i§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Material)
         {
            _loc3_ = §[9§.§%"%§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§?"1§(_loc2_);
            }
            else
            {
               §4!h§.log("WARNING! Slingshot bird material without any slingshot" + _loc2_.@id);
            }
         }
      }
      
      public function §,O§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§^#i§ = null;
         for each(_loc2_ in param1.Slingshot_Bird_Collision_Effect)
         {
            _loc3_ = §[9§.§%"%§(_loc2_.@id);
            if(_loc3_)
            {
               _loc3_.§<"t§(_loc2_);
            }
            else
            {
               §4!h§.log("WARNING! Slingshot bird special effect without any slingshot" + _loc2_.@id);
            }
         }
      }
   }
}
