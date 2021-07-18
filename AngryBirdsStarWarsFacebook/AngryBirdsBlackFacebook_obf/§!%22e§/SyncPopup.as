package §!"e§
{
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §[!m§.AbstractPopup;
   
   public class SyncPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "SyncPopup";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && SyncPopup))
         {
            §%!h§ = "SyncPopup";
         }
      }
      
      public function SyncPopup(param1:int, param2:int)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_Sync[0],§%!h§);
         }
      }
      
      override protected function init() : void
      {
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.show(param1);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.hide(param1);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.dispose();
         }
      }
   }
}
