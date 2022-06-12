package §7N§
{
   import §,r§.§ !<§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §!F§ extends § !<§
   {
      
      public static const §8n§:String = "LevelEndStatePreview";
       
      
      public function §!F§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelEndPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!x§.§8U§(StateLevelPreview.§8n§);
               mNextState = §@!x§.§8n§;
         }
      }
   }
}
