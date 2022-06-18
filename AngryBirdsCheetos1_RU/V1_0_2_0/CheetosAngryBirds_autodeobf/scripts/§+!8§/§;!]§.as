package §+!8§
{
   import §!&§.§]o§;
   import §!7§.§=!3§;
   import §"I§.§-x§;
   import §#J§.§]B§;
   import §#b§.§5!#§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §'=§.§]d§;
   import §,'§.§[2§;
   import §2!P§.§6=§;
   import §7L§.§+!$§;
   import §7L§.§9I§;
   import §@!W§.§8!W§;
   import §[]§.§'!X§;
   import §[]§.§+F§;
   import flash.display.MovieClip;
   
   public class §;!]§ extends §;A§
   {
      
      public static const §,!+§:String = "LevelEndFailState3";
       
      
      private var §4>§:§]o§;
      
      public function §;!]§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_LevelEndFail3[0]);
         var _loc1_:§'!X§ = §&X§.getItemByName("TextField_LevelFailed") as §'!X§;
         _loc1_.setText(§]B§.getText("Text_Level_Failed"));
         this.§4>§ = new §]o§(0,0,0,0);
         §&X§.movieClip.addChildAt(this.§4>§,§&X§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §[2§.§^J§("levelComplete",§5!#§.§'D§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.start();
         }
         this.§4>§.§9$§(0.7);
         this.§^!%§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4>§.§4!§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         var _loc4_:§+!$§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §=!S§.§20§();
               mNextState = §=!S§.§,!+§;
               break;
            case "REPLAY":
               if((§8!W§.§=X§ as §=!3§).§^!7§())
               {
                  if(!§;A§.sCheetosPopups.showPopup(§]d§.RESTART_LEVEL))
                  {
                     this.§7^§();
                  }
               }
               else
               {
                  this.§7^§();
               }
               break;
            case "MENU":
               this.§#!W§();
               break;
            case "BUTTON_NO":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  this.§7^§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §+!$§;
               §@!!§.§%F§.§4<§ = !§@!!§.§%F§.§4<§;
               if(§@!!§.§%F§.§4<§)
               {
                  _loc4_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§+!$§.§^U§);
               break;
         }
      }
      
      private function §^!%§() : void
      {
         var _loc1_:§+F§ = §&X§.getItemByName("Button_Replay") as §+F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§8!W§.§=X§ as §=!3§).§^!7§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §7^§() : void
      {
         §=!S§.§?#§();
         mNextState = §=!S§.§,!+§;
      }
      
      private function §#!W§() : void
      {
         mNextState = §=f§.§,!+§;
      }
   }
}
