package com.rovio.ui.Components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   
   public class UIContainerRovio extends UIComponentRovio
   {
       
      
      public var mParentView:UIView;
      
      public var mItems:Array;
      
      public var mRepeaterTab:Boolean = false;
      
      public function UIContainerRovio(param1:XML, param2:UIContainerRovio, param3:UIView, param4:MovieClip = null)
      {
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:XML = null;
         var _loc9_:XML = null;
         var _loc10_:XML = null;
         var _loc11_:Class = null;
         super(param1,param2,param4);
         this.mItems = new Array();
         if(param3)
         {
            this.mParentView = param3;
            _loc11_ = AssetCache.getAssetFromCache(mName);
            mClip = new _loc11_();
            addChild(mClip);
            this.mParentView.mMovieClip.addChild(this);
         }
         for each(_loc5_ in param1.Container)
         {
            this.mItems[this.mItems.length] = new UIContainerRovio(_loc5_,this,null);
         }
         for each(_loc6_ in param1.Repeater)
         {
            this.mItems[this.mItems.length] = new UIRepeaterRovio(_loc6_,this,null);
         }
         for each(_loc7_ in param1.Button)
         {
            this.mItems[this.mItems.length] = new UIButtonRovio(_loc7_,this);
         }
         for each(_loc8_ in param1.TextField)
         {
            this.mItems[this.mItems.length] = new UITextFieldRovio(_loc8_,this);
         }
         for each(_loc9_ in param1.MovieClip)
         {
            this.mItems[this.mItems.length] = new UIMovieClipRovio(_loc9_,this);
         }
         for each(_loc10_ in param1.Popup)
         {
            this.mItems[this.mItems.length] = new UIPopUpRovio(_loc10_,this);
         }
         this.readInitialVisibility(param1);
         if(param1.@MouseDown.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_DOWN,param1.@MouseDown);
         }
         if(param1.@MouseUp.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_UP,param1.@MouseUp);
         }
         if(param1.@MouseOver.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,param1.@MouseOver);
         }
         if(param1.@MouseOut.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,param1.@MouseOut);
         }
      }
      
      override public function readInitialVisibility(param1:XML) : void
      {
         if(!mClip)
         {
            return;
         }
         var _loc2_:String = param1.@visible;
         if(_loc2_ && _loc2_.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         _loc2_ = param1.@enabled;
         if(_loc2_ && _loc2_.toUpperCase() == "TRUE")
         {
            this.setEnabled(true);
         }
         else
         {
            this.setEnabled(false);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function containerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(param1,param2,param3);
         }
         else if(this.mParentView)
         {
            this.mParentView.listenerEventOccured(param1,param2,param3);
         }
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mItems.length)
         {
            if(this.mItems[_loc2_] is UIComponentRovio)
            {
               (this.mItems[_loc2_] as UIComponentRovio).setActiveStatus(param1);
            }
            _loc2_++;
         }
         super.setActiveStatus(param1);
      }
      
      override public function clear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mItems.length)
         {
            if(this.mItems[_loc1_] is UIComponentRovio)
            {
               (this.mItems[_loc1_] as UIComponentRovio).clear();
            }
            _loc1_++;
         }
         this.mItems = null;
         if(this.mParentView)
         {
            this.mParentView.mMovieClip.removeChild(this);
         }
         super.clear();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
      }
      
      public function setItemVisibilityByName(param1:String, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         if(mName.toUpperCase() == param1)
         {
            this.setVisibility(param2);
         }
         else
         {
            _loc3_ = this.getItemByName(param1);
            if(_loc3_ is UIComponentRovio)
            {
               (_loc3_ as UIComponentRovio).setVisibility(param2);
            }
            else
            {
               Log.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + param1 + " does not exist");
            }
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         var _loc3_:UIComponentRovio = null;
         param1 = param1.toUpperCase();
         if(mName.toUpperCase() == param1)
         {
            return this;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mItems.length)
         {
            if(this.mItems[_loc2_] is UIComponentRovio)
            {
               if((this.mItems[_loc2_] as UIComponentRovio).mName.toUpperCase() == param1)
               {
                  return this.mItems[_loc2_] as UIComponentRovio;
               }
               if(this.mItems[_loc2_] is UIContainerRovio)
               {
                  _loc3_ = (this.mItems[_loc2_] as UIContainerRovio).getItemByName(param1);
                  if(_loc3_ != null)
                  {
                     return _loc3_;
                  }
               }
            }
            _loc2_++;
         }
         return null;
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         mouseEnabled = param1;
         mClip.mouseEnabled = param1;
      }
      
      override public function getParentView() : UIView
      {
         if(this.mParentView)
         {
            return this.mParentView;
         }
         return super.getParentView();
      }
   }
}
