package §<!U§
{
   import §!J§.§[&§;
   import §![§.§4!6§;
   import §#K§.§<!+§;
   import §'G§.§1!D§;
   import §'G§.§false§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§9d§;
   import §-V§.§@R§;
   import §0!>§.§1!#§;
   import §2e§.§?#§;
   import §4!H§.§[4§;
   import §7W§.§ !+§;
   import §?!1§.§+a§;
   import §?w§.§!&§;
   import flash.display.MovieClip;
   
   public class §<K§ extends §]u§
   {
      
      public static const §`O§:String = "LevelEndFailState3";
       
      
      private var §+W§:§?#§;
      
      public function §<K§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_LevelEndFail3[0]);
         var _loc1_:§1!D§ = §"c§.getItemByName("TextField_LevelFailed") as §1!D§;
         _loc1_.setText(§1!#§.getText("Text_Level_Failed"));
         this.§+W§ = new §?#§(0,0,0,0);
         §"c§.mMovieClip.addChildAt(this.§+W§,§"c§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §4!6§.§]l§("levelComplete",§<!+§.§^R§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.start();
         }
         this.§+W§.§]N§(0.7);
         this.§;z§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+W§.§5!<§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
      {
         var _loc4_:§9d§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0"§.§>!U§();
               mNextState = §0"§.§`O§;
               break;
            case "REPLAY":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.RESTART_LEVEL))
                  {
                     this.§;!F§();
                  }
               }
               else
               {
                  this.§;!F§();
               }
               break;
            case "MENU":
               this.§5!!§();
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  this.§;!F§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §9d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc4_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§9d§.§%C§);
               break;
         }
      }
      
      private function §;z§() : void
      {
         var _loc1_:§false§ = §"c§.getItemByName("Button_Replay") as §false§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§[&§.§&!'§ as §!&§).§`!P§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §;!F§() : void
      {
         §0"§.§!7§();
         mNextState = §0"§.§`O§;
      }
      
      private function §5!!§() : void
      {
         mNextState = §6l§.§`O§;
      }
   }
}
