package com.rovio.ui.Components
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class SimpleCheckbox
   {
       
      
      private var mSelected:Boolean = false;
      
      private var mCheckboxMovieClip:MovieClip;
      
      private var mEnabled:Boolean;
      
      public function SimpleCheckbox(checkboxMovieClip:MovieClip, defaultSelected:Boolean = false)
      {
         super();
         this.mCheckboxMovieClip = checkboxMovieClip;
         this.mCheckboxMovieClip.buttonMode = true;
         this.mCheckboxMovieClip.addEventListener(MouseEvent.CLICK,this.onClick);
         this.selected = defaultSelected;
         this.enabled = true;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.mCheckboxMovieClip;
      }
      
      public function dispose() : void
      {
         this.mCheckboxMovieClip.removeEventListener(MouseEvent.CLICK,this.onClick);
         this.mCheckboxMovieClip = null;
      }
      
      private function onClick(e:MouseEvent) : void
      {
         if(this.mEnabled)
         {
            this.displayObject.dispatchEvent(new Event(Event.SELECT));
            this.selected = !this.selected;
         }
      }
      
      public function get selected() : Boolean
      {
         return this.mSelected;
      }
      
      public function set selected(value:Boolean) : void
      {
         this.mSelected = value;
         if(this.mCheckboxMovieClip)
         {
            this.mCheckboxMovieClip.gotoAndStop(this.mSelected.toString());
         }
         this.displayObject.dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set enabled(val:Boolean) : void
      {
         this.mEnabled = val;
         if(this.mCheckboxMovieClip)
         {
            if(val)
            {
               this.mCheckboxMovieClip.gotoAndStop(this.mSelected.toString());
               this.mCheckboxMovieClip.buttonMode = true;
            }
            else
            {
               this.mCheckboxMovieClip.gotoAndStop("disabled");
               this.mCheckboxMovieClip.buttonMode = false;
            }
         }
      }
   }
}
