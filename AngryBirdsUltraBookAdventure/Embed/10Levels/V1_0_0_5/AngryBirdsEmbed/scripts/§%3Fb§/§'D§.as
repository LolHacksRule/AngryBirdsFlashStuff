package §?b§
{
   import §4!H§.§["§;
   import §6J§.§&!;§;
   import §9W§.Sprite;
   
   public class §'D§ extends §4K§
   {
       
      
      public function §'D§(param1:§7!,§, param2:§&!;§, param3:Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      public function § ,§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§+$§ = null;
         for each(_loc2_ in §,!&§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.§#!9§ = param1;
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
               §["§.§'r§();
            }
         }
      }
   }
}
