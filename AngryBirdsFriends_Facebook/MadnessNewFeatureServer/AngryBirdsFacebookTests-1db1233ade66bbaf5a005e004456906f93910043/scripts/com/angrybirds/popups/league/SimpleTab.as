package com.angrybirds.popups.league
{
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class SimpleTab extends EventDispatcher
   {
       
      
      protected var mTabMovieClip:MovieClip;
      
      protected var mTabName:String;
      
      public function SimpleTab(tabMovieClip:MovieClip, tabName:String)
      {
         super();
         this.mTabMovieClip = tabMovieClip;
         this.mTabMovieClip.buttonMode = true;
         this.mTabMovieClip.mouseChildren = false;
         this.mTabMovieClip.tabEnabled = false;
         this.mTabName = tabName;
         this.addMouseListeners();
      }
      
      protected function addMouseListeners() : void
      {
         this.mTabMovieClip.addEventListener(MouseEvent.CLICK,this.onClick);
      }
      
      protected function removeMouseListeners() : void
      {
         this.mTabMovieClip.removeEventListener(MouseEvent.CLICK,this.onClick);
      }
      
      protected function onClick(e:MouseEvent) : void
      {
         dispatchEvent(e);
      }
      
      public function unselect() : void
      {
         this.mTabMovieClip.gotoAndStop("Normal");
      }
      
      public function select() : void
      {
         this.mTabMovieClip.gotoAndStop("Selected");
      }
      
      public function get name() : String
      {
         return this.mTabName;
      }
   }
}
