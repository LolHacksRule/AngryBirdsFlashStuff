package com.rovio.ui.scroller
{
   import flash.display.Sprite;
   
   public class ScrollerItemRenderer extends Sprite
   {
       
      
      protected var mData:Object;
      
      protected var mIndex:int;
      
      protected var mScroller:HScroller;
      
      public function ScrollerItemRenderer()
      {
         super();
      }
      
      public function get data() : Object
      {
         return this.mData;
      }
      
      public function set data(value:Object) : void
      {
         this.mData = value;
      }
      
      public function get index() : int
      {
         return this.mIndex;
      }
      
      public function set index(value:int) : void
      {
         this.mIndex = value;
      }
      
      public function set scroller(value:HScroller) : void
      {
         this.mScroller = value;
      }
   }
}
