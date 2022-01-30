package §!",§
{
   import §-P§.§1!I§;
   import §9!7§.§#p§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   
   public class §]7§ extends §1!I§
   {
      
      public static const §#!w§:String = "LevelEndFailStatePreview";
       
      
      public function §]7§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelEndFailPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §"F§.§%!,§(StateLevelPreview.§#!w§);
               mNextState = §"F§.§#!w§;
         }
      }
   }
}
