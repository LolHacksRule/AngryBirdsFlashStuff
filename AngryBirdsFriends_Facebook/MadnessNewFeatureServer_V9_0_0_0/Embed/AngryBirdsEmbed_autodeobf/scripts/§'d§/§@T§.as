package §'d§
{
   import §>!O§.§[+§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import flash.events.MouseEvent;
   
   public class §@T§ extends Popup
   {
      
      private static const §9!M§:Number = 0.001;
       
      
      private var §#=§:Boolean;
      
      protected var §%9§:§'a§;
      
      public function §@T§(param1:§8H§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §'p§.§ ,§.Views.PopupView_FullGame[0] : §'p§.§ ,§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§#=§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§[!2§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§9]§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §9!M§;
         getItemByName("Container_Popup").mClip.scaleY = §9!M§;
         §[+§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §9!M§;
            getItemByName("Container_Popup").mClip.scaleY = §9!M§;
            if(this.§%9§ != null)
            {
               this.§%9§.stop();
            }
            this.§%9§ = §-!&§.§;R§.§2w§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§9!M§,
               "scaleY":§9!M§
            },0.2,§-!&§.§6n§);
            this.§%9§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §[!2§(param1:MouseEvent) : void
      {
         §[+§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§[!2§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§9]§);
         this.deActivate();
      }
      
      private function §9]§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§[!2§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§9]§);
         if(this.§#=§)
         {
            §#m§.§;C§.§%!4§("PowerUp");
         }
         else
         {
            §#m§.§;C§.§%!4§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §9!M§;
         getItemByName("Container_Popup").mClip.scaleY = §9!M§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§%9§)
         {
            this.§%9§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§%9§)
         {
            this.§%9§.updateState();
         }
      }
   }
}
