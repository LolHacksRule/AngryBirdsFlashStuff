package §&n§
{
   import §"!n§.§;"x§;
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §<!r§.§'##§;
   import §<!r§.§]_§;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const §@$%§:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         var _loc2_:§]_§ = §'##§.§`"H§.tournamentRules;
         var _loc3_:String = _loc2_.§3V§;
         §;"x§.§<!E§(§@$%§ + "_" + _loc3_,§@$%§,§&!M§.mClip);
         §&!M§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§-!b§);
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
