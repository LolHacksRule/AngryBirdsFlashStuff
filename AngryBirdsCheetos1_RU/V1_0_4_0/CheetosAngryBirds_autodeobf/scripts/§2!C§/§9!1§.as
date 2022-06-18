package §2!C§
{
   import §&h§.§+Y§;
   import §,!!§.§3!R§;
   import §1e§.§&!R§;
   import §2K§.§ 3§;
   import §2K§.§catch§;
   import §3!8§.§[X§;
   import §39§.§-W§;
   import §6!K§.§#![§;
   import §6!K§.§3l§;
   import §9!S§.§+!=§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §]u§.§+e§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   
   public class §9!1§ extends §1!b§
   {
      
      public static const §+!a§:String = "LevelEndFailState3";
       
      
      private var §0!9§:§3!R§;
      
      public function §9!1§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_LevelEndFail3[0]);
         var _loc1_:§catch§ = §?!?§.getItemByName("TextField_LevelFailed") as §catch§;
         _loc1_.setText(§[X§.getText("Text_Level_Failed"));
         this.§0!9§ = new §3!R§(0,0,0,0);
         §?!?§.movieClip.addChildAt(this.§0!9§,§?!?§.movieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         try
         {
            §+e§.§5?§("levelComplete",§-W§.§,[§,false);
         }
         catch(e:Error)
         {
         }
         var currentPage:int = 0;
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.start();
         }
         this.§0!9§.§6!c§(0.7);
         this.§3!D§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!9§.§&!J§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         var _loc4_:§3l§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               §,!]§.§31§();
               mNextState = §,!]§.§+!a§;
               break;
            case "REPLAY":
               if((§,^§.§0K§ as §+!=§).§]!I§())
               {
                  if(!§1!b§.sCheetosPopups.showPopup(§&!R§.RESTART_LEVEL))
                  {
                     this.§^!,§();
                  }
               }
               else
               {
                  this.§^!,§();
               }
               break;
            case "MENU":
               this.§#!9§();
               break;
            case "BUTTON_NO":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  this.§^!,§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §3l§;
               §7d§.§`!<§.§`-§ = !§7d§.§`!<§.§`-§;
               if(§7d§.§`!<§.§`-§)
               {
                  _loc4_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§3l§.§0!c§);
               break;
         }
      }
      
      private function §3!D§() : void
      {
         var _loc1_:§ 3§ = §?!?§.getItemByName("Button_Replay") as § 3§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         if((§,^§.§0K§ as §+!=§).§]!I§())
         {
            _loc2_.visible = true;
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function §^!,§() : void
      {
         §,!]§.§10§();
         mNextState = §,!]§.§+!a§;
      }
      
      private function §#!9§() : void
      {
         mNextState = §^w§.§+!a§;
      }
   }
}
