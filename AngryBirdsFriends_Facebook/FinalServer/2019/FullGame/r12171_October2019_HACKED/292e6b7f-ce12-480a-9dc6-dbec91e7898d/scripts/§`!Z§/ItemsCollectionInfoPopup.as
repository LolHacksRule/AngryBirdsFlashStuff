package §`!Z§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §`"t§.§7"U§;
   import §`,§.§'#t§;
   import §`,§.§7!$§;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const §`"q§:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         var _loc2_:§'#t§ = §7!$§.§+!,§.tournamentRules;
         var _loc3_:String = _loc2_.§"">§;
         §7"U§.§7#m§(§`"q§ + "_" + _loc3_,§`"q§,§;#'§.mClip);
         §;#'§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§+"O§);
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
