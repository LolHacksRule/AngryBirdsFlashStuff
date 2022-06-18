package §'!7§
{
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.events.MouseEvent;
   
   public class §%!?§ extends Popup
   {
      
      private static const §'j§:Number = 0.001;
       
      
      private var §'!A§:Boolean;
      
      protected var §7!1§:§7I§;
      
      public function §%!?§(param1:§5h§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §3!@§.§`Z§.Views.PopupView_FullGame[0] : §3!@§.§`Z§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§'!A§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§ 3§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§<@§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §'j§;
         getItemByName("Container_Popup").mClip.scaleY = §'j§;
         §^?§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §'j§;
            getItemByName("Container_Popup").mClip.scaleY = §'j§;
            if(this.§7!1§ != null)
            {
               this.§7!1§.stop();
            }
            this.§7!1§ = §>!2§.§72§.§-z§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§'j§,
               "scaleY":§'j§
            },0.2,§>!2§.§<T§);
            this.§7!1§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function § 3§(param1:MouseEvent) : void
      {
         §^?§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§ 3§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§<@§);
         this.deActivate();
      }
      
      private function §<@§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§ 3§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§<@§);
         if(this.§'!A§)
         {
            §]o§.§1$§.§!!B§("PowerUp");
         }
         else
         {
            §]o§.§1$§.§!!B§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §'j§;
         getItemByName("Container_Popup").mClip.scaleY = §'j§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§7!1§)
         {
            this.§7!1§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§7!1§)
         {
            this.§7!1§.updateState();
         }
      }
   }
}
