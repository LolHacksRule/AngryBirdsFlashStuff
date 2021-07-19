package com.rovio.ui.dropdown
{
   import com.rovio.ui.scroller.ScrollerItemRenderer;
   import com.rovio.ui.scroller.VScroller;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class DropDownMenu extends EventDispatcher
   {
       
      
      protected var mMovieClip:MovieClip;
      
      protected var mItemRendererClass:Class;
      
      protected var mScroller:VScroller;
      
      protected var mSelectedItemRenderer:ScrollerItemRenderer;
      
      protected var mIsOpen:Boolean = false;
      
      public function DropDownMenu(dropDownMenuMovieClip:MovieClip, itemRenderer:Class, data:Array = null)
      {
         super();
         this.mMovieClip = dropDownMenuMovieClip;
         this.mItemRendererClass = itemRenderer;
         this.mSelectedItemRenderer = new this.mItemRendererClass();
         this.mMovieClip.gotoAndStop("close");
         this.mScroller = new VScroller(100,100,data,this.mItemRendererClass);
         dropDownMenuMovieClip.scrollerContainer.addChild(this.mScroller.scrollerSprite);
         dropDownMenuMovieClip.selectedValue.addChild(this.mSelectedItemRenderer);
         if(this.mMovieClip.stage)
         {
            this.onStage();
         }
         else
         {
            this.mMovieClip.addEventListener(Event.ADDED_TO_STAGE,this.onStage);
         }
         this.mMovieClip.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.mMovieClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onClickMenu);
      }
      
      protected function onStage(e:Event = null) : void
      {
         this.mMovieClip.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onStageMouseDown);
      }
      
      private function onStageMouseDown(e:MouseEvent) : void
      {
         if(this.mIsOpen && !this.mMovieClip.hitTestPoint(e.stageX,e.stageY))
         {
            this.close();
         }
      }
      
      public function get data() : Array
      {
         return this.mScroller.data;
      }
      
      public function set data(value:Array) : void
      {
         this.mScroller.data = this.data;
      }
      
      public function set scrollerWidth(value:Number) : void
      {
         this.mScroller.setWidth(value);
      }
      
      public function set scrollerHeight(value:Number) : void
      {
         this.mScroller.setHeight(value);
      }
      
      public function set selectedIndex(index:int) : void
      {
         if(!this.data || index < 0 || index >= this.data.length)
         {
            throw new ArgumentError("Index is out of range.");
         }
         this.mSelectedItemRenderer.data = this.data[index];
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function get selectedIndex() : int
      {
         if(!this.mSelectedItemRenderer.data)
         {
            return -1;
         }
         return this.data.indexOf(this.selectedData);
      }
      
      public function get selectedData() : Object
      {
         return this.mSelectedItemRenderer.data;
      }
      
      protected function onClickMenu(e:MouseEvent) : void
      {
         if(!this.mIsOpen)
         {
            this.open();
         }
         else
         {
            if(e.target is ScrollerItemRenderer)
            {
               this.selectedIndex = this.data.indexOf(ScrollerItemRenderer(e.target).data);
            }
            this.close();
         }
      }
      
      public function open() : void
      {
         if(this.isOpen)
         {
            return;
         }
         this.mIsOpen = true;
         this.mMovieClip.gotoAndStop("open");
         dispatchEvent(new Event(Event.OPEN));
      }
      
      public function close() : void
      {
         if(!this.isOpen)
         {
            return;
         }
         this.mIsOpen = false;
         this.mMovieClip.gotoAndStop("close");
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      public function get isOpen() : Boolean
      {
         return this.mIsOpen;
      }
      
      public function get valueRenderer() : ScrollerItemRenderer
      {
         return this.mSelectedItemRenderer;
      }
      
      protected function onRemovedFromStage(e:Event) : void
      {
         this.mMovieClip.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onStageMouseDown);
      }
   }
}
