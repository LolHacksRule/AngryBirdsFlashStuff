package §[";§
{
   import §%#v§.§0"j§;
   import §+"u§.§6!9§;
   import §+"u§.§^"C§;
   import §8"b§.§&!b§;
   import §;$5§.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const §<&§:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         var _loc2_:§6!9§ = §^"C§.§?q§.tournamentRules;
         var _loc3_:String = _loc2_.§9d§;
         §&!b§.§<#n§(§<&§ + "_" + _loc3_,§<&§,§8#Y§.mClip);
         §8#Y§.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.§>"J§);
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         close();
      }
   }
}
