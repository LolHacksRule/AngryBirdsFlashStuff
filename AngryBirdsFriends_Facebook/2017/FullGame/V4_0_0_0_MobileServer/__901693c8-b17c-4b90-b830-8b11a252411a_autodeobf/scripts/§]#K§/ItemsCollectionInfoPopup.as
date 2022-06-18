package §]#K§
{
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import §];§.§-!t§;
   import §];§.§;!r§;
   import §^#]§.§@!g§;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const §8#Q§:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         var _loc2_:§;!r§ = §-!t§.§ "D§.tournamentRules;
         var _loc3_:String = _loc2_.§@!l§;
         §@!g§.§?$5§(§8#Q§ + "_" + _loc3_,§8#Q§,§1"6§.mClip);
         §1"6§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§]2§);
      }
      
      private function §]2§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
