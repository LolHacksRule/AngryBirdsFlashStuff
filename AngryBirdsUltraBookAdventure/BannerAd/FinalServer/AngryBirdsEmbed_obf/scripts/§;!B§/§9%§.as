package §;!B§
{
   import §5H§.§[k§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import flash.events.MouseEvent;
   
   public class §9%§ extends Popup
   {
      
      private static const §]!&§:Number = 0.001;
       
      
      private var §'! §:Boolean;
      
      protected var §#N§:§?!3§;
      
      public function §9%§(param1:§^3§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §!I§.§7y§.Views.PopupView_FullGame[0] : §!I§.§7y§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§'! § = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§];§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§ v§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §]!&§;
         getItemByName("Container_Popup").mClip.scaleY = §]!&§;
         §[k§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §]!&§;
            getItemByName("Container_Popup").mClip.scaleY = §]!&§;
            if(this.§#N§ != null)
            {
               this.§#N§.stop();
            }
            this.§#N§ = §,B§.§^n§.§2E§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§]!&§,
               "scaleY":§]!&§
            },0.2,§,B§.§;C§);
            this.§#N§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §];§(param1:MouseEvent) : void
      {
         §[k§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§];§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§ v§);
         this.deActivate();
      }
      
      private function § v§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§];§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§ v§);
         if(this.§'! §)
         {
            §#W§.§[G§.§=K§("PowerUp");
         }
         else
         {
            §#W§.§[G§.§=K§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §]!&§;
         getItemByName("Container_Popup").mClip.scaleY = §]!&§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§#N§)
         {
            this.§#N§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§#N§)
         {
            this.§#N§.updateState();
         }
      }
   }
}
