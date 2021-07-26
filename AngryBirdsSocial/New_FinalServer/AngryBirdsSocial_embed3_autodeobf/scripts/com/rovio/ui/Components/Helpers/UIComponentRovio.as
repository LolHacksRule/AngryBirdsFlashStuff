package com.rovio.ui.Components.Helpers
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var mVisibility:Boolean = true;
      
      public function UIComponentRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         var cls:Class = null;
         var index:int = 0;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         this.mParentContainer = parentContainer;
         this.mName = data.@name;
         if(clip)
         {
            this.mClip = clip;
            addChild(this.mClip);
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this);
            }
         }
         else if(data.@fromLibrary == "True")
         {
            cls = AssetCache.getAssetFromCache(this.mName);
            this.mClip = new cls();
            addChild(this.mClip);
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
            if(this.mClip == null)
            {
               Log.log("Asset instance not found!! [" + this.mName + "] parent: [" + this.mParentContainer.mName + "]");
            }
            index = this.mParentContainer.mClip.getChildIndex(this.mClip);
            addChild(this.mClip);
            this.mParentContainer.mClip.addChildAt(this,index);
         }
         if(this.mParentContainer && data.@isBehind == "True")
         {
            parentContainer.mClip.setChildIndex(this,0);
         }
         if(data.@isOverlay == "True")
         {
            color = 16777215;
            alpha = 0.5;
            if(data.@overlayColor.toString() != "")
            {
               color = parseInt(data.@overlayColor);
            }
            if(data.@overlayAlpha.toString() != "")
            {
               alpha = parseFloat(data.@overlayAlpha);
            }
            tmp = this.getParentView().createOverlaySprite(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         super(this.mClip);
         this.readInitialVisibility(data);
      }
      
      public function readInitialVisibility(data:XML) : void
      {
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
         if(property && property.toUpperCase() == "FALSE")
         {
            this.setEnabled(false);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.mParentContainer)
         {
            this.mParentContainer.mClip.removeChild(this);
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mClip = null;
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
         super.listenerEventOccured(eventIndex,eventName);
         this.mParentContainer.containerEventOccured(eventIndex,eventName,this);
      }
      
      public function setVisibility(visibility:Boolean) : void
      {
         this.mVisibility = visibility;
         visible = this.mVisibility && this.mActive;
         this.mClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setActiveStatus(active:Boolean) : void
      {
         this.mActive = active;
         visible = this.mVisibility && this.mActive;
         this.mClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setEnabled(newEnabled:Boolean) : void
      {
         this.mClip.mouseEnabled = newEnabled;
         this.mClip.mouseChildren = newEnabled;
         mouseEnabled = newEnabled;
         mouseChildren = newEnabled;
      }
      
      public function getParentView() : UIView
      {
         return this.mParentContainer.getParentView();
      }
      
      override public function changeMovieClip(newClip:MovieClip) : void
      {
         super.changeMovieClip(newClip);
      }
   }
}
