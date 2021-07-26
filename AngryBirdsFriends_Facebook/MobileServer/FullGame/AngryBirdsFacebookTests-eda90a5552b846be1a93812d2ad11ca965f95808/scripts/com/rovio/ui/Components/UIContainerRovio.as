package com.rovio.ui.Components
{
   import com.rovio.assets.AssetCache;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.Helpers.UIComponentInteractiveRovio;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.*;
   import flash.events.Event;
   
   public class UIContainerRovio extends UIComponentInteractiveRovio
   {
       
      
      public var mParentView:UIView;
      
      public var mItems:Vector.<UIComponentRovio>;
      
      public var mRepeaterTab:Boolean = false;
      
      public function UIContainerRovio(data:XML, parentContainer:UIContainerRovio, parentView:UIView, clip:MovieClip = null)
      {
         var container:XML = null;
         var repeater:XML = null;
         var button:XML = null;
         var textfield:XML = null;
         var movieClip:XML = null;
         var popup:XML = null;
         var slider:XML = null;
         var c:Class = null;
         if(parentView)
         {
            this.mParentView = parentView;
            if(!clip)
            {
               c = AssetCache.getAssetFromCache(data.@name);
               mClip = new c();
               this.mParentView.movieClip.addChild(mClip);
            }
         }
         super(data,parentContainer,clip);
         this.mItems = new Vector.<UIComponentRovio>();
         for each(container in data.Container)
         {
            this.mItems.push(UIComponentFactory.createContainer(container,this,null));
         }
         for each(repeater in data.Repeater)
         {
            this.mItems.push(UIComponentFactory.createRepeater(repeater,this,null));
         }
         for each(button in data.Button)
         {
            this.mItems.push(UIComponentFactory.createButton(button,this));
         }
         for each(textfield in data.TextField)
         {
            this.mItems.push(UIComponentFactory.createTextField(textfield,this));
         }
         for each(movieClip in data.MovieClip)
         {
            this.mItems.push(UIComponentFactory.createMovieClip(movieClip,this));
         }
         for each(popup in data.Popup)
         {
            this.mItems.push(UIComponentFactory.createPopup(popup,this));
         }
         for each(slider in data.Slider)
         {
            this.mItems.push(UIComponentFactory.createSlider(slider,this));
         }
         this.readInitialVisibility(data);
         if(data.@MouseDown.toString() != "")
         {
            setUIEventListener(LISTENER_EVENT_MOUSE_DOWN,data.@MouseDown);
         }
         if(data.@MouseUp.toString() != "")
         {
            setUIEventListener(LISTENER_EVENT_MOUSE_UP,data.@MouseUp);
         }
         if(data.@MouseOver.toString() != "")
         {
            setUIEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,data.@MouseOver);
         }
         if(data.@MouseOut.toString() != "")
         {
            setUIEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,data.@MouseOut);
         }
      }
      
      public function setObjectToBack(obj:UIComponentRovio) : void
      {
         mClip.setChildIndex(obj.mClip,0);
      }
      
      public function setObjectToFront(obj:UIComponentRovio) : void
      {
         mClip.setChildIndex(obj.mClip,mClip.numChildren - 1);
      }
      
      public function addComponent(component:UIComponentRovio) : void
      {
         if(this.mItems.indexOf(component) < 0)
         {
            this.mItems.push(component);
            component.mParentContainer = this;
            component.setActiveStatus(this.mActive);
            component.setVisibility(this.mVisibility && component.mVisibility);
            component.viewWidth = viewWidth;
            component.viewHeight = viewHeight;
         }
      }
      
      public function removeComponent(component:UIComponentRovio) : void
      {
         var index:int = this.mItems.indexOf(component);
         if(index >= 0)
         {
            component.mParentContainer = null;
            this.mItems.splice(index,1);
            mClip.removeChild(component.mClip);
         }
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
      
      override public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         return super.listenerUIEventOccured(eventIndex,eventName);
      }
      
      public function childUIEventOccured(eventIndex:int, eventName:String, component:UIEventListenerRovio, event:Event = null) : void
      {
         if(event)
         {
            dispatchEvent(event);
         }
         if(mParentContainer)
         {
            mParentContainer.childUIEventOccured(eventIndex,eventName,component,event);
         }
         else if(this.mParentView)
         {
            this.mParentView.listenerUIEventOccured(eventIndex,eventName,component);
         }
      }
      
      override public function setActiveStatus(active:Boolean) : void
      {
         var component:UIComponentRovio = null;
         for each(component in this.mItems)
         {
            component.setActiveStatus(active);
         }
         super.setActiveStatus(active);
      }
      
      override public function clear() : void
      {
         var i:int = 0;
         if(this.mItems)
         {
            for(i = 0; i < this.mItems.length; i++)
            {
               this.mItems[i].clear();
            }
         }
         this.mItems = null;
         if(this.mParentView)
         {
            this.mParentView.movieClip.removeChild(mClip);
         }
         super.clear();
      }
      
      public function clearChildren() : void
      {
         var i:int = 0;
         if(this.mItems)
         {
            for(i = 0; i < this.mItems.length; i++)
            {
               this.mItems[i].clear();
            }
            this.mItems = new Vector.<UIComponentRovio>();
         }
      }
      
      override public function setVisibility(visibility:Boolean) : void
      {
         super.setVisibility(visibility);
         this.onParentVisibilityChange(visibility);
      }
      
      override public function onParentVisibilityChange(value:Boolean) : void
      {
         var component:UIComponentRovio = null;
         super.onParentVisibilityChange(value);
         if(this.mItems != null)
         {
            for each(component in this.mItems)
            {
               component.onParentVisibilityChange(value);
            }
         }
      }
      
      public function setItemVisibilityByName(itemName:String, visibility:Boolean) : void
      {
         var obj:Object = null;
         if(upperCaseName == itemName.toUpperCase())
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
               Log.log("WARNING: UIContainer(" + name + ") setItemVisibility can not be done because item " + itemName + " does not exist");
            }
         }
      }
      
      public function getItemByName(itemName:String) : UIComponentRovio
      {
         return this.getItemByUpperCaseName(itemName.toUpperCase());
      }
      
      protected function getItemByUpperCaseName(itemName:String) : UIComponentRovio
      {
         var component:UIComponentRovio = null;
         var tmp:UIComponentRovio = null;
         if(upperCaseName == itemName)
         {
            return this;
         }
         for each(component in this.mItems)
         {
            if(component.upperCaseName == itemName)
            {
               return component;
            }
            if(component is UIContainerRovio)
            {
               tmp = (component as UIContainerRovio).getItemByName(itemName);
               if(tmp != null)
               {
                  return tmp;
               }
            }
         }
         return null;
      }
      
      override public function setEnabled(enabled:Boolean, affectChilden:Boolean = false) : void
      {
         mClip.mouseEnabled = enabled;
         if(affectChilden)
         {
            mClip.mouseChildren = enabled;
         }
      }
      
      override public function getParentView() : UIView
      {
         if(this.mParentView)
         {
            return this.mParentView;
         }
         return super.getParentView();
      }
      
      override public function set viewWidth(width:Number) : void
      {
         var component:UIComponentRovio = null;
         super.viewWidth = width;
         for each(component in this.mItems)
         {
            component.viewWidth = width;
         }
      }
      
      override public function set viewHeight(height:Number) : void
      {
         var component:UIComponentRovio = null;
         super.viewHeight = height;
         for each(component in this.mItems)
         {
            component.viewHeight = height;
         }
      }
      
      public function setText(newText:String, itemName:String) : void
      {
         var obj:Object = this.getItemByName(itemName);
         if(obj is UITextFieldRovio)
         {
            (obj as UITextFieldRovio).setText(newText);
            return;
         }
         throw new Error("--#UIContainerRovio[setText]:: object was not an instance of UITextFieldRovio");
      }
   }
}
