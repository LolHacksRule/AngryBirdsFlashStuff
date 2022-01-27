package §9!#§
{
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import flash.events.MouseEvent;
   
   public class §7D§ extends Popup
   {
      
      private static const §'q§:Number = 0.001;
       
      
      private var §2!I§:Boolean;
      
      protected var §8;§:§!l§;
      
      public function §7D§(param1:§"Q§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §`d§.§8?§.Views.PopupView_FullGame[0] : §`d§.§8?§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§2!I§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§3"§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§^s§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §'q§;
         getItemByName("Container_Popup").mClip.scaleY = §'q§;
         §0!E§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §'q§;
            getItemByName("Container_Popup").mClip.scaleY = §'q§;
            if(this.§8;§ != null)
            {
               this.§8;§.stop();
            }
            this.§8;§ = §5!&§.§@!&§.§9!4§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§'q§,
               "scaleY":§'q§
            },0.2,§5!&§.§"f§);
            this.§8;§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §3"§(param1:MouseEvent) : void
      {
         §0!E§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§3"§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§^s§);
         this.deActivate();
      }
      
      private function §^s§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§3"§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§^s§);
         if(this.§2!I§)
         {
            §=!<§.§4M§.§#u§("PowerUp");
         }
         else
         {
            §=!<§.§4M§.§#u§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §'q§;
         getItemByName("Container_Popup").mClip.scaleY = §'q§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§8;§)
         {
            this.§8;§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§8;§)
         {
            this.§8;§.updateState();
         }
      }
   }
}
