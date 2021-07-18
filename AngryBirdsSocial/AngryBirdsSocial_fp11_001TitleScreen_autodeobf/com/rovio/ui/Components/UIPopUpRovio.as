package com.rovio.ui.Components
{
   public class UIPopUpRovio extends UIContainerRovio
   {
       
      
      public function UIPopUpRovio(param1:XML, param2:UIContainerRovio)
      {
         super(param1,param2,null);
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
