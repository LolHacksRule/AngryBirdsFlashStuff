package com.rovio.ui.Components
{
   public class UIPopUpRovio extends UIContainerRovio
   {
       
      
      public function UIPopUpRovio(data:XML, parentContainer:UIContainerRovio)
      {
         super(data,parentContainer,null);
         this.setVisibility(false);
      }
      
      public function open() : void
      {
         this.setVisibility(true);
      }
      
      public function close() : void
      {
         this.setVisibility(false);
      }
   }
}
