package com.rovio.ui.Components
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var mButtonIcon:MovieClip;
      
      public function UIRepeaterButtonRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      public function setIcon(param1:MovieClip) : void
      {
         this.mButtonIcon = param1;
         this.mButtonIcon.mouseEnabled = false;
         this.mButtonIcon.mouseChildren = false;
         addChild(this.mButtonIcon);
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.mButtonIcon)
         {
            this.mButtonIcon = null;
         }
      }
      
      override public function setComponentState(param1:String) : void
      {
         super.setComponentState(param1);
         if(this.mButtonIcon && (mParentContainer.mParentContainer as UIRepeaterRovio).mGlowFilter)
         {
            if(param1 == COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               this.mButtonIcon.filters = [(mParentContainer.mParentContainer as UIRepeaterRovio).mGlowFilter];
            }
            else
            {
               this.mButtonIcon.filters = [];
            }
         }
      }
   }
}
