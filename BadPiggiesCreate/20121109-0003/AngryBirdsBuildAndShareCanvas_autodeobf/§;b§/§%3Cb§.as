package §;b§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §@y§.§0=§;
   import §^U§.§7!r§;
   
   public class §<b§ extends §7!r§
   {
      
      public static const §%!Q§:String = "LevelEndFailStatePreview";
       
      
      public function §<b§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndFailPreview[0]);
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
