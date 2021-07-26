package §'#d§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §8#!§.§-"Z§;
   import §8#!§.§5`§;
   import §[#[§.§=#Q§;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const §8!8§:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         var _loc2_:§-"Z§ = §5`§.§6!§.tournamentRules;
         var _loc3_:String = _loc2_.§7"4§;
         §=#Q§.§7$6§(§8!8§ + "_" + _loc3_,§8!8§,§,#2§.mClip);
         §,#2§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-"F§);
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
