package §4q§
{
   import §"^§.§9=§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.events.MouseEvent;
   
   public class §6!1§ extends Popup
   {
      
      private static const §``§:Number = 0.001;
       
      
      private var §!s§:Boolean;
      
      protected var §,L§:§6q§;
      
      public function §6!1§(param1:§@]§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §^!$§.§"!9§.Views.PopupView_FullGame[0] : §^!$§.§"!9§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§!s§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§,#§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§1!M§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §``§;
         getItemByName("Container_Popup").mClip.scaleY = §``§;
         §9=§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §``§;
            getItemByName("Container_Popup").mClip.scaleY = §``§;
            if(this.§,L§ != null)
            {
               this.§,L§.stop();
            }
            this.§,L§ = §[!-§.§ set§.§6B§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§``§,
               "scaleY":§``§
            },0.2,§[!-§.§-5§);
            this.§,L§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §,#§(param1:MouseEvent) : void
      {
         §9=§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§,#§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§1!M§);
         this.deActivate();
      }
      
      private function §1!M§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§,#§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§1!M§);
         if(this.§!s§)
         {
            §#'§.§20§.§"!O§("PowerUp");
         }
         else
         {
            §#'§.§20§.§"!O§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §``§;
         getItemByName("Container_Popup").mClip.scaleY = §``§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§,L§)
         {
            this.§,L§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§,L§)
         {
            this.§,L§.updateState();
         }
      }
   }
}
