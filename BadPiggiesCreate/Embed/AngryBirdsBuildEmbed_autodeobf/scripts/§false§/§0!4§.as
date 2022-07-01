package §false§
{
   import §!y§.§2U§;
   import §"!E§.§;!j§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §0!4§ extends Popup
   {
       
      
      private var §0![§:int;
      
      private var §1<§:int = 0;
      
      public function §0!4§(param1:§2U§, param2:XML)
      {
         super(param2,param1);
         getItemByName("Button_Prev").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§2>§);
         getItemByName("Button_Next").mClip.addEventListener(MouseEvent.MOUSE_UP,this.§]!n§);
         getItemByName("Container_Tips").goToFrame(this.§1<§ + 1,false);
         this.§0![§ = getItemByName("Container_Tips").mClip.totalFrames;
         (getItemByName("TextField_Page") as §;!j§).setText((this.§1<§ + 1).toString() + "/" + this.§0![§.toString());
      }
      
      public function §]!n§(param1:Event = null) : void
      {
         this.§1<§ = (this.§1<§ + 1) % this.§0![§;
         getItemByName("Container_Tips").goToFrame(this.§1<§ + 1,false);
         (getItemByName("TextField_Page") as §;!j§).setText((this.§1<§ + 1).toString() + "/" + this.§0![§.toString());
      }
      
      public function §2>§(param1:Event = null) : void
      {
         this.§1<§ = (this.§1<§ - 1 + this.§0![§) % this.§0![§;
         getItemByName("Container_Tips").goToFrame(this.§1<§ + 1,false);
         (getItemByName("TextField_Page") as §;!j§).setText((this.§1<§ + 1).toString() + "/" + this.§0![§.toString());
      }
   }
}
