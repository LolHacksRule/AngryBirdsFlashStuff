package §-"'§
{
   import §&!<§.§>!V§;
   import §=!7§.§!!]§;
   import §?!'§.Popup;
   import §]" §.§?"-§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §&"#§ extends Popup
   {
       
      
      private var §,!C§:int;
      
      private var §`3§:int = 0;
      
      public function §&"#§(param1:§>!V§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§-!4§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§#!6§);
         getItemByName("Container_Tips").goToFrame(this.§`3§ + 1,false);
         this.§,!C§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §!!]§).setText(§?"-§.§>!`§);
      }
      
      public function §#!6§(param1:Event = null) : void
      {
         this.§`3§ = (this.§`3§ + 1) % this.§,!C§;
         getItemByName("Container_Tips").goToFrame(this.§`3§ + 1,false);
         (getItemByName("TextField_Page") as §!!]§).setText((this.§`3§ + 1).toString() + "/" + this.§,!C§.toString());
      }
      
      public function §-!4§(param1:Event = null) : void
      {
         this.§`3§ = (this.§`3§ - 1 + this.§,!C§) % this.§,!C§;
         getItemByName("Container_Tips").goToFrame(this.§`3§ + 1,false);
         (getItemByName("TextField_Page") as §!!]§).setText((this.§`3§ + 1).toString() + "/" + this.§,!C§.toString());
      }
   }
}
