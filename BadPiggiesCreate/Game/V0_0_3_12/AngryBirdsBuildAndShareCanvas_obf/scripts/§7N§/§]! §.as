package §7N§
{
   import §,r§.§2!_§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §]! § extends §2!_§
   {
      
      public static const §8n§:String = "LevelEndFailStatePreview";
       
      
      public function §]! §(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelEndFailPreview[0]);
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
