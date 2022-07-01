package § J§
{
   import §""6§.§<a§;
   import §'x§.§?z§;
   import §+!d§.§6=§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §?!k§.§0!t§;
   
   public class §2u§ extends §<a§
   {
      
      public static const §^z§:String = "LevelEndStateEditor";
       
      
      public function §2u§(param1:Boolean = false, param2:String = "LevelEndStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelEndEditor[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!L§ = §?z§.§=7§.§>"9§.§^!'§() > 0 && §?z§.§=7§.§>"9§.§8!F§() > 0;
         mNextState = StateLevelEditor.§^z§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §6"6§.§0!f§(StateLevelEditorTestPlay.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            case "MENU":
               §0!t§.§,!S§();
               §6"6§.§0!f§(StateLevelEditor.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
