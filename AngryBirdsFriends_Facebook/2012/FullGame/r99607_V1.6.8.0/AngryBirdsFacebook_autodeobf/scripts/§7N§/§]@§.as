package §7N§
{
   import §+I§.§9!%§;
   import §<"1§.§,U§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.MouseEvent;
   
   public class §]@§ extends Popup
   {
      
      public static const §2"9§:String = "generalError";
      
      public static const §76§:String = "thirdPartyCookiesDisabled";
       
      
      public function §]@§(param1:§"!j§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§1"-§.§ !>§.Views.PopupView_Error[0],param1);
         §3!l§ = §1!L§;
         mClip.gotoAndStop([§2"9§,§76§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§&!a§);
         §9!%§.pause();
         AngryBirdsFP11.§`"B§.§'H§();
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`"B§.§'H§();
         §,U§.§53§("window.location.reload");
      }
   }
}
