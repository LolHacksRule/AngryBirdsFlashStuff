package com.rovio.ui.popup
{
   public class PopupLayerData
   {
       
      
      public var popup:IPopup;
      
      public var useTransitionIn:Boolean;
      
      public var useTransitionOut:Boolean;
      
      public var useTransitionOutForPrevious:Boolean;
      
      public var allowQueue:Boolean = true;
      
      public function PopupLayerData(param1:IPopup, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false)
      {
         super();
         this.popup = param1;
         this.useTransitionIn = param2;
         this.useTransitionOut = param3;
         this.useTransitionOutForPrevious = param4;
      }
   }
}
