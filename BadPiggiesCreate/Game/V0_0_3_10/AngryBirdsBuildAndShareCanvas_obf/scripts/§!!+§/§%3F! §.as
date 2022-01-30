package §!!+§
{
   import §,i§.§&"9§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §<8§.§7!n§;
   
   public class §?! § extends §&"9§
   {
      
      public static const §]"2§:String = "LevelEndEditorFailState";
       
      
      public function §?! §(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §4!l§.§"l§(StateLevelEditorTestPlay.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            case "MENU":
               § !x§.§ X§();
               §4!l§.§"l§(StateLevelEditor.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
