package com.rovio.ui.popup
{
   public class PopupLayerData
   {
       
      
      public var popup:IPopup;
      
      public var useTransitionIn:Boolean;
      
      public var useTransitionOut:Boolean;
      
      public var useTransitionOutForPrevious:Boolean;
      
      public var allowQueue:Boolean = true;
      
      public function PopupLayerData(popup:IPopup, useTransitionIn:Boolean = false, useTransitionOut:Boolean = false, useTransitionOutForPrevious:Boolean = false)
      {
         super();
         this.popup = popup;
         this.useTransitionIn = useTransitionIn;
         this.useTransitionOut = useTransitionOut;
         this.useTransitionOutForPrevious = useTransitionOutForPrevious;
      }
   }
}
