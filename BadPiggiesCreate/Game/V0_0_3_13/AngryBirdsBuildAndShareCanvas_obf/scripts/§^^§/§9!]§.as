package §^^§
{
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §2x§.§5!h§;
   import §4!j§.§0p§;
   
   public class §9!]§ extends §5!h§
   {
      
      public static const §>H§:String = "LevelEndStatePreview";
       
      
      public function §9!]§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelEndPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §1§.§+!u§(StateLevelPreview.§>H§);
               mNextState = §1§.§>H§;
         }
      }
   }
}
