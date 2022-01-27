package §5G§
{
   import §!V§.§>d§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §3!,§.§#x§;
   import §6;§.§%[§;
   import §=!g§.§!!@§;
   import §>M§.§'V§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§4I§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   
   public class §;!8§ extends §?,§
   {
      
      public static const §3!?§:String = "LevelEndFailState3";
       
      
      private var §8!H§:§#x§;
      
      public function §;!8§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_LevelEndFail3[0]);
         var _loc1_:§'V§ = §%!0§.getItemByName("TextField_LevelFailed") as §'V§;
         _loc1_.setText(§4I§.getText("Text_Level_Failed"));
         this.§8!H§ = new §#x§(0,0,0,0);
         §%!0§.movieClip.addChildAt(this.§8!H§,§%!0§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         §!!@§.§%Q§("levelComplete",§5!9§.§-!O§.§ !&§(§@;§.§6!K§),false);
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.start();
         }
         this.§8!H§.§'H§(0.7);
         this.§+g§();
         §>d§.§@Y§(§>d§.§?+§,§@;§.§6!K§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8!H§.§"!c§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc4_:§0j§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!9§.§-4§();
               mNextState = §'!9§.§3!?§;
               break;
            case "REPLAY":
               if((§@!Z§.§;!,§ as § $§).§,!e§())
               {
                  if(§>f§.§%!`§ && §>f§.§%!`§.§`!b§ >= §"!d§.§"!Q§)
                  {
                     if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                     {
                        this.§+8§();
                     }
                  }
                  else
                  {
                     §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT);
                  }
               }
               else
               {
                  this.§+8§();
               }
               break;
            case "MENU":
               this.§+!K§();
               break;
            case "BUTTON_NO":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  this.§+8§();
               }
               break;
            case "CREDIT_OK":
               sCheetosPopups.hidePopup();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §0j§;
               §5!9§.§-!O§.§8!&§ = !§5!9§.§-!O§.§8!&§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  _loc4_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§0j§.§+o§);
               break;
         }
      }
      
      private function §+g§() : void
      {
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_Replay") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§@!Z§.§;!,§ as § $§).§,!e§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §+8§() : void
      {
         §'!9§.§7T§();
         mNextState = §'!9§.§3!?§;
      }
      
      private function §+!K§() : void
      {
         §,!7§.§13§();
         mNextState = §39§.§3!?§;
      }
   }
}
