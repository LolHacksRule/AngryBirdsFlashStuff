package §%x§
{
   import § !;§.§%'§;
   import §>!C§.§9R§;
   import §?^§.Sprite;
   
   public class §,6§ extends §3=§
   {
       
      
      public function §,6§(param1:§#;§, param2:§9R§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      public function §7!#§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0Y§ = null;
         for each(_loc2_ in §"_§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.§&!"§ = param1;
            }
         }
      }
      
      override public function startDragging() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.startDragging();
            if(!(_loc1_ && this))
            {
               §%'§.§@2§();
            }
         }
      }
   }
}
