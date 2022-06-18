package §;U§
{
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §>%§.§]3§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.events.MouseEvent;
   
   public class §3q§ extends Popup
   {
      
      private static const §7!,§:Number = 0.001;
       
      
      private var §2z§:Boolean;
      
      protected var §-o§:§`!-§;
      
      public function §3q§(param1:§&"§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §?O§.§@!<§.Views.PopupView_FullGame[0] : §?O§.§@!<§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§2z§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§#!0§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§,u§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §7!,§;
         getItemByName("Container_Popup").mClip.scaleY = §7!,§;
         §]3§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §7!,§;
            getItemByName("Container_Popup").mClip.scaleY = §7!,§;
            if(this.§-o§ != null)
            {
               this.§-o§.stop();
            }
            this.§-o§ = §;q§.§9r§.§%!#§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§7!,§,
               "scaleY":§7!,§
            },0.2,§;q§.§]`§);
            this.§-o§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         §]3§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§#!0§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§,u§);
         this.deActivate();
      }
      
      private function §,u§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§#!0§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§,u§);
         if(this.§2z§)
         {
            §7@§.§7y§.§8v§("PowerUp");
         }
         else
         {
            §7@§.§7y§.§8v§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §7!,§;
         getItemByName("Container_Popup").mClip.scaleY = §7!,§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§-o§)
         {
            this.§-o§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§-o§)
         {
            this.§-o§.updateState();
         }
      }
   }
}
