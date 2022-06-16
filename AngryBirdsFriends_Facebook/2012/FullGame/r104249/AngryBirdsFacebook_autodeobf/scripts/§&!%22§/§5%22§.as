package §&!"§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §5!G§.§&2§;
   import §<<§.§=!L§;
   import flash.events.MouseEvent;
   
   public class §5"§ extends Popup
   {
      
      public static const §!"6§:String = "generalError";
      
      public static const §;s§:String = "thirdPartyCookiesDisabled";
       
      
      public function §5"§(param1:§^0§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§%^§.§?>§.Views.PopupView_Error[0],param1);
         §]!i§ = §#c§;
         mClip.gotoAndStop([§!"6§,§;s§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§]!Q§);
         §&2§.pause();
         AngryBirdsFP11.§#!4§.§1z§();
      }
      
      private function §]!Q§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§#!4§.§1z§();
         §=!L§.§+">§("window.location.reload");
      }
   }
}
