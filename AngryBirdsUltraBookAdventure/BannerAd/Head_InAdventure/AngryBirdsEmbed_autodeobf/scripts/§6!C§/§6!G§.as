package §6!C§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §5!L§.§=w§;
   import flash.events.MouseEvent;
   
   public class §6!G§ extends Popup
   {
      
      private static const §0M§:Number = 0.001;
       
      
      private var §^!M§:Boolean;
      
      protected var §73§:§ !=§;
      
      public function §6!G§(param1:§4!,§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §5A§.§;L§.Views.PopupView_FullGame[0] : §5A§.§;L§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§^!M§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§4!F§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§+!6§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §0M§;
         getItemByName("Container_Popup").mClip.scaleY = §0M§;
         §=w§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §0M§;
            getItemByName("Container_Popup").mClip.scaleY = §0M§;
            if(this.§73§ != null)
            {
               this.§73§.stop();
            }
            this.§73§ = §@7§.§@6§.§3!%§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§0M§,
               "scaleY":§0M§
            },0.2,§@7§.§=;§);
            this.§73§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §4!F§(param1:MouseEvent) : void
      {
         §=w§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§4!F§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§+!6§);
         this.deActivate();
      }
      
      private function §+!6§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§4!F§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§+!6§);
         if(this.§^!M§)
         {
            §<!7§.§4!"§.§^"§("PowerUp");
         }
         else
         {
            §<!7§.§4!"§.§^"§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §0M§;
         getItemByName("Container_Popup").mClip.scaleY = §0M§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§73§)
         {
            this.§73§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§73§)
         {
            this.§73§.updateState();
         }
      }
   }
}
