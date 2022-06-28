package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import flash.events.MouseEvent;
   
   public class §<5§ extends Popup
   {
      
      private static const §,6§:Number = 0.001;
       
      
      private var §]! §:Boolean;
      
      protected var §]5§:§3_§;
      
      public function §<5§(param1:§0#§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §06§.§-`§.Views.PopupView_FullGame[0] : §06§.§-`§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§]! § = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§&!>§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§04§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §,6§;
         getItemByName("Container_Popup").mClip.scaleY = §,6§;
         §"h§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §,6§;
            getItemByName("Container_Popup").mClip.scaleY = §,6§;
            if(this.§]5§ != null)
            {
               this.§]5§.stop();
            }
            this.§]5§ = §,!G§.§@j§.§47§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§,6§,
               "scaleY":§,6§
            },0.2,§,!G§.§5]§);
            this.§]5§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §&!>§(param1:MouseEvent) : void
      {
         §"h§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§&!>§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§04§);
         this.deActivate();
      }
      
      private function §04§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§&!>§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§04§);
         if(this.§]! §)
         {
            §+!0§.§2[§.§5"§("PowerUp");
         }
         else
         {
            §+!0§.§2[§.§5"§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §,6§;
         getItemByName("Container_Popup").mClip.scaleY = §,6§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§]5§)
         {
            this.§]5§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§]5§)
         {
            this.§]5§.updateState();
         }
      }
   }
}
