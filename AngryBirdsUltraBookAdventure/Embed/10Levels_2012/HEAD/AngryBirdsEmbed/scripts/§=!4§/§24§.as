package §=!4§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import flash.events.MouseEvent;
   
   public class §24§ extends Popup
   {
      
      private static const §8u§:Number = 0.001;
       
      
      private var §=!§:Boolean;
      
      protected var §9!F§:§ !5§;
      
      public function §24§(param1:§!!1§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §0!&§.§'^§.Views.PopupView_FullGame[0] : §0!&§.§'^§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§=!§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§6!F§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§=P§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §8u§;
         getItemByName("Container_Popup").mClip.scaleY = §8u§;
         §,!!§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §8u§;
            getItemByName("Container_Popup").mClip.scaleY = §8u§;
            if(this.§9!F§ != null)
            {
               this.§9!F§.stop();
            }
            this.§9!F§ = §%!>§.§-]§.§?U§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§8u§,
               "scaleY":§8u§
            },0.2,§%!>§.§>!'§);
            this.§9!F§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §6!F§(param1:MouseEvent) : void
      {
         §,!!§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§6!F§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§=P§);
         this.deActivate();
      }
      
      private function §=P§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§6!F§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§=P§);
         if(this.§=!§)
         {
            §@!?§.§%P§.§7a§("PowerUp");
         }
         else
         {
            §@!?§.§%P§.§7a§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §8u§;
         getItemByName("Container_Popup").mClip.scaleY = §8u§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§9!F§)
         {
            this.§9!F§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§9!F§)
         {
            this.§9!F§.updateState();
         }
      }
   }
}
