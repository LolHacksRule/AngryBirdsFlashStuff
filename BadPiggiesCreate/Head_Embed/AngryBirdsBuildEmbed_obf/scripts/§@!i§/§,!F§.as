package §@!i§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§"![§;
   
   public class §,!F§ extends §"![§
   {
      
      public static const STATE_NAME:String = "LevelEndStatePreview";
       
      
      public function §,!F§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndPreview[0]);
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
