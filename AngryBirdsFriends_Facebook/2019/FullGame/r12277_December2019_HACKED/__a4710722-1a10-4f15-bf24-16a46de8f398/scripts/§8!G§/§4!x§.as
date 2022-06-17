package §8!G§
{
   import §3"L§.;
   import §<"8§.§5!5§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public class §4!x§ extends §#9§
   {
       
      
      private var §2"N§:int = 11;
      
      public function §4!x§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         super(param1,param2,param3);
         this.§&W§.Country_DropDownContainer.scrollbar.visible = param3.length > this.§2"N§;
      }
      
      override protected function onClickMenu(param1:MouseEvent) : void
      {
         if(!§`]§)
         {
            open();
         }
         else if(param1.target is §5!5§)
         {
            §false§ = data.indexOf(§5!5§(param1.target).data);
            close();
         }
         else if(param1.target is SimpleButton)
         {
            if(param1.target.name == "btnScrollDown")
            {
               §!"f§.scroll(8);
            }
            else if(param1.target.name == "btnScrollUp")
            {
               §!"f§.scroll(-8);
            }
         }
      }
   }
}
