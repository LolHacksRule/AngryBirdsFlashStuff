package §<"s§
{
   import §#<§.§8!j§;
   import §,"v§.§@§;
   import §4m§.AbstractPopup;
   import §^!`§.§%n§;
   import §`"8§.§-!w§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public final class CrystalImprovementsPopup extends AbstractPopup
   {
      
      public static const §^"3§:String = "CrystalImprovementsPopup";
       
      
      public function CrystalImprovementsPopup(param1:int, param2:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_CrystalImprovements[0],§^"3§);
         §-!w§(§&"1§(§;"@§.singleton).dataModel).userProgress.saveTutorialSeen(§^"3§);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         _loc2_.btnOkay.addEventListener(MouseEvent.CLICK,this.§9h§);
      }
      
      private function §9h§(param1:MouseEvent) : void
      {
         §@§.§=Y§("misc_menubuttonproceed_1");
         dispatchEvent(new §8!j§(§8!j§.CLOSE,this));
      }
   }
}
