package com.angrybirds.popups
{
   import com.rovio.utils.DynamicLanguage;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.popup.PopupLayerIndexType;
   import com.rovio.ui.popup.PopupPriorityType;
   import each.XMLFactory;
   
   public class PopupLogout extends PopupCustom
   {
      
      private static var sLogoutPopupBin:Class = PopupLogout_sLogoutPopupBin;
       
      
      private var mReallyLogout:Boolean;
      
      public function PopupLogout()
      {
         mUseFadeLayer = true;
         mUseScaleEffect = true;
         mCenterToOrigin = true;
         super(PopupLayerIndexType.LOGIN_AND_LOGOUT_LAYER_INDEX,PopupPriorityType.DEFAULT,this.getViewXML());
      }
      
      protected function getViewXML() : XML
      {
         var _loc1_:XML = XMLFactory.fromOctetStreamClass(sLogoutPopupBin);
         return AngryBirdsCustom.changeXMLWitdh(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.mReallyLogout = false;
         this.updateTextFields();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.mReallyLogout = true;
               close();
               SoundEngine.playSound("Menu_Confirm");
               break;
            case "LOGOUT_NO":
               this.closePressed();
         }
      }
      
      override protected function closePressed() : void
      {
         close();
         SoundEngine.playSound("Menu_Back");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.mReallyLogout)
         {
            (AngryBirdsBase.singleton as AngryBirdsCustom).quitGame();
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         DynamicLanguage.instance.updateTextFields(mContainer,"Logout_Popup");
      }
   }
}
