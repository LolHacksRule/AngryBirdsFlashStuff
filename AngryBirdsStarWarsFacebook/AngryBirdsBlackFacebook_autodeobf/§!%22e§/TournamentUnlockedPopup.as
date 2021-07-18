package §!"e§
{
   import §+D§.§^"m§;
   import §1#R§.§+#[§;
   import §7!$§.§&$§;
   import §7#W§.§6!W§;
   import §;"Y§.§&#X§;
   import §="2§.§?!r§;
   import §[!m§.AbstractPopup;
   import §]!$§.§6y§;
   import flash.display.MovieClip;
   
   public class TournamentUnlockedPopup extends AbstractPopup
   {
      
      public static const §%!h§:String = "TournamentUnlockedPopup";
      
      public static const §""l§:int = 0;
      
      public static const § !e§:int = 1;
       
      
      protected var §1#5§:§^"m§;
      
      private var §&!D§:int = 0;
      
      public function TournamentUnlockedPopup(param1:int, param2:int, param3:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_TournamentUnlocked[0],§%!h§);
         this.§&!D§ = param3;
      }
      
      override protected function init() : void
      {
         this.§1#5§ = §^"m§(§^c§.getItemByName("Button_Close"));
         var _loc1_:MovieClip = §^c§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         _loc2_.Tournament_Animation.visible = false;
         var _loc3_:MovieClip = _loc2_.getChildByName("MovieClip_Title") as MovieClip;
         switch(this.§&!D§)
         {
            case §""l§:
               _loc3_.gotoAndStop("tournament_unlocked");
               break;
            case § !e§:
               _loc3_.gotoAndStop("join_tournament");
         }
      }
      
      override protected function onTransitionInComplete() : void
      {
         super.onTransitionInComplete();
         var _loc1_:MovieClip = §^c§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = _loc1_.getChildByName("Tournament_Animation") as MovieClip;
         _loc2_.gotoAndPlay("start_hover_tournament_button");
         §?!r§.§"#_§("tournament_hoverstate");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §6y§.§5z§)
         {
            this.§1#5§.visible = true;
         }
         if(param1 == §6y§.§;X§)
         {
            this.§1#5§.visible = false;
         }
         if(param1 == §6y§.§>]§)
         {
            this.§1#5§.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2.toUpperCase())
         {
            case "PLAY":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               §4#;§.singleton.§ g§(§6!W§.§^!7§);
               dispatchEvent(new §+#[§(§+#[§.CLOSE,this));
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
