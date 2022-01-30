package §1S§
{
   import §!D§.§%c§;
   import §-D§.Popup;
   import §9u§.§"![§;
   import §?!V§.§ T§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §<!n§ extends Popup
   {
       
      
      private var §""4§:int;
      
      private var §3p§:int = 0;
      
      public function §<!n§(param1:§ T§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§1!E§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§`!E§);
         getItemByName("Container_Tips").goToFrame(this.§3p§ + 1,false);
         this.§""4§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §%c§).setText(§"![§.§0"#§);
      }
      
      public function §`!E§(param1:Event = null) : void
      {
         this.§3p§ = (this.§3p§ + 1) % this.§""4§;
         getItemByName("Container_Tips").goToFrame(this.§3p§ + 1,false);
         (getItemByName("TextField_Page") as §%c§).setText((this.§3p§ + 1).toString() + "/" + this.§""4§.toString());
      }
      
      public function §1!E§(param1:Event = null) : void
      {
         this.§3p§ = (this.§3p§ - 1 + this.§""4§) % this.§""4§;
         getItemByName("Container_Tips").goToFrame(this.§3p§ + 1,false);
         (getItemByName("TextField_Page") as §%c§).setText((this.§3p§ + 1).toString() + "/" + this.§""4§.toString());
      }
   }
}
