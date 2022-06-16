package com.rovio.ui.Components
{
   public class UIPopUpRovio extends UIContainerRovio
   {
       
      
      public function UIPopUpRovio(data:XML, parentContainer:UIContainerRovio)
      {
         super(data,parentContainer,null);
      }
      
      public function open(useFadeEffect:Boolean = true) : void
      {
         this.setVisibility(true);
      }
      
      public function close() : void
      {
         this.setVisibility(false);
      }
   }
}
