package com.rovio.ui.Components
{
   public class UIPopUpRovio extends UIContainerRovio
   {
       
      
      public function UIPopUpRovio(param1:XML, param2:UIContainerRovio)
      {
         super(param1,param2,null);
      }
      
      public function open(param1:Boolean = true) : void
      {
         this.setVisibility(true);
      }
      
      public function close() : void
      {
         this.setVisibility(false);
      }
   }
}
