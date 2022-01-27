package §+"Y§
{
   import §+"x§.AbstractPopup;
   import §7!n§.§>"H§;
   import §9"U§.§7"1§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class CrystalImprovementsPopup extends AbstractPopup
   {
      
      public static const §-"§:String = "CrystalImprovementsPopup";
       
      
      public function CrystalImprovementsPopup(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_CrystalImprovements[0],§-"§);
         §7"1§(§throw§(§4"#§.singleton).dataModel).userProgress.saveTutorialSeen(§-"§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         _loc2_.btnOkay.addEventListener(MouseEvent.CLICK,this.§1!,§);
      }
      
      private function §1!,§(param1:MouseEvent) : void
      {
         §=Q§.§`!A§("misc_menubuttonproceed_1");
         dispatchEvent(new §>"H§(§>"H§.CLOSE,this));
      }
   }
}
