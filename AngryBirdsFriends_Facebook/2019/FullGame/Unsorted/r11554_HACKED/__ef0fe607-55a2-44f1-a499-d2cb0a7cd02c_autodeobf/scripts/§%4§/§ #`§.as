package §%4§
{
   import §0!K§.§=!-§;
   import §1";§.§!"M§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class § #`§ extends §=!-§
   {
       
      
      private var §@!r§:int = 11;
      
      public function § #`§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§%#D§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§@!r§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§9Y§)
         {
            open();
         }
         else if(param1.target is §!"M§)
         {
            §[!G§ = data.indexOf(§!"M§(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §#f§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §#f§.scroll(-8);
            }
         }
      }
   }
}
