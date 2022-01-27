package §+"Y§
{
   import §'"I§.§1-§;
   import §+"x§.AbstractPopup;
   import §7!n§.§>"H§;
   import §8!h§.§-V§;
   import §8"'§.§4!T§;
   import §=Z§.§;g§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import flash.display.MovieClip;
   
   public class TournamentUnlockedPopup extends AbstractPopup
   {
      
      public static const §-"§:String = "TournamentUnlockedPopup";
      
      public static const §1#$§:int = 0;
      
      public static const §8r§:int = 1;
       
      
      protected var §!#"§:§;g§;
      
      private var §3?§:int = 0;
      
      public function TournamentUnlockedPopup(param1:int, param2:int, param3:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_TournamentUnlocked[0],§-"§);
         this.§3?§ = param3;
      }
      
      override protected function init() : void
      {
         this.§!#"§ = §;g§(§[#,§.getItemByName("Button_Close"));
         var _loc1_:MovieClip = §[#,§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         _loc2_.mask = _loc1_;
         _loc2_.Tournament_Animation.visible = false;
         var _loc3_:MovieClip = _loc2_.getChildByName("MovieClip_Title") as MovieClip;
         switch(this.§3?§)
         {
            case §1#$§:
               _loc3_.gotoAndStop("tournament_unlocked");
               break;
            case §8r§:
               _loc3_.gotoAndStop("join_tournament");
         }
      }
      
      override protected function onTransitionInComplete() : void
      {
         super.onTransitionInComplete();
         var _loc1_:MovieClip = §[#,§.getItemByName("Container_Content").mClip;
         var _loc2_:MovieClip = _loc1_.getChildByName("Tournament_Animation") as MovieClip;
         _loc2_.gotoAndPlay("start_hover_tournament_button");
         §=Q§.§`!A§("tournament_hoverstate");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         if(param1 == §1-§.§!o§)
         {
            this.§!#"§.visible = true;
         }
         if(param1 == §1-§.§<§)
         {
            this.§!#"§.visible = false;
         }
         if(param1 == §1-§.§?j§)
         {
            this.§!#"§.visible = false;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2.toUpperCase())
         {
            case "PLAY":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               §4"#§.singleton.§`0§(§4!T§.§-!U§);
               dispatchEvent(new §>"H§(§>"H§.CLOSE,this));
               return;
            default:
               super.onUIInteraction(param1,param2,param3);
               return;
         }
      }
   }
}
