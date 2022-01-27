package §@<§
{
   import §&b§.§[F§;
   import §4M§.;
   import §4M§.§^'§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.events.MouseEvent;
   
   public class §-!"§ extends Popup
   {
      
      private static const §0!O§:Number = 0.001;
       
      
      private var § !?§:Boolean;
      
      protected var §^M§:§<Q§;
      
      public function §-!"§(param1:§^'§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §#4§.§]X§.Views.PopupView_FullGame[0] : §#4§.§]X§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§ !?§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§#X§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§!=§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §0!O§;
         getItemByName("Container_Popup").mClip.scaleY = §0!O§;
         §[F§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = §0!O§;
            getItemByName("Container_Popup").mClip.scaleY = §0!O§;
            if(this.§^M§ != null)
            {
               this.§^M§.stop();
            }
            this.§^M§ = §5^§.§<"§.§^g§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§0!O§,
               "scaleY":§0!O§
            },0.2,§5^§.§throw§);
            this.§^M§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §#X§(param1:MouseEvent) : void
      {
         §[F§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§#X§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§!=§);
         this.deActivate();
      }
      
      private function §!=§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§#X§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§!=§);
         if(this.§ !?§)
         {
            §>!?§.§=!N§.§`!E§("PowerUp");
         }
         else
         {
            §>!?§.§=!N§.§`!E§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = §0!O§;
         getItemByName("Container_Popup").mClip.scaleY = §0!O§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§^M§)
         {
            this.§^M§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§^M§)
         {
            this.§^M§.updateState();
         }
      }
   }
}
