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
      
      public function UIContainerRovio(data:XML, parentContainer:UIContainerRovio, parentView:UIView, clip:MovieClip = null)
      {
         var container:XML = null;
         var repeater:XML = null;
         var button:XML = null;
         var textfield:XML = null;
         var movieClip:XML = null;
         var popup:XML = null;
         var c:Class = null;
         this.mName = data.@name;
         if(parentView)
         {
            this.mParentView = parentView;
            c = AssetCache.getAssetFromCache(mName);
            mClip = new c();
            addChild(mClip);
            this.mParentView.mMovieClip.addChild(this);
         }
         super(data,parentContainer,clip);
         this.mItems = new Array();
         for each(container in data.Container)
         {
            this.mItems[this.mItems.length] = new UIContainerRovio(container,this,null);
         }
         for each(repeater in data.Repeater)
         {
            this.mItems[this.mItems.length] = new UIRepeaterRovio(repeater,this,null);
         }
         for each(button in data.Button)
         {
            this.mItems[this.mItems.length] = new UIButtonRovio(button,this);
         }
         for each(textfield in data.TextField)
         {
            this.mItems[this.mItems.length] = new UITextFieldRovio(textfield,this);
         }
         for each(movieClip in data.MovieClip)
         {
            this.mItems[this.mItems.length] = new UIMovieClipRovio(movieClip,this);
         }
         for each(popup in data.Popup)
         {
            this.mItems[this.mItems.length] = new UIPopUpRovio(popup,this);
         }
         this.readInitialVisibility(data);
         if(data.@MouseDown.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_DOWN,data.@MouseDown);
         }
         if(data.@MouseUp.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_UP,data.@MouseUp);
         }
         if(data.@MouseOver.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,data.@MouseOver);
         }
         if(data.@MouseOut.toString() != "")
         {
            setEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,data.@MouseOut);
         }
      }
      
      public function addComponent(component:UIComponentRovio) : *
      {
         this.mItems[this.mItems.length] = component;
         component.setActiveStatus(this.mActive);
         component.setVisibility(this.mVisibility);
      }
      
      override public function readInitialVisibility(data:XML) : void
      {
         if(!mClip)
         {
            return;
         }
         var property:String = data.@visible;
         if(property && property.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         property = data.@enabled;
         if(property && property.toUpperCase() == "TRUE")
         {
            this.setEnabled(true);
         }
         else
         {
            this.setEnabled(false);
         }
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
         super.listenerEventOccured(eventIndex,eventName);
      }
      
      public function containerEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         if(mParentContainer)
         {
            mParentContainer.containerEventOccured(eventIndex,eventName,component);
         }
         else if(this.mParentView)
         {
            this.mParentView.listenerEventOccured(eventIndex,eventName,component);
         }
      }
      
      override public function setActiveStatus(active:Boolean) : void
      {
         for(var i:int = 0; i < this.mItems.length; i++)
         {
            if(this.mItems[i] is UIComponentRovio)
            {
               (this.mItems[i] as UIComponentRovio).setActiveStatus(active);
            }
         }
         super.setActiveStatus(active);
      }
      
      override public function clear() : void
      {
         for(var i:int = 0; i < this.mItems.length; i++)
         {
            if(this.mItems[i] is UIComponentRovio)
            {
               (this.mItems[i] as UIComponentRovio).clear();
            }
         }
         this.mItems = null;
         if(this.mParentView)
         {
            this.mParentView.mMovieClip.removeChild(this);
         }
         super.clear();
      }
      
      override public function setVisibility(visibility:Boolean) : void
      {
         super.setVisibility(visibility);
      }
      
      public function setItemVisibilityByName(itemName:String, visibility:Boolean) : void
      {
         var obj:Object = null;
         if(mName.toUpperCase() == itemName)
         {
            this.setVisibility(visibility);
         }
         else
         {
            obj = this.getItemByName(itemName);
            if(obj is UIComponentRovio)
            {
               (obj as UIComponentRovio).setVisibility(visibility);
            }
            else
            {
               Log.log("WARNING: UIContainer(" + mName + ") setItemVisibility can not be done because item " + itemName + " does not exist");
            }
         }
      }
      
      public function getItemByName(itemName:String) : UIComponentRovio
      {
         var tmp:UIComponentRovio = null;
         itemName = itemName.toUpperCase();
         if(mName.toUpperCase() == itemName)
         {
            return this;
         }
         for(var i:int = 0; i < this.mItems.length; i++)
         {
            if(this.mItems[i] is UIComponentRovio)
            {
               if((this.mItems[i] as UIComponentRovio).mName.toUpperCase() == itemName)
               {
                  return this.mItems[i] as UIComponentRovio;
               }
               if(this.mItems[i] is UIContainerRovio)
               {
                  tmp = (this.mItems[i] as UIContainerRovio).getItemByName(itemName);
                  if(tmp != null)
                  {
                     return tmp;
                  }
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(enabled:Boolean) : void
      {
         mouseEnabled = enabled;
         mClip.mouseEnabled = enabled;
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
