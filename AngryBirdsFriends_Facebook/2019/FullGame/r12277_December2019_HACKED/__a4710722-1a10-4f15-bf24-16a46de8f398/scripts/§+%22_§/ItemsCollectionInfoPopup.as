package §+"_§
{
   import §!!H§.§ $4§;
   import §4#$§.§5"L§;
   import §4#$§.§6#!§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const §-M§:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         var _loc2_:§6#!§ = §5"L§.§3"1§.tournamentRules;
         var _loc3_:String = _loc2_.§,d§;
         § $4§.§#L§(§-M§ + "_" + _loc3_,§-M§,§'o§.mClip);
         §'o§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-"D§);
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
