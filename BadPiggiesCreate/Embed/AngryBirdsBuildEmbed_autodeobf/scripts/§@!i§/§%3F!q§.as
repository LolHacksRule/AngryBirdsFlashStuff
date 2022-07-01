package §@!i§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§2!i§;
   
   public class §?!q§ extends §2!i§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStatePreview";
       
      
      public function §?!q§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndFailPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!n§.§!=§(StateLevelPreview.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
         }
      }
   }
}
