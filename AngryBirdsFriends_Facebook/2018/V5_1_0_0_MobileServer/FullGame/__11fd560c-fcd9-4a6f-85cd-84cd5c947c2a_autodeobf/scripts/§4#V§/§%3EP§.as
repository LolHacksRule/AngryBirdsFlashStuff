package §4#V§
{
   import §00§.§3# §;
   import §1"=§.§7R§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class §>P§ extends §7R§
   {
       
      
      private var §^#[§:int = 11;
      
      public function §>P§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§]A§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§^#[§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§<#_§)
         {
            open();
         }
         else if(param1.target is §3# §)
         {
            §%#p§ = data.indexOf(§3# §(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §@!v§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §@!v§.scroll(-8);
            }
         }
      }
   }
}
