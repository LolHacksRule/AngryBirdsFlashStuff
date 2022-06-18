package §3n§
{
   import §#h§.§^!+§;
   import §+!^§.§'Y§;
   import §0q§.§7+§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §7H§.§25§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §>N§.§"u§;
   import §?>§.§!&§;
   import §?>§.§<l§;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import §import§.§&^§;
   
   public class §&!J§ extends §<D§
   {
      
      public static const §,F§:String = "LevelEndFailState3";
       
      
      private var §7R§:§25§;
      
      public function §&!J§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_LevelEndFail3[0]);
         var _loc1_:§<l§ = §2!J§.getItemByName("TextField_LevelFailed") as §<l§;
         _loc1_.setText(§^!+§.getText("Text_Level_Failed"));
         this.§7R§ = new §25§(0,0,0,0);
         §2!J§.movieClip.addChildAt(this.§7R§,§2!J§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §&^§.§4'§("levelComplete",§[!L§.§^!X§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.start();
         }
         this.§7R§.§,!N§(0.7);
         this.§&v§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7R§.§@A§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         var _loc4_:§'q§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §7!6§.§3w§();
               mNextState = §7!6§.§,F§;
               break;
            case "REPLAY":
               if((§'Y§.§@j§ as §7+§).§^!G§())
               {
                  if(!§<D§.sCheetosPopups.showPopup(§-5§.RESTART_LEVEL))
                  {
                     this.§?t§();
                  }
               }
               else
               {
                  this.§?t§();
               }
               break;
            case "MENU":
               this.§9K§();
               break;
            case "BUTTON_NO":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  this.§?t§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §'q§;
               §7!^§.§-!@§.§=-§ = !§7!^§.§-!@§.§=-§;
               if(§7!^§.§-!@§.§=-§)
               {
                  _loc4_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§'q§.§"!^§);
               break;
         }
      }
      
      private function §&v§() : void
      {
         var _loc1_:§!&§ = §2!J§.getItemByName("Button_Replay") as §!&§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§'Y§.§@j§ as §7+§).§^!G§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §?t§() : void
      {
         §7!6§.§]!D§();
         mNextState = §7!6§.§,F§;
      }
      
      private function §9K§() : void
      {
         mNextState = §-'§.§,F§;
      }
   }
}
