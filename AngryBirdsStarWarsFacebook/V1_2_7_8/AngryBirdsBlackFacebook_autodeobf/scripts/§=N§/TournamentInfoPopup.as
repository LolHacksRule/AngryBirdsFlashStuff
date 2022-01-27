package §=N§
{
   import §4m§.AbstractPopup;
   import §^!`§.§%n§;
   import flash.display.MovieClip;
   
   public class TournamentInfoPopup extends AbstractPopup
   {
      
      public static const §8j§:String = "tournament";
       
      
      public function TournamentInfoPopup(param1:int, param2:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_TournamentInfo[0],"TournamentInfoPopup");
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
      }
   }
}
