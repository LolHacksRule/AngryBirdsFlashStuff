package §7!%§
{
   import §-!@§.Popup;
   import §5!8§.§6m§;
   import §>P§.§%t§;
   import §@">§.§%!u§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §]j§ extends Popup
   {
       
      
      private var §`"2§:int;
      
      private var §-!6§:int = 0;
      
      public function §]j§(param1:§%!u§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§^G§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§4;§);
         getItemByName("Container_Tips").goToFrame(this.§-!6§ + 1,false);
         this.§`"2§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §6m§).setText(§%t§.§&!P§);
      }
      
      public function §4;§(param1:Event = null) : void
      {
         this.§-!6§ = (this.§-!6§ + 1) % this.§`"2§;
         getItemByName("Container_Tips").goToFrame(this.§-!6§ + 1,false);
         (getItemByName("TextField_Page") as §6m§).setText((this.§-!6§ + 1).toString() + "/" + this.§`"2§.toString());
      }
      
      public function §^G§(param1:Event = null) : void
      {
         this.§-!6§ = (this.§-!6§ - 1 + this.§`"2§) % this.§`"2§;
         getItemByName("Container_Tips").goToFrame(this.§-!6§ + 1,false);
         (getItemByName("TextField_Page") as §6m§).setText((this.§-!6§ + 1).toString() + "/" + this.§`"2§.toString());
      }
   }
}
