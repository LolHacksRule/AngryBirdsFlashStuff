package §<"s§
{
   import §""d§.§2"8§;
   import §#<§.§8!j§;
   import §%!c§.§@!#§;
   import §,"v§.§@§;
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §7!@§.§6"§;
   import §^!`§.§%n§;
   import flash.display.MovieClip;
   
   public class TournamentUnlockedPopup extends AbstractPopup
   {
      
      public static const §^"3§:String = "TournamentUnlockedPopup";
      
      public static const §;T§:int = 0;
      
      public static const §,F§:int = 1;
       
      
      protected var §"!O§:§2"8§;
      
      private var §6!p§:int = 0;
      
      public function TournamentUnlockedPopup(param1:int, param2:int, param3:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_TournamentUnlocked[0],§^"3§);
         this.§6!p§ = param3;
      }
      
      override protected function init() : void
      {
         this.§"!O§ = §2"8§(§,r§.getItemByName("Button_Close"));
         var _loc1_:MovieClip = §,r§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         _loc2_.Tournament_Animation.visible = false;
         var _loc3_:MovieClip = _loc2_.getChildByName("MovieClip_Title") as MovieClip;
         switch(this.§6!p§)
         {
            case §;T§:
               _loc3_.gotoAndStop("tournament_unlocked");
               break;
            case §,F§:
               _loc3_.gotoAndStop("join_tournament");
         }
      }
      
      override protected function onTransitionInComplete() : void
      {
         super.onTransitionInComplete();
         var _loc1_:MovieClip = §,r§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = _loc1_.getChildByName("Tournament_Animation") as MovieClip;
         _loc2_.gotoAndPlay("start_hover_tournament_button");
         §@§.§=Y§("tournament_hoverstate");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6"§.§+"n§)
         {
            this.§"!O§.visible = true;
         }
         if(param1 == §6"§.§9!j§)
         {
            this.§"!O§.visible = false;
         }
         if(param1 == §6"§.§,#2§)
         {
            this.§"!O§.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2.toUpperCase())
         {
            case "PLAY":
               §@§.§=Y§("misc_menubuttonproceed_1");
               §;"@§.singleton.§0"B§(§@!#§.§'#2§);
               dispatchEvent(new §8!j§(§8!j§.CLOSE,this));
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
