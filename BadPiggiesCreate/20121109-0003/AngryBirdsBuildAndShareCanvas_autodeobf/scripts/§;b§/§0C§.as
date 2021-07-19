package §;b§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §@y§.§0=§;
   import §^U§.§<"5§;
   
   public class §0C§ extends §<"5§
   {
      
      public static const §%!Q§:String = "LevelEndStatePreview";
       
      
      public function §0C§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@"0§.§%P§(StateLevelPreview.§%!Q§);
               mNextState = §@"0§.§%!Q§;
         }
      }
   }
}
