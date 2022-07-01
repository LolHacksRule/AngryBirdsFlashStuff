package §@!i§
{
   import § !r§.Base64;
   import §!!8§.§-!D§;
   import §!"§.§!!v§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §+]§.§"U§;
   import §1!F§.§"![§;
   import §1?§.§+!§;
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §#S§ extends §"![§
   {
      
      public static const STATE_NAME:String = "LevelEndStateEditor";
       
      
      public function §#S§(param1:Boolean = false, param2:String = "LevelEndStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndEditor[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§?!W§())
         {
            (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).setEnabled(true);
            (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).mClip.filters = [];
         }
         else
         {
            (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).setEnabled(false);
            (§+!$§.getItemByName("BUTTON_PUBLISH") as §#!'§).mClip.filters = [StateLevelEditor.§finally§()];
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:Object = null;
         var _loc5_:BitmapData = null;
         var _loc6_:ByteArray = null;
         switch(param2)
         {
            case "REPLAY":
               §@!n§.§!=§(StateLevelEditorTestPlay.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "MENU":
               §+!§.§'!Q§();
               §@!n§.§!=§(StateLevelEditor.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "PUBLISH":
               if(!(_loc4_ = §"U§.§4!Z§()).valid)
               {
                  _loc4_ = new Object();
               }
               else
               {
                  _loc5_ = StateLevelEditorTestPlay.§^!`§();
                  _loc6_ = §!!v§.encode(_loc5_);
                  _loc4_.screen = Base64.§=G§(_loc6_);
               }
               §-!D§.§?5§("onPublish",JSON.stringify(_loc4_));
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
