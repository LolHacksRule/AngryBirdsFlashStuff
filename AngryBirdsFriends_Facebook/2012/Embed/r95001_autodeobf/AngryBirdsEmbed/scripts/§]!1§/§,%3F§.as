package §]!1§
{
   import §10§.§#!4§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import flash.events.MouseEvent;
   
   public class §,?§ extends Popup
   {
      
      private static const §;f§:Number = 0.001;
       
      
      private var §#`§:Boolean;
      
      protected var §;v§:§1^§;
      
      public function §,?§(param1:§[H§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §1W§.§&!G§.Views.PopupView_FullGame[0] : §1W§.§&!G§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§#`§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§>!8§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§"h§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §;f§;
         getItemByName("Container_Popup").mClip.scaleY = §;f§;
         §#!4§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §;f§;
            getItemByName("Container_Popup").mClip.scaleY = §;f§;
            if(this.§;v§ != null)
            {
               this.§;v§.stop();
            }
            this.§;v§ = §,G§.§+S§.§1u§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§;f§,
               "scaleY":§;f§
            },0.2,§,G§.§;§);
            this.§;v§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §>!8§(param1:MouseEvent) : void
      {
         §#!4§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§>!8§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§"h§);
         this.deActivate();
      }
      
      private function §"h§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§>!8§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§"h§);
         if(this.§#`§)
         {
            §#@§.§]z§.§[!2§("PowerUp");
         }
         else
         {
            §#@§.§]z§.§[!2§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §;f§;
         getItemByName("Container_Popup").mClip.scaleY = §;f§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§;v§)
         {
            this.§;v§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§;v§)
         {
            this.§;v§.updateState();
         }
      }
   }
}
