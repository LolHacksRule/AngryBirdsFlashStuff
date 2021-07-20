package com.angrybirds.ui.scroller
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.scroller.ScrollerItemRenderer;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Components.UIButtonRovio;
   import flash.display.MovieClip;
   
   public class ScrollerItemRendererCustom extends ScrollerItemRenderer
   {
       
      
      protected var mButtonClip:MovieClip;
      
      protected var mScrollerItem:UIButtonRovio;
      
      protected var mScrollerContainer:UIContainerRovio;
      
      protected var mItemHeight:Number;
      
      protected var mItemWidth:Number;
      
      public function ScrollerItemRendererCustom()
      {
         this.mItemHeight = this.mButtonClip.height;
         this.mItemWidth = this.mButtonClip.height;
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
      }
      
      public function createCustomItemRenderer(param1:UIContainerRovio, param2:String) : void
      {
         if(!data)
         {
            return;
         }
         if(!this.mScrollerItem)
         {
            this.createRovioButton(param1,param2);
            this.updateVisuals();
         }
      }
      
      public function hide(param1:UIContainerRovio) : void
      {
      }
      
      protected function updateVisuals() : void
      {
      }
      
      protected function createRovioButton(param1:UIContainerRovio, param2:String) : void
      {
      }
      
      public function disposeRovioButton(param1:UIContainerRovio) : void
      {
      }
      
      public function setSelected(param1:Boolean) : UIButtonRovio
      {
         if(param1)
         {
            this.mScrollerItem.setEnabled(false);
            this.mScrollerItem.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         }
         else
         {
            this.mScrollerItem.setEnabled(true);
            this.mScrollerItem.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         return this.mScrollerItem;
      }
      
      override public function get height() : Number
      {
         return this.mItemHeight;
      }
      
      override public function get width() : Number
      {
         return this.mItemWidth;
      }
   }
}
