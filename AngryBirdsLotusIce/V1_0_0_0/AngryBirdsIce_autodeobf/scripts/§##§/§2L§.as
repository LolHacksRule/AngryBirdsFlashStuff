package §##§
{
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import flash.events.MouseEvent;
   
   public class §2L§ extends Popup
   {
      
      private static const §]"§:Number = 0.001;
       
      
      private var § &§:Boolean;
      
      protected var §8c§:§]G§;
      
      public function §2L§(param1:§]T§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §2-§.§+J§.Views.PopupView_FullGame[0] : §2-§.§+J§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§ &§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§^p§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§2Z§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §]"§;
         getItemByName("Container_Popup").mClip.scaleY = §]"§;
         §8[§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §]"§;
            getItemByName("Container_Popup").mClip.scaleY = §]"§;
            if(this.§8c§ != null)
            {
               this.§8c§.stop();
            }
            this.§8c§ = §!j§.§5!B§.§+I§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§]"§,
               "scaleY":§]"§
            },0.2,§!j§.§5_§);
            this.§8c§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §^p§(param1:MouseEvent) : void
      {
         §8[§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§^p§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§2Z§);
         this.deActivate();
      }
      
      private function §2Z§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§^p§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§2Z§);
         if(this.§ &§)
         {
            §@A§.§^z§.§&k§("PowerUp");
         }
         else
         {
            §@A§.§^z§.§&k§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §]"§;
         getItemByName("Container_Popup").mClip.scaleY = §]"§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§8c§)
         {
            this.§8c§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§8c§)
         {
            this.§8c§.updateState();
         }
      }
   }
}
