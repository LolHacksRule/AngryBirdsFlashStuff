package § "v§
{
   import §7!$§.§&$§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   
   public class TournamentInfoPopup extends AbstractPopup
   {
      
      public static const §2!5§:String = "tournament";
       
      
      public function TournamentInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_TournamentInfo[0],"TournamentInfoPopup");
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
      }
   }
}
