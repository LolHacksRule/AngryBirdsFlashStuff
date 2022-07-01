package §1!5§
{
   import § true§.§<"-§;
   import §""§.Popup;
   import §0!C§.§=!]§;
   import §3c§.§2A§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §1&§ extends Popup
   {
       
      
      private var §3"!§:int;
      
      private var §<3§:int = 0;
      
      public function §1&§(param1:§=!]§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§<!u§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8O§);
         getItemByName("Container_Tips").goToFrame(this.§<3§ + 1,false);
         this.§3"!§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §<"-§).setText(§2A§.§6u§);
      }
      
      public function §8O§(param1:Event = null) : void
      {
         this.§<3§ = (this.§<3§ + 1) % this.§3"!§;
         getItemByName("Container_Tips").goToFrame(this.§<3§ + 1,false);
         (getItemByName("TextField_Page") as §<"-§).setText((this.§<3§ + 1).toString() + "/" + this.§3"!§.toString());
      }
      
      public function §<!u§(param1:Event = null) : void
      {
         this.§<3§ = (this.§<3§ - 1 + this.§3"!§) % this.§3"!§;
         getItemByName("Container_Tips").goToFrame(this.§<3§ + 1,false);
         (getItemByName("TextField_Page") as §<"-§).setText((this.§<3§ + 1).toString() + "/" + this.§3"!§.toString());
      }
   }
}
