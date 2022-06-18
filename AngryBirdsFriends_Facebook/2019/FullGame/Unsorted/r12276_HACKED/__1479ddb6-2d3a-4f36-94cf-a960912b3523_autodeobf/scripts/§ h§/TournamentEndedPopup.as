package § h§
{
   import §!"1§.StarCollectionPopup;
   import §+!n§.§+!p§;
   import §4#$§.§5"L§;
   import §4#l§.TabbedShopPopup;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import §[#v§.§4e§;
   import §[#v§.§7"Z§;
   import §^1§.§[$2§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      private var §?!V§:int;
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         if(§5"L§.§3"1§.§54§)
         {
            this.§?!V§ = §5"L§.§3"1§.§54§.id;
         }
         else
         {
            this.§?!V§ = 0;
         }
         super(param1,param2,§&n§.§7a§.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.§>#g§(StarCollectionPopup.ID);
         AngryBirdsBase.singleton.popupManager.§>#g§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §'o§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§]W§);
         §+!p§.pause();
      }
      
      private function §]W§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Boolean = false;
         var _loc4_:Object = null;
         if(§5"L§.§3"1§.§2o§())
         {
            §7"Z§.§,#M§();
            AngryBirdsBase.singleton.§%!?§(§7"Z§.STATE_NAME);
         }
         else
         {
            _loc2_ = §5"L§.§3"1§.§59§();
            _loc3_ = false;
            if(_loc2_)
            {
               for each(_loc4_ in _loc2_)
               {
                  if(_loc4_.p && _loc4_.p > 0)
                  {
                     _loc3_ = true;
                     break;
                  }
               }
            }
            if(_loc3_)
            {
               §4e§.§7!v§(this.§?!V§);
               §5"L§.§1!P§();
               AngryBirdsBase.singleton.§%!?§(§4e§.STATE_NAME);
            }
            else
            {
               §4e§.§'#x§();
               §5"L§.§1!P§();
               AngryBirdsBase.singleton.§%!?§(§[$2§.STATE_NAME);
            }
         }
         close();
      }
   }
}
