package §]"U§
{
   import §4#F§.§@"#§;
   import §[#C§.§[!c§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class §#$2§ extends §@"#§
   {
       
      
      private var §,!s§:int = 11;
      
      public function §#$2§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§`!n§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§,!s§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§`"p§)
         {
            open();
         }
         else if(param1.target is §[!c§)
         {
            §#"q§ = data.indexOf(§[!c§(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §<#Y§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §<#Y§.scroll(-8);
            }
         }
      }
   }
}
