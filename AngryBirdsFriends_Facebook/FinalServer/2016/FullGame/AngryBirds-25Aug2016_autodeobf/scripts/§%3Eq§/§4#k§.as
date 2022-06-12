package §>q§
{
   import §?!_§.§,"@§;
   import §[#j§.§ !I§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class §4#k§ extends § !I§
   {
       
      
      private var §-!u§:int = 11;
      
      public function §4#k§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§]Z§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§-!u§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§="S§)
         {
            open();
         }
         else if(param1.target is §,"@§)
         {
            §@!?§ = data.indexOf(§,"@§(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §2"%§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §2"%§.scroll(-8);
            }
         }
      }
   }
}
