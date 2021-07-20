package com.angrybirds.popups
{
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import com.rovio.factory.XMLFactory;
   
   public class PopupWaiting extends PopupCustom
   {
      
      private static var sWaitingPopupBin:Class = PopupWaiting_sWaitingPopupBin;
       
      
      private var mIsCreditsButtonEnabled:Boolean;
      
      public function PopupWaiting()
      {
         mUseFadeLayer = true;
         mUseScaleEffect = false;
         mCenterToOrigin = true;
         super(PopupLayerIndexType.WAITING_LAYER_INDEX.DEFAULT,this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = XMLFactory.fromOctetStreamClass(sWaitingPopupBin);
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function dispose() : void
      {
      }
      
      override protected function closePressed() : void
      {
      }
   }
}
