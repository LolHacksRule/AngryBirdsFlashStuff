package §9!!§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import flash.events.MouseEvent;
   
   public class §"<§ extends Popup
   {
      
      private static const §[g§:Number = 0.001;
       
      
      private var §`§:Boolean;
      
      protected var §;I§:§?A§;
      
      public function §"<§(param1:§#H§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §set §.§&!1§.Views.PopupView_FullGame[0] : §set §.§&!1§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§`§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§2y§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§7!%§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §[g§;
         getItemByName("Container_Popup").mClip.scaleY = §[g§;
         §[o§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §[g§;
            getItemByName("Container_Popup").mClip.scaleY = §[g§;
            if(this.§;I§ != null)
            {
               this.§;I§.stop();
            }
            this.§;I§ = §";§.§[8§.§6!$§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§[g§,
               "scaleY":§[g§
            },0.2,§";§.§5K§);
            this.§;I§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §2y§(param1:MouseEvent) : void
      {
         §[o§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§2y§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§7!%§);
         this.deActivate();
      }
      
      private function §7!%§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§2y§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§7!%§);
         if(this.§`§)
         {
            §^y§.get.§!!=§("PowerUp");
         }
         else
         {
            §^y§.get.§!!=§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §[g§;
         getItemByName("Container_Popup").mClip.scaleY = §[g§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§;I§)
         {
            this.§;I§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§;I§)
         {
            this.§;I§.updateState();
         }
      }
   }
}
