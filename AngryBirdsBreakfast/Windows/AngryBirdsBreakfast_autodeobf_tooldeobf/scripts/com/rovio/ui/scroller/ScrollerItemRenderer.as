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
      
      public function set data(param1:Object) : void
      {
         this.mData = param1;
      }
      
      public function get index() : int
      {
         return this.mIndex;
      }
      
      public function set index(param1:int) : void
      {
         this.mIndex = param1;
      }
      
      public function set scroller(param1:HScroller) : void
      {
         this.mScroller = param1;
      }
   }
}
