package §9"0§
{
   import § !L§.§4V§;
   import §9$6§.§@Q§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class §,"n§ extends §4V§
   {
       
      
      private var §=!4§:int = 11;
      
      public function §,"n§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§^#!§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§=!4§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§3#x§)
         {
            open();
         }
         else if(param1.target is §@Q§)
         {
            §]#5§ = data.indexOf(§@Q§(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §`p§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §`p§.scroll(-8);
            }
         }
      }
   }
}
