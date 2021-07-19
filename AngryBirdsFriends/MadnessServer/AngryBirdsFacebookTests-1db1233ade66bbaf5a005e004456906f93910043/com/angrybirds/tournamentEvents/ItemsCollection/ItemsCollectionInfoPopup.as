package com.angrybirds.tournamentEvents.ItemsCollection
{
   import com.angrybirds.tournament.TournamentModel;
   import com.angrybirds.tournament.TournamentRules;
   import com.angrybirds.utils.FriendsUtil;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.events.MouseEvent;
   
   public class ItemsCollectionInfoPopup extends AbstractPopup
   {
      
      public static const ID:String = "ItemsCollectionInfoPopup";
      
      private static const COLLECTION_IMAGE_NAME:String = "CollectionItemImage";
       
      
      public function ItemsCollectionInfoPopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_ItemsCollectorInfo[0],ID);
      }
      
      override protected function show(useTransition:Boolean = false) : void
      {
         super.show(useTransition);
         var tournamentRules:TournamentRules = TournamentModel.instance.tournamentRules;
         var brandName:String = tournamentRules.brandedFrameLabel;
         FriendsUtil.doBrandedImageReplacement(COLLECTION_IMAGE_NAME + "_" + brandName,COLLECTION_IMAGE_NAME,mContainer.mClip);
         mContainer.mClip.btnOK.addEventListener(MouseEvent.CLICK,this.onClose);
      }
      
      private function onClose(e:MouseEvent) : void
      {
         close();
      }
   }
}
