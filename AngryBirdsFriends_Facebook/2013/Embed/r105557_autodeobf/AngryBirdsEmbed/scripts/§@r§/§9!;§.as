package §@r§
{
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import flash.events.MouseEvent;
   
   public class §9!;§ extends Popup
   {
      
      private static const §]n§:Number = 0.001;
       
      
      private var §[?§:Boolean;
      
      protected var §<!"§:§+!B§;
      
      public function §9!;§(param1:§,U§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §while§.§ v§.Views.PopupView_FullGame[0] : §while§.§ v§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§[?§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§3!0§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§]§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §]n§;
         getItemByName("Container_Popup").mClip.scaleY = §]n§;
         §'5§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §]n§;
            getItemByName("Container_Popup").mClip.scaleY = §]n§;
            if(this.§<!"§ != null)
            {
               this.§<!"§.stop();
            }
            this.§<!"§ = §6;§.§&e§.§42§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§]n§,
               "scaleY":§]n§
            },0.2,§6;§.§3!A§);
            this.§<!"§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §3!0§(param1:MouseEvent) : void
      {
         §'5§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§3!0§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§]§);
         this.deActivate();
      }
      
      private function §]§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§3!0§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§]§);
         if(this.§[?§)
         {
            §3J§.§3!2§.§`q§("PowerUp");
         }
         else
         {
            §3J§.§3!2§.§`q§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §]n§;
         getItemByName("Container_Popup").mClip.scaleY = §]n§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§<!"§)
         {
            this.§<!"§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§<!"§)
         {
            this.§<!"§.updateState();
         }
      }
   }
}
