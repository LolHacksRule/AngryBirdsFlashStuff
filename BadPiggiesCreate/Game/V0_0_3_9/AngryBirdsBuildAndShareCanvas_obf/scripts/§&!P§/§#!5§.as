package §&!P§
{
   import §<!I§.§7!N§;
   import §<Z§.§7!!§;
   import §]J§.Popup;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import §try§.§6>§;
   
   public class §#!5§ extends Popup
   {
       
      
      private var §?![§:int;
      
      private var §9!u§:int = 0;
      
      public function §#!5§(param1:§7!!§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§+!]§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§!"#§);
         getItemByName("Container_Tips").goToFrame(this.§9!u§ + 1,false);
         this.§?![§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §7!N§).setText(§6>§.§@!_§);
      }
      
      public function §!"#§(param1:Event = null) : void
      {
         this.§9!u§ = (this.§9!u§ + 1) % this.§?![§;
         getItemByName("Container_Tips").goToFrame(this.§9!u§ + 1,false);
         (getItemByName("TextField_Page") as §7!N§).setText((this.§9!u§ + 1).toString() + "/" + this.§?![§.toString());
      }
      
      public function §+!]§(param1:Event = null) : void
      {
         this.§9!u§ = (this.§9!u§ - 1 + this.§?![§) % this.§?![§;
         getItemByName("Container_Tips").goToFrame(this.§9!u§ + 1,false);
         (getItemByName("TextField_Page") as §7!N§).setText((this.§9!u§ + 1).toString() + "/" + this.§?![§.toString());
      }
   }
}
