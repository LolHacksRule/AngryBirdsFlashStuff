package §?Q§
{
   import § $0§.AbstractPopup;
   import §!!L§.§ !8§;
   import §!!L§.§8"^§;
   import §""p§.StarCollectionPopup;
   import §";§.§false§;
   import §?#z§.§]$?§;
   import §]§.§3"E§;
   import §`,§.§7!$§;
   import §`D§.TabbedShopPopup;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      private var §'#s§:int;
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         if(§7!$§.§+!,§.§@!v§)
         {
            this.§'#s§ = §7!$§.§+!,§.§@!v§.id;
         }
         else
         {
            this.§'#s§ = 0;
         }
         super(param1,param2,§false§.§4#;§.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.§0"O§(StarCollectionPopup.ID);
         AngryBirdsBase.singleton.popupManager.§0"O§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;#'§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§^!<§);
         §]$?§.pause();
      }
      
      private function §^!<§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Boolean = false;
         var _loc4_:Object = null;
         if(§7!$§.§+!,§.§!$#§())
         {
            §8"^§.§!#C§();
            AngryBirdsBase.singleton.§3#§(§8"^§.STATE_NAME);
         }
         else
         {
            _loc2_ = §7!$§.§+!,§.§@#G§();
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
               § !8§.§9F§(this.§'#s§);
               §7!$§.§'"P§();
               AngryBirdsBase.singleton.§3#§(§ !8§.STATE_NAME);
            }
            else
            {
               § !8§.§<$'§();
               §7!$§.§'"P§();
               AngryBirdsBase.singleton.§3#§(§3"E§.STATE_NAME);
            }
         }
         close();
      }
   }
}
