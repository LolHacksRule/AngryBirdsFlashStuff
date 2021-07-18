package §<M§
{
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.events.MouseEvent;
   
   public class §5?§ extends Popup
   {
      
      private static const §=s§:Number = 0.001;
       
      
      private var §89§:Boolean;
      
      protected var §,$§:§[!9§;
      
      public function §5?§(param1:§`o§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §`Z§.§5c§.Views.PopupView_FullGame[0] : §`Z§.§5c§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§89§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§[T§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§!! §);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §=s§;
         getItemByName("Container_Popup").mClip.scaleY = §=s§;
         §#! §.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §=s§;
            getItemByName("Container_Popup").mClip.scaleY = §=s§;
            if(this.§,$§ != null)
            {
               this.§,$§.stop();
            }
            this.§,$§ = §3C§.§>o§.§<t§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§=s§,
               "scaleY":§=s§
            },0.2,§3C§.§%l§);
            this.§,$§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §[T§(param1:MouseEvent) : void
      {
         §#! §.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§[T§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§!! §);
         this.deActivate();
      }
      
      private function §!! §(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§[T§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§!! §);
         if(this.§89§)
         {
            §!D§.§46§.§<!E§("PowerUp");
         }
         else
         {
            §!D§.§46§.§<!E§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §=s§;
         getItemByName("Container_Popup").mClip.scaleY = §=s§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§,$§)
         {
            this.§,$§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§,$§)
         {
            this.§,$§.updateState();
         }
      }
   }
}
