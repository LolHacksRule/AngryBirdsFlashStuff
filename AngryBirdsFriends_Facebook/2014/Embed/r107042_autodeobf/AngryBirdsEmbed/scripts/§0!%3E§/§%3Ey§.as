package §0!>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §6h§.§[!4§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.events.MouseEvent;
   
   public class §>y§ extends Popup
   {
      
      private static const §=%§:Number = 0.001;
       
      
      private var §8§:Boolean;
      
      protected var §49§:§9;§;
      
      public function §>y§(param1:§+!B§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §-!K§.§"!G§.Views.PopupView_FullGame[0] : §-!K§.§"!G§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§8§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§]I§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§%5§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §=%§;
         getItemByName("Container_Popup").mClip.scaleY = §=%§;
         §[!4§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §=%§;
            getItemByName("Container_Popup").mClip.scaleY = §=%§;
            if(this.§49§ != null)
            {
               this.§49§.stop();
            }
            this.§49§ = §'!A§.§5+§.§;h§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§=%§,
               "scaleY":§=%§
            },0.2,§'!A§.§[L§);
            this.§49§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §]I§(param1:MouseEvent) : void
      {
         §[!4§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§]I§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§%5§);
         this.deActivate();
      }
      
      private function §%5§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§]I§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§%5§);
         if(this.§8§)
         {
            §0S§.§8!E§.dynamic("PowerUp");
         }
         else
         {
            §0S§.§8!E§.dynamic("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §=%§;
         getItemByName("Container_Popup").mClip.scaleY = §=%§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§49§)
         {
            this.§49§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§49§)
         {
            this.§49§.updateState();
         }
      }
   }
}
