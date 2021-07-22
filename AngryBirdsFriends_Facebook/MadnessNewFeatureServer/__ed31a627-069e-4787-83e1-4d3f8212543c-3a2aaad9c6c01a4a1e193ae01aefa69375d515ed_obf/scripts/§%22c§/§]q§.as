package §"c§
{
   import §0"s§.§!!+§;
   import §=!f§.§!#R§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class §]q§ extends §!!+§
   {
       
      
      private var §,Z§:int = 11;
      
      public function §]q§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§'o§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§,Z§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§<"S§)
         {
            open();
         }
         else if(param1.target is §!#R§)
         {
            §+$>§ = data.indexOf(§!#R§(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §3"u§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §3"u§.scroll(-8);
            }
         }
      }
   }
}
