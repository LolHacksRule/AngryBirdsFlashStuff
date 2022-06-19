package com.rovio.ui.Components
{
   import flash.display.MovieClip;
   
   public class UIRepeaterButtonRovio extends UIButtonRovio
   {
       
      
      public var mButtonIcon:MovieClip;
      
      public var mChildIndex:int = 0;
      
      public function UIRepeaterButtonRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
         if(data.@childIndex)
         {
            this.mChildIndex = data.@childIndex;
         }
      }
      
      public function setIcon(newClip:MovieClip, iconContainer:String = null, alignment:int = 0) : void
      {
         var container:MovieClip = null;
         var guide:MovieClip = null;
         this.mButtonIcon = newClip;
         this.mButtonIcon.mouseEnabled = false;
         this.mButtonIcon.mouseChildren = false;
         if(iconContainer != null)
         {
            container = mClip.getChildByName(iconContainer) as MovieClip;
            container.addChild(newClip);
            guide = container.getChildByName(iconContainer + "_Guide") as MovieClip;
            if(guide)
            {
               guide.visible = false;
            }
         }
         else if(this.mChildIndex < 1)
         {
            mClip.addChild(this.mButtonIcon);
         }
         else
         {
            mClip.addChildAt(this.mButtonIcon,this.mChildIndex - 1);
         }
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
