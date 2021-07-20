package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIButtonGroupRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
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
      
      public function UIRepeaterRovio(param1:XML, param2:UIContainerRovio, param3:UIView, param4:MovieClip = null)
      {
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Number = NaN;
         var _loc17_:XML = null;
         var _loc18_:XML = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         super(param1,param2,param3,param4);
         this.inventoryButtonBaseName = param1.@button;
         if(this.inventoryButtonBaseName.length > 0)
         {
            this.mButtonClass = AssetCache.getAssetFromCache(this.inventoryButtonBaseName);
         }
         var _loc5_:String;
         if((_loc5_ = param1.@buttonIconContainer).length > 0)
         {
            this.mButtonIconContainer = _loc5_;
         }
         this.mButtonAlignment = ALIGN_CENTER;
         if(param1.@buttonAlign)
         {
            if((_loc14_ = param1.@buttonAlign).toUpperCase() == "BOTTOM")
            {
               this.mButtonAlignment = ALIGN_BOTTOM;
            }
         }
         this.mSurfaceAlignment = ALIGN_LEFT;
         if(param1.@surfaceAlign)
         {
            if((_loc15_ = param1.@surfaceAlign).toUpperCase() == "CENTER")
            {
               this.mSurfaceAlignment = ALIGN_CENTER;
            }
         }
         var _loc6_:String;
         if((_loc6_ = param1.@GlowFilter) && _loc6_.length > 0)
         {
            _loc16_ = param1.@GlowFilter;
            this.mGlowFilter = new GlowFilter(_loc16_,1,3,3,10);
         }
         if(this.mClip.getChildByName("Button_Scroll1") != null)
         {
            (_loc17_ = <Button/>).@name = "Button_Scroll1";
            _loc17_.@MouseUp = "SCROLL_LEFT";
            mItems.push(new UIButtonRovio(_loc17_,this));
         }
         if(this.mClip.getChildByName("Button_Scroll2") != null)
         {
            (_loc18_ = <Button/>).@name = "Button_Scroll2";
            _loc18_.@MouseUp = "SCROLL_RIGHT";
            mItems.push(new UIButtonRovio(_loc18_,this));
         }
         this.mSurfaceX = mClip.getChildByName("Surface").x;
         this.mSurfaceY = mClip.getChildByName("Surface").y;
         this.mSurfaceW = mClip.getChildByName("Surface").width;
         this.mSurfaceH = mClip.getChildByName("Surface").height;
         this.mFirstButtonX = mClip.getChildByName("Button_Area1").x - this.mSurfaceX;
         this.mFirstButtonY = mClip.getChildByName("Button_Area1").y - this.mSurfaceY;
         var _loc7_:Number = mClip.getChildByName("Button_Area2").x - this.mSurfaceX;
         var _loc8_:Number = mClip.getChildByName("Button_Area2").y - this.mSurfaceY;
         var _loc9_:Rectangle = mClip.getChildByName("Button_Area1").getRect(mClip);
         this.mButtonBottomMargin = _loc9_.bottom - this.mSurfaceY - this.mFirstButtonY;
         this.mButtonMarginX = _loc7_ - this.mFirstButtonX;
         this.mButtonMarginY = _loc8_ - this.mFirstButtonY;
         if(Math.abs(this.mButtonMarginX) < 3)
         {
            this.mButtonMarginX = 0;
         }
         if(Math.abs(this.mButtonMarginY) < 3)
         {
            this.mButtonMarginY = 0;
         }
         var _loc10_:Number = 9999;
         var _loc11_:Number = 9999;
         if(this.mButtonMarginX != 0)
         {
            _loc10_ = 1 + (mClip.getChildByName("Surface").width - this.mFirstButtonX - this.mFirstButtonX) / this.mButtonMarginX;
         }
         if(this.mButtonMarginY != 0)
         {
            _loc11_ = 1 + (mClip.getChildByName("Surface").height - this.mFirstButtonY - this.mFirstButtonY) / this.mButtonMarginY;
         }
         this.mButtonCountOnSurface = Math.min(_loc10_,_loc11_);
         this.mSideScrolling = _loc10_ <= _loc11_;
         var _loc12_:String;
         if((_loc12_ = param1.@ScrollPerClick) && _loc12_.length > 0)
         {
            this.mItemCountForScrolling = param1.@ScrollPerClick;
         }
         else
         {
            this.mItemCountForScrolling = this.mButtonCountOnSurface;
         }
         this.mTrackCount = 1;
         if(mClip.getChildByName("Button_Area3"))
         {
            _loc19_ = mClip.getChildByName("Button_Area3").x - this.mSurfaceX;
            _loc20_ = mClip.getChildByName("Button_Area3").y - this.mSurfaceY;
            this.mButtonMarginX2 = _loc19_ - this.mFirstButtonX;
            this.mButtonMarginY2 = _loc20_ - this.mFirstButtonY;
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
         var _loc13_:String;
         if((_loc13_ = param1.@backgroundInstance) && _loc13_.length > 0)
         {
            this.mBackgroundMovieClip = mClip.getChildByName(param1.@backgroundInstance) as MovieClip;
            this.mBackgroundLeftMargin = this.mBackgroundMovieClip.x - mClip.getChildByName("Surface").x;
            this.mBackgroundTopMargin = this.mBackgroundMovieClip.y - mClip.getChildByName("Surface").y;
            this.mBackgroundHMargins = this.mBackgroundMovieClip.x + this.mBackgroundMovieClip.width - (this.mBackgroundMovieClip.x + mClip.getChildByName("Surface").width);
            this.mBackgroundVMargins = this.mBackgroundMovieClip.y + this.mBackgroundMovieClip.height - (this.mBackgroundMovieClip.y + mClip.getChildByName("Surface").height);
            this.mBackgroundHScaleEnabled = param1.@backgroundScaleH.toUpperCase() == "TRUE";
            this.mBackgroundVScaleEnabled = param1.@backgroundScaleV.toUpperCase() == "TRUE";
         }
         mClip.removeChild(mClip.getChildByName("Surface"));
         mClip.removeChild(mClip.getChildByName("Button_Area1"));
         mClip.removeChild(mClip.getChildByName("Button_Area2"));
         if(param1.@buttonSelectionType)
         {
            switch(param1.@buttonSelectionType.toString())
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
      
      public function loadTabs(param1:Array = null, param2:Class = null) : void
      {
         var _loc4_:String = null;
         var _loc5_:MovieClip = null;
         var _loc6_:XML = null;
         var _loc7_:UIRepeaterTabRovio = null;
         var _loc8_:UIButtonGroupRovio = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XML = null;
         var _loc13_:UIRepeaterButtonRovio = null;
         var _loc14_:MovieClip = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         if(param2 == null)
         {
            param2 = UIRepeaterButtonRovio;
         }
         this.mButtonGroups = new Vector.<UIButtonGroupRovio>();
         this.clearTabs();
         if(!param1)
         {
            param1 = new Array();
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = mName + "_Tab_" + _loc3_;
            _loc5_ = new MovieClip();
            (_loc6_ = <Container/>).@name = _loc4_;
            _loc7_ = new UIRepeaterTabRovio(_loc6_,this,null,_loc5_);
            mItems.push(_loc7_);
            _loc8_ = new UIButtonGroupRovio(this.mButtonSelectionMode,_loc4_);
            this.mButtonGroups.push(_loc8_);
            _loc9_ = this.mFirstButtonX;
            _loc10_ = this.mButtonCountOnSurface;
            if((param1[_loc3_] as Array).length < _loc10_)
            {
               _loc10_ = (param1[_loc3_] as Array).length;
            }
            if(this.mSurfaceAlignment == ALIGN_CENTER)
            {
               _loc9_ = (this.mSurfaceW - (_loc10_ - 1) * this.mButtonMarginX) / 2;
            }
            _loc11_ = 0;
            while(_loc11_ < (param1[_loc3_] as Array).length)
            {
               _loc12_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[0] as XML;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[2])
               {
                  _loc7_.mItems.push(new param2(_loc12_,_loc7_,((param1[_loc3_] as Array)[_loc11_] as Array)[2] as MovieClip));
               }
               else
               {
                  _loc7_.mItems.push(new param2(_loc12_,_loc7_,new this.mButtonClass() as MovieClip));
               }
               _loc13_ = _loc7_.mItems[_loc7_.mItems.length - 1] as UIRepeaterButtonRovio;
               if(((param1[_loc3_] as Array)[_loc11_] as Array)[1] != null)
               {
                  _loc14_ = ((param1[_loc3_] as Array)[_loc11_] as Array)[1] as MovieClip;
                  _loc13_.setIcon(_loc14_,this.mButtonIconContainer);
                  if(this.mButtonAlignment == ALIGN_BOTTOM)
                  {
                     _loc15_ = 2;
                     _loc14_.y -= _loc14_.height / 2;
                     if(this.mButtonIconContainer == null)
                     {
                        _loc14_.y -= _loc15_;
                     }
                  }
               }
               if(this.mTrackCount == 1)
               {
                  _loc13_.x = _loc9_ + _loc11_ * this.mButtonMarginX;
                  _loc13_.y = this.mFirstButtonY + _loc11_ * this.mButtonMarginY;
               }
               else
               {
                  _loc16_ = _loc11_ / (this.mButtonCountOnSurface * this.mTrackCount);
                  _loc17_ = (_loc11_ - _loc16_ * this.mButtonCountOnSurface * this.mTrackCount) / this.mButtonCountOnSurface;
                  _loc18_ = (_loc11_ - _loc16_ * this.mButtonCountOnSurface * this.mTrackCount) % this.mButtonCountOnSurface;
                  if(this.mSideScrolling)
                  {
                     _loc13_.x = _loc9_ + _loc18_ * this.mButtonMarginX + _loc16_ * this.mButtonCountOnSurface * this.mButtonMarginX;
                     _loc13_.y = this.mFirstButtonY + _loc17_ * this.mButtonMarginY2;
                  }
                  else
                  {
                     _loc13_.x = _loc9_ + _loc17_ * this.mButtonMarginX2;
                     _loc13_.y = this.mFirstButtonY + _loc18_ * this.mButtonMarginY + _loc16_ * this.mButtonCountOnSurface * this.mButtonMarginY;
                  }
               }
               _loc8_.addButton(_loc13_);
               _loc11_++;
            }
            _loc8_.buttonSelected("");
            _loc7_.initTab(this.mButtonCountOnSurface,this.mSurfaceX,this.mSurfaceY,this.mItemCountForScrolling * this.mButtonMarginX,this.mItemCountForScrolling * this.mButtonMarginY,this.mTrackCount,this.mItemCountForScrolling);
            _loc3_++;
         }
         if(param1.length > 1)
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
      
      override public function childUIEventOccured(param1:int, param2:String, param3:UIEventListenerRovio, param4:Event = null) : void
      {
         var _loc6_:UIButtonGroupRovio = null;
         var _loc5_:UIRepeaterTabRovio = getItemByName(this.mVisibleTabName) as UIRepeaterTabRovio;
         if(param2.toUpperCase() == "SCROLL_LEFT")
         {
            if(_loc5_)
            {
               _loc5_.setCurrentPage(_loc5_.mCurrentPage - 1);
               this.updateScrollButtonStates();
            }
         }
         else if(param2.toUpperCase() == "SCROLL_RIGHT")
         {
            if(_loc5_)
            {
               _loc5_.setCurrentPage(_loc5_.mCurrentPage + 1);
               this.updateScrollButtonStates();
            }
         }
         else if(param2.length > 0 && (param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_DOWN || param1 == UIEventListenerRovio.LISTENER_EVENT_MOUSE_UP) && param3 is UIComponentRovio)
         {
            if((_loc6_ = this.getButtonGroupByName((param3 as UIComponentRovio).mParentContainer.mName.toUpperCase())) && param3 is UIRepeaterButtonRovio)
            {
               _loc6_.buttonSelected((param3 as UIComponentRovio).mName.toUpperCase());
            }
         }
         super.childUIEventOccured(param1,param2,param3,param4);
      }
      
      public function setPageForTab(param1:String, param2:int) : void
      {
         var _loc3_:UIRepeaterTabRovio = getItemByName(param1) as UIRepeaterTabRovio;
         if(_loc3_)
         {
            _loc3_.setCurrentPage(param2);
            this.updateScrollButtonStates();
         }
      }
      
      public function getButtonGroupByName(param1:String) : UIButtonGroupRovio
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mButtonGroups.length)
         {
            if(param1.toUpperCase() == (this.mButtonGroups[_loc2_] as UIButtonGroupRovio).mName.toUpperCase())
            {
               return this.mButtonGroups[_loc2_] as UIButtonGroupRovio;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function setVisibleTab(param1:String) : void
      {
         this.mVisibleTabName = param1;
         var _loc2_:int = 0;
         while(_loc2_ < mItems.length)
         {
            if(mItems[_loc2_] is UIRepeaterTabRovio)
            {
               if((mItems[_loc2_] as UIRepeaterTabRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (mItems[_loc2_] as UIRepeaterTabRovio).setActiveStatus(true);
                  if(this.mBackgroundHScaleEnabled)
                  {
                     this.mBackgroundMovieClip.x = (mItems[_loc2_] as UIRepeaterTabRovio).x + this.mBackgroundLeftMargin;
                     this.mBackgroundMovieClip.width = (mItems[_loc2_] as UIRepeaterTabRovio).width + this.mBackgroundHMargins;
                  }
                  if(this.mBackgroundVScaleEnabled)
                  {
                     this.mBackgroundMovieClip.y = (mItems[_loc2_] as UIRepeaterTabRovio).y + this.mBackgroundTopMargin;
                     this.mBackgroundMovieClip.height = (mItems[_loc2_] as UIRepeaterTabRovio).height + this.mBackgroundVMargins;
                  }
               }
               else
               {
                  (mItems[_loc2_] as UIRepeaterTabRovio).setActiveStatus(false);
               }
            }
            _loc2_++;
         }
         this.updateScrollButtonStates();
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:UIButtonGroupRovio = null;
         super.setEnabled(param1,param2);
         for each(_loc3_ in this.mButtonGroups)
         {
            _loc3_.setEnabled(param1,param2);
         }
      }
      
      public function updateScrollButtonStates() : void
      {
         if(getItemByName("Button_Scroll1") == null && getItemByName("Button_Scroll2") == null)
         {
            return;
         }
         var _loc1_:UIRepeaterTabRovio = getItemByName(this.mVisibleTabName) as UIRepeaterTabRovio;
         if(_loc1_)
         {
            if(_loc1_.mCurrentPage > 0)
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
            }
            else
            {
               (getItemByName("Button_Scroll1") as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
            }
            if(_loc1_.mCurrentPage < _loc1_.mTotalPageCount - 1)
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
         var _loc2_:UIRepeaterTabRovio = null;
         var _loc1_:int = mItems.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = mItems[_loc1_] as UIRepeaterTabRovio;
            if(_loc2_)
            {
               _loc2_.clear();
               mItems.splice(_loc1_,1);
            }
            _loc1_--;
         }
         this.setVisibleTab("");
      }
      
      public function resetSelections() : void
      {
         var _loc1_:UIButtonGroupRovio = null;
         for each(_loc1_ in this.mButtonGroups)
         {
            _loc1_.resetSelections();
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
      
      public function setSelections(param1:Array) : void
      {
         this.getButtonGroupByName(this.mVisibleTabName).setSelections(param1);
      }
      
      public function setNumSelectable(param1:Number) : void
      {
         this.getButtonGroupByName(this.mVisibleTabName).setNumSelectable(param1);
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
