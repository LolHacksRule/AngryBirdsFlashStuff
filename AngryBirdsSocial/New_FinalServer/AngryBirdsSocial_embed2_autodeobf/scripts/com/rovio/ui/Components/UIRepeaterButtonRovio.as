package com.rovio.ui.Components
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var mButtonIcon:MovieClip;
      
      public function UIRepeaterButtonRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
      }
      
      public function setIcon(newClip:MovieClip) : void
      {
         this.mButtonIcon = newClip;
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
      
      override public function setComponentState(newState:String) : void
      {
         super.setComponentState(newState);
         if(this.mButtonIcon && (mParentContainer.mParentContainer as UIRepeaterRovio).mGlowFilter)
         {
            if(newState == COMPONENT_STATE_ACTIVE_DEFAULT)
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
