package §<!<§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §<!F§.§5!+§;
   import flash.events.MouseEvent;
   
   public class §#1§ extends Popup
   {
      
      private static const §0p§:Number = 0.001;
       
      
      private var §3!@§:Boolean;
      
      protected var §?!P§:§ !4§;
      
      public function §#1§(param1:§<!K§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §,!;§.§2o§.Views.PopupView_FullGame[0] : §,!;§.§2o§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§3!@§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§%X§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§^P§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §0p§;
         getItemByName("Container_Popup").mClip.scaleY = §0p§;
         §5!+§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §0p§;
            getItemByName("Container_Popup").mClip.scaleY = §0p§;
            if(this.§?!P§ != null)
            {
               this.§?!P§.stop();
            }
            this.§?!P§ = §49§.§&y§.§=!3§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§0p§,
               "scaleY":§0p§
            },0.2,§49§.§4a§);
            this.§?!P§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §%X§(param1:MouseEvent) : void
      {
         §5!+§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§%X§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§^P§);
         this.deActivate();
      }
      
      private function §^P§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§%X§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§^P§);
         if(this.§3!@§)
         {
            §#!1§.§@F§.§]H§("PowerUp");
         }
         else
         {
            §#!1§.§@F§.§]H§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §0p§;
         getItemByName("Container_Popup").mClip.scaleY = §0p§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§?!P§)
         {
            this.§?!P§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§?!P§)
         {
            this.§?!P§.updateState();
         }
      }
   }
}
