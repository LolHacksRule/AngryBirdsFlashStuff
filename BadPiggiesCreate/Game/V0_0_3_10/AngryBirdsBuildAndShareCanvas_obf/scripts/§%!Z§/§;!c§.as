package §%!Z§
{
   import §,"$§.Popup;
   import §0!d§.§`G§;
   import §4!t§.§=p§;
   import §6`§.§`!e§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §;!c§ extends Popup
   {
       
      
      private var §5!0§:int;
      
      private var §;,§:int = 0;
      
      public function §;!c§(param1:§=p§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§;s§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§`c§);
         getItemByName("Container_Tips").goToFrame(this.§;,§ + 1,false);
         this.§5!0§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §`G§).setText(§`!e§.§@!§);
      }
      
      public function §`c§(param1:Event = null) : void
      {
         this.§;,§ = (this.§;,§ + 1) % this.§5!0§;
         getItemByName("Container_Tips").goToFrame(this.§;,§ + 1,false);
         (getItemByName("TextField_Page") as §`G§).setText((this.§;,§ + 1).toString() + "/" + this.§5!0§.toString());
      }
      
      public function §;s§(param1:Event = null) : void
      {
         this.§;,§ = (this.§;,§ - 1 + this.§5!0§) % this.§5!0§;
         getItemByName("Container_Tips").goToFrame(this.§;,§ + 1,false);
         (getItemByName("TextField_Page") as §`G§).setText((this.§;,§ + 1).toString() + "/" + this.§5!0§.toString());
      }
   }
}
