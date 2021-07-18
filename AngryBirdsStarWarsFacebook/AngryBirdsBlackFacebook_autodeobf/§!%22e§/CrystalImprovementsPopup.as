package §!"e§
{
   import §,"N§.§@#B§;
   import §1#R§.§+#[§;
   import §7!$§.§&$§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class CrystalImprovementsPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "CrystalImprovementsPopup";
       
      
      public function CrystalImprovementsPopup(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_CrystalImprovements[0],§%!h§);
         §@#B§(§@!m§(§4#;§.singleton).dataModel).userProgress.saveTutorialSeen(§%!h§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         _loc2_.btnOkay.addEventListener(MouseEvent.CLICK,this.§9"[§);
      }
      
      private function §9"[§(param1:MouseEvent) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
      }
   }
}
