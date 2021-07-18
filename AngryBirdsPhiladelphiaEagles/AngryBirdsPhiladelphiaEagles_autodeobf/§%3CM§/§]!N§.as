package §<M§
{
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import flash.events.MouseEvent;
   
   public class §]!N§ extends Popup
   {
      
      public static const §1!>§:String = "generalError";
      
      public static const §`e§:String = "thirdPartyCookiesDisabled";
       
      
      public function §]!N§(param1:§`o§, param2:StatePopupManager, param3:String = "generalError")
      {
         super(§`Z§.§5c§.Views.PopupView_Error[0],param1);
         mClip.gotoAndStop([§1!>§,§`e§].indexOf(param3) + 1);
         mClip.btnReload.addEventListener(MouseEvent.CLICK,this.§^c§);
         §#! §.pause();
         AngryBirdsFP11.§`y§.§@9§();
      }
      
      private function §^c§(param1:MouseEvent) : void
      {
         AngryBirdsFP11.§`y§.§@9§();
      }
   }
}
