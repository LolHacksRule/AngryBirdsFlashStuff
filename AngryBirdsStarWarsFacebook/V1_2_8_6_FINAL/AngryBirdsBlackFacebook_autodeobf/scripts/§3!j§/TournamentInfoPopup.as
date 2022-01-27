package §3!j§
{
   import §+"x§.AbstractPopup;
   import §[!H§.§^x§;
   import flash.display.MovieClip;
   
   public class TournamentInfoPopup extends AbstractPopup
   {
      
      public static const §%=§:String = "tournament";
       
      
      public function TournamentInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_TournamentInfo[0],"TournamentInfoPopup");
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
      }
   }
}
