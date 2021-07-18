package §;b§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §@y§.§0=§;
   import §^U§.§7!r§;
   
   public class §&H§ extends §7!r§
   {
      
      public static const §%!Q§:String = "LevelEndEditorFailState";
       
      
      public function §&H§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@"0§.§%P§(StateLevelEditorTestPlay.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            case "MENU":
               §0"#§.§4"#§();
               §@"0§.§%P§(StateLevelEditor.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
