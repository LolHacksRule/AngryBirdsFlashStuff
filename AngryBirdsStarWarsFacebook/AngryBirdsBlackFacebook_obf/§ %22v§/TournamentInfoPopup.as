package § "v§
{
   import §7!$§.§&$§;
   import §[!m§.AbstractPopup;
   import flash.display.MovieClip;
   
   public class TournamentInfoPopup extends AbstractPopup
   {
      
      public static const §2!5§:String = "tournament";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2!5§ = "tournament";
         }
      }
      
      public function TournamentInfoPopup(param1:int, param2:int)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2,§&$§.§@8§.Popups.Popup_TournamentInfo[0],"TournamentInfoPopup");
         }
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         if(!_loc3_)
         {
            _loc2_.mask = _loc1_;
         }
      }
   }
}
