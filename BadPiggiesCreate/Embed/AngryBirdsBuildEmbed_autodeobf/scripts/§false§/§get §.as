package §false§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §?!-§.§'!V§;
   import flash.events.MouseEvent;
   
   public class §get § extends Popup
   {
      
      private static const § 4§:Number = 0.001;
       
      
      private var §^!&§:Boolean;
      
      protected var §5f§:§0Y§;
      
      public function §get §(param1:§2U§, param2:Boolean)
      {
         var _loc3_:XML = !!param2 ? §=!Z§.§;K§.Views.PopupView_FullGame[0] : §=!Z§.§;K§.Views.PopupView_FullScreen[0];
         super(_loc3_,param1);
         this.§^!&§ = param2;
         mClip.Container_Popup.ButtonClose.addEventListener(MouseEvent.CLICK,this.§]y§);
         mClip.Container_Popup.ButtonFullGame.addEventListener(MouseEvent.CLICK,this.§`!X§);
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = § 4§;
         getItemByName("Container_Popup").mClip.scaleY = § 4§;
         §'!V§.pause();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            getItemByName("Container_Popup").mClip.scaleX = § 4§;
            getItemByName("Container_Popup").mClip.scaleY = § 4§;
            if(this.§5f§ != null)
            {
               this.§5f§.stop();
            }
            this.§5f§ = §@!T§.§`!t§.§8!"§(getItemByName("Container_Popup").mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":§ 4§,
               "scaleY":§ 4§
            },0.2,§@!T§.§41§);
            this.§5f§.play();
         }
         else
         {
            getItemByName("Container_Popup").mClip.scaleX = 1;
            getItemByName("Container_Popup").mClip.scaleY = 1;
         }
         super.open(param1);
      }
      
      private function §]y§(param1:MouseEvent) : void
      {
         §'!V§.resume();
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§]y§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§`!X§);
         this.deActivate();
      }
      
      private function §`!X§(param1:MouseEvent) : void
      {
         mClip.Container_Popup.ButtonClose.removeEventListener(MouseEvent.CLICK,this.§]y§);
         mClip.Container_Popup.ButtonFullGame.removeEventListener(MouseEvent.CLICK,this.§`!X§);
         if(this.§^!&§)
         {
            §#!?§.§8;§.§4!`§("PowerUp");
         }
         else
         {
            §#!?§.§8;§.§4!`§("FullScreen");
         }
      }
      
      override public function deActivate() : void
      {
         getItemByName("Container_Popup").setVisibility(false);
         getItemByName("Container_Popup").mClip.scaleX = § 4§;
         getItemByName("Container_Popup").mClip.scaleY = § 4§;
         super.deActivate();
         close();
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         super.viewWidth = param1;
         if(this.§5f§)
         {
            this.§5f§.updateState();
         }
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         super.viewHeight = param1;
         if(this.§5f§)
         {
            this.§5f§.updateState();
         }
      }
   }
}
