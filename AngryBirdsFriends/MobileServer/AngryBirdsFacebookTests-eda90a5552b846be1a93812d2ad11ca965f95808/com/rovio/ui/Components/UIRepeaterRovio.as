package com.rovio.ui.Components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class UIRepeaterRovio extends UIContainerRovio
   {
      
      public static const ALIGN_CENTER:int = 0;
      
      public static const ALIGN_BOTTOM:int = 1;
      
      public static const ALIGN_LEFT:int = 2;
       
      
      public var inventoryButtonBaseName:String;
      
      public var mButtonClass:Class;
      
      public var mButtonIconContainer:String = null;
      
      public var mButtonGroups:Vector.<UIButtonGroupRovio>;
      
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
      
      public var mBackgroundHMargins:Number = 0;
      
      public var mBackgroundVMargins:Number = 0;
      
      public var mBackgroundLeftMargin:Number = 0;
      
      public var mBackgroundTopMargin:Number = 0;
      
      public var mBackgroundHScaleEnabled:Boolean = false;
      
      public var mBackgroundVScaleEnabled:Boolean = false;
      
      public var mBackgroundMovieClip:MovieClip = null;
      
      public function UIRepeaterRovio(data:XML, parentContainer:UIContainerRovio, parentView:UIView, clip:MovieClip = null)
      {
         var al:String = null;
         var value:String = null;
         var colorN:Number = NaN;
         var buttonScrollLeft:XML = null;
         var buttonScrollRight:XML = null;
         var thirdButtonX:Number = NaN;
         var thirdButtonY:Number = NaN;
         super(data,parentContainer,parentView,clip);
         this.inventoryButtonBaseName = data.@button;
         if(this.inventoryButtonBaseName.length > 0)
         {
            this.mButtonClass = AssetCache.getAssetFromCache(this.inventoryButtonBaseName);
         }
         var container:String = data.@buttonIconContainer;
         if(container.length > 0)
         {
            this.mButtonIconContainer = container;
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
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            buttonScrollLeft = <Button/>;
            buttonScrollLeft.@name = "Button_Scroll1";
            buttonScrollLeft.@MouseUp = "SCROLL_LEFT";
            mItems.push(new UIButtonRovio(buttonScrollLeft,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            buttonScrollRight = <Button/>;
            buttonScrollRight.@name = "Button_Scroll2";
            buttonScrollRight.@MouseUp = "SCROLL_RIGHT";
            mItems.push(new UIButtonRovio(buttonScrollRight,this));
         }
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
         var bgInstace:String = data.@backgroundInstance;
         if(bgInstace && bgInstace.length > 0)
         {
            this.mBackgroundMovieClip = mClip.getChildByName(data.@backgroundInstance) as MovieClip;
            this.mBackgroundLeftMargin = this.mBackgroundMovieClip.x - mClip.getChildByName("Surface").x;
            this.mBackgroundTopMargin = this.mBackgroundMovieClip.y - mClip.getChildByName("Surface").y;
            this.mBackgroundHMargins = this.mBackgroundMovieClip.x + this.mBackgroundMovieClip.width - (this.mBackgroundMovieClip.x + mClip.getChildByName("Surface").width);
            this.mBackgroundVMargins = this.mBackgroundMovieClip.y + this.mBackgroundMovieClip.height - (this.mBackgroundMovieClip.y + mClip.getChildByName("Surface").height);
            this.mBackgroundHScaleEnabled = data.@backgroundScaleH.toUpperCase() == "TRUE";
            this.mBackgroundVScaleEnabled = data.@backgroundScaleV.toUpperCase() == "TRUE";
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
      
      public function loadTabs(inventory:Array = null, buttonClass:Class = null) : void
      {
         var tabName:String = null;
         var containerSprite:MovieClip = null;
         var container:XML = null;
         var containerUI:UIRepeaterTabRovio = null;
         var buttonGroup:UIButtonGroupRovio = null;
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
         if(buttonClass == null)
         {
            buttonClass = UIRepeaterButtonRovio;
         }
         this.mButtonGroups = new Vector.<UIButtonGroupRovio>();
         this.clearTabs();
         if(!inventory)
         {
            inventory = new Array();
         }
         for(var tab:int = 0; tab < inventory.length; tab++)
         {
            tabName = name + "_Tab_" + tab;
            containerSprite = new MovieClip();
            container = <Container/>;
            container.@name = tabName;
            containerUI = new UIRepeaterTabRovio(container,this,null,containerSprite);
            mItems.push(containerUI);
            buttonGroup = new UIButtonGroupRovio(this.mButtonSelectionMode,tabName);
            this.mButtonGroups.push(buttonGroup);
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
                  containerUI.mItems.push(new buttonClass(button,containerUI,((inventory[tab] as Array)[but] as Array)[2] as MovieClip));
               }
               else
               {
                  containerUI.mItems.push(new buttonClass(button,containerUI,new this.mButtonClass() as MovieClip));
               }
               repeaterButton = containerUI.mItems[containerUI.mItems.length - 1] as UIRepeaterButtonRovio;
               if(((inventory[tab] as Array)[but] as Array)[1] != null)
               {
                  mc = ((inventory[tab] as Array)[but] as Array)[1] as MovieClip;
                  repeaterButton.setIcon(mc,this.mButtonIconContainer);
                  if(this.mButtonAlignment == ALIGN_BOTTOM)
                  {
                     MARGIN = 2;
                     mc.y -= mc.height / 2;
                     if(this.mButtonIconContainer == null)
                     {
                        mc.y -= MARGIN;
                     }
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
               buttonGroup.addButton(repeaterButton);
            }
            buttonGroup.buttonSelected("");
            containerUI.initTab(this.mButtonCountOnSurface,this.mSurfaceX,this.mSurfaceY,this.mItemCountForScrolling * this.mButtonMarginX,this.mItemCountForScrolling * this.mButtonMarginY,this.mTrackCount,this.mItemCountForScrolling);
         }
         if(inventory.length > 1)
         {
         }
      }
      
      public function get buttonsPerRow() : int
      {
         return this.mButtonCountOnSurface;
      }
      
      public function get numRowsInCurrentTab() : int
      {
         if(this.buttonsPerRow == 0)
         {
            return 0;
         }
         return this.getButtonGroupByName(this.mVisibleTabName).mButtons.length / this.buttonsPerRow + 1;
      }
      
      override public function childUIEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio, event:Event = null) : void
      {
         var temp:UIButtonGroupRovio = null;
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
            temp = this.getButtonGroupByName((component as UIComponentRovio).mParentContainer.upperCaseName);
            if(temp && component is UIRepeaterButtonRovio)
            {
               temp.buttonSelected((component as UIComponentRovio).upperCaseName);
            }
         }
         super.childUIEventOccured(eventIndex,eventName,component,event);
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
         visibleTabName = visibleTabName.toUpperCase();
         for(var i:int = 0; i < mItems.length; i++)
         {
            if(mItems[i] is UIRepeaterTabRovio)
            {
               if((mItems[i] as UIRepeaterTabRovio).upperCaseName == visibleTabName)
               {
                  (mItems[i] as UIRepeaterTabRovio).setActiveStatus(true);
                  if(this.mBackgroundHScaleEnabled)
                  {
                     this.mBackgroundMovieClip.x = (mItems[i] as UIRepeaterTabRovio).x + this.mBackgroundLeftMargin;
                     this.mBackgroundMovieClip.width = (mItems[i] as UIRepeaterTabRovio).width + this.mBackgroundHMargins;
                  }
                  if(this.mBackgroundVScaleEnabled)
                  {
                     this.mBackgroundMovieClip.y = (mItems[i] as UIRepeaterTabRovio).y + this.mBackgroundTopMargin;
                     this.mBackgroundMovieClip.height = (mItems[i] as UIRepeaterTabRovio).height + this.mBackgroundVMargins;
                  }
               }
               else
               {
                  (mItems[i] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
         }
         this.updateScrollButtonStates();
      }
      
      override public function setEnabled(enabled:Boolean, affectChildren:Boolean = false) : void
      {
         var group:UIButtonGroupRovio = null;
         super.setEnabled(enabled,affectChildren);
         for each(group in this.mButtonGroups)
         {
            group.setEnabled(enabled,affectChildren);
         }
      }
      
      public function updateScrollButtonStates() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
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
         var tab:UIRepeaterTabRovio = null;
         for(var i:int = mItems.length - 1; i >= 0; i--)
         {
            tab = mItems[i] as UIRepeaterTabRovio;
            if(tab)
            {
               tab.clear();
               mItems.splice(i,1);
            }
         }
         this.setVisibleTab("");
      }
      
      public function resetSelections() : void
      {
         var group:UIButtonGroupRovio = null;
         for each(group in this.mButtonGroups)
         {
            group.resetSelections();
         }
      }
      
      public function getCurrentSelections() : Array
      {
         if(this.getButtonGroupByName(this.mVisibleTabName) == null)
         {
            Log.log("ERROR! Tried to get selections for noninited repeater!");
            return new Array();
         }
         return this.getButtonGroupByName(this.mVisibleTabName).getCurrentSelection();
      }
      
      public function setSelections(selections:Array) : void
      {
         this.getButtonGroupByName(this.mVisibleTabName).setSelections(selections);
      }
      
      public function setNumSelectable(selectableNum:Number) : void
      {
         this.getButtonGroupByName(this.mVisibleTabName).setNumSelectable(selectableNum);
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
