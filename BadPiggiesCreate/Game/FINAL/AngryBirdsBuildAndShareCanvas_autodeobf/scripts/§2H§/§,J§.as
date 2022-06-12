package §2H§
{
   import §'p§.§`!<§;
   import §+h§.Popup;
   import §1"2§.§'s§;
   import §]!+§.§ 1§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §,J§ extends Popup
   {
       
      
      private var §"!v§:int;
      
      private var §8k§:int = 0;
      
      public function §,J§(param1:§'s§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§?>§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§<7§);
         getItemByName("Container_Tips").goToFrame(this.§8k§ + 1,false);
         this.§"!v§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §`!<§).setText(§ 1§.§?_§);
      }
      
      public function §<7§(param1:Event = null) : void
      {
         this.§8k§ = (this.§8k§ + 1) % this.§"!v§;
         getItemByName("Container_Tips").goToFrame(this.§8k§ + 1,false);
         (getItemByName("TextField_Page") as §`!<§).setText((this.§8k§ + 1).toString() + "/" + this.§"!v§.toString());
      }
      
      public function §?>§(param1:Event = null) : void
      {
         this.§8k§ = (this.§8k§ - 1 + this.§"!v§) % this.§"!v§;
         getItemByName("Container_Tips").goToFrame(this.§8k§ + 1,false);
         (getItemByName("TextField_Page") as §`!<§).setText((this.§8k§ + 1).toString() + "/" + this.§"!v§.toString());
      }
   }
}
