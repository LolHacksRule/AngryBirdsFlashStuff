package §>z§
{
   import §%!-§.§?l§;
   import §+"s§.StarCollectionPopup;
   import §0!s§.AbstractPopup;
   import §2";§.§95§;
   import §3+§.§0!S§;
   import §3+§.§;!H§;
   import §5" §.TabbedShopPopup;
   import §<!r§.§'##§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class TournamentEndedPopup extends AbstractPopup
   {
      
      public static const ID:String = "TournamentEndedPopup";
       
      
      private var § $=§:int;
      
      public function TournamentEndedPopup(param1:int, param2:int)
      {
         if(§'##§.§`"H§.§;#Q§)
         {
            this.§ $=§ = §'##§.§`"H§.§;#Q§.id;
         }
         else
         {
            this.§ $=§ = 0;
         }
         super(param1,param2,§?l§.§3m§.Views.PopupTournamentEnded[0],ID);
         AngryBirdsBase.singleton.popupManager.§7$9§(StarCollectionPopup.ID);
         AngryBirdsBase.singleton.popupManager.§7$9§(TabbedShopPopup.ID);
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&!M§.mClip;
         _loc1_.btnBack.addEventListener(MouseEvent.CLICK,this.§0"?§);
         §7n§.pause();
      }
      
      private function §0"?§(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Boolean = false;
         var _loc4_:Object = null;
         if(§'##§.§`"H§.§;!q§())
         {
            §0!S§.§>!Q§();
            AngryBirdsBase.singleton.§1!L§(§0!S§.STATE_NAME);
         }
         else
         {
            _loc2_ = §'##§.§`"H§.§ t§();
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
               §;!H§.§#$%§(this.§ $=§);
               §'##§.§0!V§();
               AngryBirdsBase.singleton.§1!L§(§;!H§.STATE_NAME);
            }
            else
            {
               §;!H§.§`"&§();
               §'##§.§0!V§();
               AngryBirdsBase.singleton.§1!L§(§95§.STATE_NAME);
            }
         }
         close();
      }
   }
}
