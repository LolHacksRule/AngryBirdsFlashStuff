package §2!!§
{
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.events.MouseEvent;
   
   public class §%!9§ extends Popup
   {
      
      private static const §3^§:Number = 0.001;
       
      
      private var §=H§:Boolean;
      
      protected var §'!<§:§]H§;
      
      public function §%!9§(param1:§+[§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §;Q§.static.Views.PopupView_FullGame[0] : §;Q§.static.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§=H§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§4+§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§4!N§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §3^§;
         getItemByName("Container_Popup").mClip.scaleY = §3^§;
         §2G§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §3^§;
            getItemByName("Container_Popup").mClip.scaleY = §3^§;
            if(this.§'!<§ != null)
            {
               this.§'!<§.stop();
            }
            this.§'!<§ = §<t§.§4J§.§#q§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§3^§,
               "scaleY":§3^§
            },0.2,§<t§.§74§);
            this.§'!<§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §4+§(param1:MouseEvent) : void
      {
         §2G§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§4+§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§4!N§);
         this.deActivate();
      }
      
      private function §4!N§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§4+§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§4!N§);
         if(this.§=H§)
         {
            §#g§.§^!G§.§>y§("PowerUp");
         }
         else
         {
            §#g§.§^!G§.§>y§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §3^§;
         getItemByName("Container_Popup").mClip.scaleY = §3^§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§'!<§)
         {
            this.§'!<§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§'!<§)
         {
            this.§'!<§.updateState();
         }
      }
   }
}
