package com.rovio.ui.Components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const ALIGN_CENTER:int = 0;
      
      public static const ALIGN_BOTTOM:int = 1;
      
      public static const ALIGN_LEFT:int = 2;
       
      
      public var inventoryButtonBaseName:String;
      
      public var mButtonClass:Class;
      
      public var mButtonGroups:Array;
      
      public var mButtonCountOnSurface:int;
      
      public var mSurfaceX:Number;
      
      public var mSurfaceY:Number;
      
      public var mSurfaceW:Number;
      
      public var mSurfaceH:Number;
      
      public var mFirstButtonX:Number;
      
      public var mFirstButtonY:Number;
      
      public var mButtonMarginX:Number;
      
      public var mButtonMarginY:Number;
      
      public var mButtonMarginX2:Number;
      
      public var mButtonMarginY2:Number;
      
      public var mTrackCount:int;
      
      public var mButtonBottomMargin:Number;
      
      public var mVisibleTabName:String = "";
      
      public var mButtonAlignment:int;
      
      public var mSurfaceAlignment:int;
      
      public var mGlowFilter:GlowFilter;
      
      public var mSideScrolling:Boolean = true;
      
      public var mItemCountForScrolling:int;
      
      public var mButtonSelectionMode:int;
      
      public function UIRepeaterRovio(data:XML, parentContainer:UIContainerRovio, parentView:UIView)
      {
         var al:String = null;
         var value:String = null;
         var colorN:Number = NaN;
         var thirdButtonX:Number = NaN;
         var thirdButtonY:Number = NaN;
         super(data,parentContainer,parentView);
         this.inventoryButtonBaseName = data.@button;
         if(this.inventoryButtonBaseName.length > 0)
         {
            this.mButtonClass = AssetCache.getAssetFromCache(this.inventoryButtonBaseName);
         }
         this.mButtonAlignment = ALIGN_CENTER;
         if(data.@buttonAlign)
         {
            al = data.@buttonAlign;
            if(al.toUpperCase() == "BOTTOM")
            {
               this.mButtonAlignment = ALIGN_BOTTOM;
            }
         }
         this.mSurfaceAlignment = ALIGN_LEFT;
         if(data.@surfaceAlign)
         {
            value = data.@surfaceAlign;
            if(value.toUpperCase() == "CENTER")
            {
               this.mSurfaceAlignment = ALIGN_CENTER;
            }
         }
         var colorS:String = data.@GlowFilter;
         if(colorS && colorS.length > 0)
         {
            colorN = data.@GlowFilter;
            this.mGlowFilter = new GlowFilter(colorN,1,3,3,10);
         }
         var buttonScrollLeft:XML = <Button/>;
         buttonScrollLeft.@name = "Button_Scroll1";
         buttonScrollLeft.@MouseUp = "SCROLL_LEFT";
         mItems[mItems.length] = new UIButtonRovio(buttonScrollLeft,this);
         var buttonScrollRight:XML = <Button/>;
         buttonScrollRight.@name = "Button_Scroll2";
         buttonScrollRight.@MouseUp = "SCROLL_RIGHT";
         mItems[mItems.length] = new UIButtonRovio(buttonScrollRight,this);
         this.mSurfaceX = mClip.getChildByName("Surface").x;
         this.mSurfaceY = mClip.getChildByName("Surface").y;
         this.mSurfaceW = mClip.getChildByName("Surface").width;
         this.mSurfaceH = mClip.getChildByName("Surface").height;
         this.mFirstButtonX = mClip.getChildByName("Button_Area1").x - this.mSurfaceX;
         this.mFirstButtonY = mClip.getChildByName("Button_Area1").y - this.mSurfaceY;
         var secondButtonX:Number = mClip.getChildByName("Button_Area2").x - this.mSurfaceX;
         var secondButtonY:Number = mClip.getChildByName("Button_Area2").y - this.mSurfaceY;
         var r:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.mButtonBottomMargin = r.bottom - this.mSurfaceY - this.mFirstButtonY;
         this.mButtonMarginX = secondButtonX - this.mFirstButtonX;
         this.mButtonMarginY = secondButtonY - this.mFirstButtonY;
         if(Math.abs(this.mButtonMarginX) < 3)
         {
            this.mButtonMarginX = 0;
         }
         if(Math.abs(this.mButtonMarginY) < 3)
         {
            this.mButtonMarginY = 0;
         }
         var countX:Number = 9999;
         var countY:Number = 9999;
         if(this.mButtonMarginX != 0)
         {
            countX = 1 + (mClip.getChildByName("Surface").width - this.mFirstButtonX - this.mFirstButtonX) / this.mButtonMarginX;
         }
         if(this.mButtonMarginY != 0)
         {
            countY = 1 + (mClip.getChildByName("Surface").height - this.mFirstButtonY - this.mFirstButtonY) / this.mButtonMarginY;
         }
         this.mButtonCountOnSurface = Math.min(countX,countY);
         this.mSideScrolling = countX <= countY;
         var scrollCountPerClick:String = data.@ScrollPerClick;
         if(scrollCountPerClick && scrollCountPerClick.length > 0)
         {
            this.mItemCountForScrolling = data.@ScrollPerClick;
         }
         else
         {
            this.mItemCountForScrolling = this.mButtonCountOnSurface;
         }
         this.mTrackCount = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            thirdButtonX = mClip.getChildByName("Button_Area3").x - this.mSurfaceX;
            thirdButtonY = mClip.getChildByName("Button_Area3").y - this.mSurfaceY;
            this.mButtonMarginX2 = thirdButtonX - this.mFirstButtonX;
            this.mButtonMarginY2 = thirdButtonY - this.mFirstButtonY;
            if(Math.abs(this.mButtonMarginX2) < 3)
            {
               this.mButtonMarginX2 = 0;
            }
            if(Math.abs(this.mButtonMarginY2) < 3)
            {
               this.mButtonMarginY2 = 0;
            }
            if(this.mSideScrolling)
            {
               this.mTrackCount = 1 + (mClip.getChildByName("Surface").height - this.mFirstButtonY - this.mFirstButtonY) / this.mButtonMarginY2;
            }
            else
            {
               this.mTrackCount = 1 + (mClip.getChildByName("Surface").width - this.mFirstButtonX - this.mFirstButtonX) / this.mButtonMarginX2;
            }
            mClip.removeChild(mClip.getChildByName("Button_Area3"));
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(data.@buttonSelectionType)
         {
            switch(data.@buttonSelectionType.toString())
            {
               case "NO_SELECTION":
                  this.mButtonSelectionMode = UIButtonGroupRovio.TYPE_NO_SELECTION;
                  break;
               case "EXCLUSIVE":
               default:
                  this.mButtonSelectionMode = UIButtonGroupRovio.TYPE_EXCLUSIVE_BUTTONS;
            }
         }
         this.loadTabs();
      }
      
      public function loadTabs(inventory:Array = null) : void
      {
         var tabName:String = null;
         var containerSprite:MovieClip = null;
         var container:XML = null;
         var containerUI:UIRepeaterTabRovio = null;
         var firstX:int = 0;
         var numButtons:int = 0;
         var but:int = 0;
         var button:XML = null;
         var repeaterButton:UIRepeaterButtonRovio = null;
         var mc:MovieClip = null;
         var MARGIN:int = 0;
         var pageIndex:int = 0;
         var trackIndex:int = 0;
         var positionInTrack:int = 0;
         this.mButtonGroups = new Array();
         this.clearTabs();
         if(inventory == null)
         {
            inventory = getParentView().getRepeaterDataXML(mName);
         }
         if(!inventory)
         {
            inventory = new Array();
         }
         for(var tab:int = 0; tab < inventory.length; tab++)
         {
            tabName = mName + "_Tab_" + tab;
            containerSprite = new MovieClip();
            container = <Container/>;
            container.@name = tabName;
            mItems[mItems.length] = new UIRepeaterTabRovio(container,this,null,containerSprite);
            containerUI = mItems[mItems.length - 1];
            this.mButtonGroups[this.mButtonGroups.length] = new UIButtonGroupRovio(this.mButtonSelectionMode,tabName);
            firstX = this.mFirstButtonX;
            numButtons = this.mButtonCountOnSurface;
            if((inventory[tab] as Array).length < numButtons)
            {
               numButtons = (inventory[tab] as Array).length;
            }
            if(this.mSurfaceAlignment == ALIGN_CENTER)
            {
               firstX = (this.mSurfaceW - (numButtons - 1) * this.mButtonMarginX) / 2;
            }
            for(but = 0; but < (inventory[tab] as Array).length; but++)
            {
               button = ((inventory[tab] as Array)[but] as Array)[0] as XML;
               if(((inventory[tab] as Array)[but] as Array)[2])
               {
                  containerUI.mItems[containerUI.mItems.length] = new UIRepeaterButtonRovio(button,containerUI,((inventory[tab] as Array)[but] as Array)[2] as MovieClip);
               }
               else
               {
                  containerUI.mItems[containerUI.mItems.length] = new UIRepeaterButtonRovio(button,containerUI,new this.mButtonClass() as MovieClip);
               }
               repeaterButton = containerUI.mItems[containerUI.mItems.length - 1] as UIRepeaterButtonRovio;
               if(((inventory[tab] as Array)[but] as Array)[1] != null)
               {
                  mc = ((inventory[tab] as Array)[but] as Array)[1] as MovieClip;
                  repeaterButton.setIcon(mc);
                  if(this.mButtonAlignment == ALIGN_BOTTOM)
                  {
                     MARGIN = 2;
                     mc.y += this.mButtonBottomMargin - mc.height / 2 - MARGIN;
                  }
               }
               if(this.mTrackCount == 1)
               {
                  repeaterButton.x = firstX + but * this.mButtonMarginX;
                  repeaterButton.y = this.mFirstButtonY + but * this.mButtonMarginY;
               }
               else
               {
                  pageIndex = but / (this.mButtonCountOnSurface * this.mTrackCount);
                  trackIndex = (but - pageIndex * this.mButtonCountOnSurface * this.mTrackCount) / this.mButtonCountOnSurface;
                  positionInTrack = (but - pageIndex * this.mButtonCountOnSurface * this.mTrackCount) % this.mButtonCountOnSurface;
                  if(this.mSideScrolling)
                  {
                     repeaterButton.x = firstX + positionInTrack * this.mButtonMarginX + pageIndex * this.mButtonCountOnSurface * this.mButtonMarginX;
                     repeaterButton.y = this.mFirstButtonY + trackIndex * this.mButtonMarginY2;
                  }
                  else
                  {
                     repeaterButton.x = firstX + trackIndex * this.mButtonMarginX2;
                     repeaterButton.y = this.mFirstButtonY + positionInTrack * this.mButtonMarginY + pageIndex * this.mButtonCountOnSurface * this.mButtonMarginY;
                  }
               }
               (this.mButtonGroups[this.mButtonGroups.length - 1] as UIButtonGroupRovio).addButton(repeaterButton);
            }
            (this.mButtonGroups[this.mButtonGroups.length - 1] as UIButtonGroupRovio).buttonSelected("");
            containerUI.initTab(this.mButtonCountOnSurface,this.mSurfaceX,this.mSurfaceY,this.mItemCountForScrolling * this.mButtonMarginX,this.mItemCountForScrolling * this.mButtonMarginY,this.mTrackCount,this.mItemCountForScrolling);
         }
         if(inventory.length > 1)
         {
         }
      }
      
      override public function containerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var temp:UIButtonGroupRovio = null;
         super.containerEventOccured(eventIndex,eventName,component);
         var tab:UIRepeaterTabRovio = getItemByName(this.mVisibleTabName) as UIRepeaterTabRovio;
         if(eventName.toUpperCase() == "SCROLL_LEFT")
         {
            if(tab)
            {
               tab.setCurrentPage(tab.mCurrentPage - 1);
               this.updateScrollButtonStates();
            }
         }
         else if(eventName.toUpperCase() == "SCROLL_RIGHT")
         {
            if(tab)
            {
               tab.setCurrentPage(tab.mCurrentPage + 1);
               this.updateScrollButtonStates();
            }
         }
         else if(eventName.length > 0 && (eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN || eventIndex == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP) && component is UIComponentRovio)
         {
            temp = this.getButtonGroupByName((component as UIComponentRovio).mParentContainer.mName.toUpperCase());
            if(temp && component is UIRepeaterButtonRovio)
            {
               temp.buttonSelected((component as UIComponentRovio).mName.toUpperCase());
            }
         }
      }
      
      public function setPageForTab(tabName:String, pageIndex:int) : void
      {
         var tab:UIRepeaterTabRovio = getItemByName(tabName) as UIRepeaterTabRovio;
         if(tab)
         {
            tab.setCurrentPage(pageIndex);
            this.updateScrollButtonStates();
         }
      }
      
      public function getButtonGroupByName(name:String) : UIButtonGroupRovio
      {
         for(var i:int = 0; i < this.mButtonGroups.length; i++)
         {
            if(name.toUpperCase() == (this.mButtonGroups[i] as UIButtonGroupRovio).mName.toUpperCase())
            {
               return this.mButtonGroups[i] as UIButtonGroupRovio;
            }
         }
         return null;
      }
      
      public function setVisibleTab(visibleTabName:String) : void
      {
         this.mVisibleTabName = visibleTabName;
         for(var i:int = 0; i < mItems.length; i++)
         {
            if(mItems[i] is UIRepeaterTabRovio)
            {
               if((mItems[i] as UIRepeaterTabRovio).mName.toUpperCase() == visibleTabName.toUpperCase())
               {
                  (mItems[i] as UIRepeaterTabRovio).setActiveStatus(true);
               }
               else
               {
                  (mItems[i] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
         }
         this.updateScrollButtonStates();
      }
      
      public function updateScrollButtonStates() : void
      {
         var tab:UIRepeaterTabRovio = getItemByName(this.mVisibleTabName) as UIRepeaterTabRovio;
         if(tab)
         {
            if(tab.mCurrentPage > 0)
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            }
            if(tab.mCurrentPage < tab.mTotalPageCount - 1)
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            }
         }
         else
         {
            (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            (getItemByName("Button_Scroll2") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
         }
      }
      
      public function clearTabs() : void
      {
         for(var i:int = 0; i < mItems.length; i++)
         {
            if(mItems[i] is UIRepeaterTabRovio)
            {
               (mItems[i] as UIRepeaterTabRovio).clear();
               mItems.splice(i,1);
               i--;
            }
         }
         this.setVisibleTab("");
      }
      
      public function resetSelections() : void
      {
         var group:UIButtonGroupRovio = null;
         for each(group in this.mButtonGroups)
         {
            group.buttonSelected("");
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.mButtonClass = null;
         this.mButtonGroups = null;
         this.mGlowFilter = null;
      }
   }
}
