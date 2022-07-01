package §1g§
{
   import §#V§.§7b§;
   import §&!!§.Popup;
   import §;!A§.§ !F§;
   import §;"$§.§`5§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §4T§ extends Popup
   {
       
      
      private var §;L§:int;
      
      private var §9!F§:int = 0;
      
      public function §4T§(param1:§`5§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§ else§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§30§);
         getItemByName("Container_Tips").goToFrame(this.§9!F§ + 1,false);
         this.§;L§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as § !F§).setText(§7b§.§>N§);
      }
      
      public function §30§(param1:Event = null) : void
      {
         this.§9!F§ = (this.§9!F§ + 1) % this.§;L§;
         getItemByName("Container_Tips").goToFrame(this.§9!F§ + 1,false);
         (getItemByName("TextField_Page") as § !F§).setText((this.§9!F§ + 1).toString() + "/" + this.§;L§.toString());
      }
      
      public function § else§(param1:Event = null) : void
      {
         this.§9!F§ = (this.§9!F§ - 1 + this.§;L§) % this.§;L§;
         getItemByName("Container_Tips").goToFrame(this.§9!F§ + 1,false);
         (getItemByName("TextField_Page") as § !F§).setText((this.§9!F§ + 1).toString() + "/" + this.§;L§.toString());
      }
   }
}
