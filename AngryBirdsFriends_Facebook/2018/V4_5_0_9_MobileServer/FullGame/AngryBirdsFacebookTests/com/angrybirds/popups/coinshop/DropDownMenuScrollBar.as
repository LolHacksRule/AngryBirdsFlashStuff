package com.angrybirds.popups.coinshop
{
   import com.angrybirds.popups.requests.CountryItemRenderer;
   import com.rovio.ui.dropdown.DropDownMenu;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class DropDownMenuScrollBar extends DropDownMenu
   {
       
      
      private var SCROLLBAR_SHOW_ITEMS_THRESHOLD:int = 11;
      
      public function DropDownMenuScrollBar(dropDownMenuMovieClip:MovieClip, itemRenderer:Class, data:Array = null)
      {
         super(dropDownMenuMovieClip,itemRenderer,data);
         this.mMovieClip.Country_DropDownContainer.scrollbar.visible = data.length > this.SCROLLBAR_SHOW_ITEMS_THRESHOLD;
      }
      
      override protected function onClickMenu(e:MouseEvent) : void
      {
         if(!mIsOpen)
         {
            open();
         }
         else if(e.target is CountryItemRenderer)
         {
            selectedIndex = data.indexOf(CountryItemRenderer(e.target).data);
            close();
         }
         else if(e.target is SimpleButton)
         {
            if(e.target.name == "btnScrollDown")
            {
               mScroller.scroll(8);
            }
            else if(e.target.name == "btnScrollUp")
            {
               mScroller.scroll(-8);
            }
         }
      }
   }
}
