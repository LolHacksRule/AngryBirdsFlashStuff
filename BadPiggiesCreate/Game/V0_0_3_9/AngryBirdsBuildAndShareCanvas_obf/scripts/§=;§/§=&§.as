package §=;§
{
   import §&!&§.§7!8§;
   import §6p§.§'!B§;
   import §9!#§.§=!A§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   
   public class §=&§ extends §=!A§
   {
      
      public static const §8G§:String = "LevelEndEditorFailState";
       
      
      public function §=&§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §=!"§.§2!2§(StateLevelEditorTestPlay.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            case "MENU":
               §'!B§.§>T§();
               §=!"§.§2!2§(StateLevelEditor.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
