package §%J§
{
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import flash.events.MouseEvent;
   
   public class §@L§ extends Popup
   {
      
      private static const §7!-§:Number = 0.001;
       
      
      private var §-!1§:Boolean;
      
      protected var §?!F§:§ l§;
      
      public function §@L§(param1:§"!4§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §1!$§.§7e§.Views.PopupView_FullGame[0] : §1!$§.§7e§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§-!1§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§8%§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§20§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §7!-§;
         getItemByName("Container_Popup").mClip.scaleY = §7!-§;
         §?'§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §7!-§;
            getItemByName("Container_Popup").mClip.scaleY = §7!-§;
            if(this.§?!F§ != null)
            {
               this.§?!F§.stop();
            }
            this.§?!F§ = §?!7§.§^7§.§^!0§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§7!-§,
               "scaleY":§7!-§
            },0.2,§?!7§.§7c§);
            this.§?!F§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §8%§(param1:MouseEvent) : void
      {
         §?'§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§8%§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§20§);
         this.deActivate();
      }
      
      private function §20§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§8%§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§20§);
         if(this.§-!1§)
         {
            §6!%§.§-W§.§'C§("PowerUp");
         }
         else
         {
            §6!%§.§-W§.§'C§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §7!-§;
         getItemByName("Container_Popup").mClip.scaleY = §7!-§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§?!F§)
         {
            this.§?!F§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§?!F§)
         {
            this.§?!F§.updateState();
         }
      }
   }
}
