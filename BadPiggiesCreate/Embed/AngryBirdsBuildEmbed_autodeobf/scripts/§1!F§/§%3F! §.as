package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §=!3§.§;!!§;
   
   public class §?! § extends §@!D§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      public function §?! §(param1:Boolean = true, param2:String = "StatePlay")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §?P§ = true;
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEmbed[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §26§.§!=§();
               mNextState = §26§.STATE_NAME;
               break;
            case "ZOOM_IN":
               §5!J§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §5!J§.doUserZoom(false);
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
      
      override public function run(param1:Number) : int
      {
         super.run(param1);
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function getVictoryState() : String
      {
         return §"![§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §2!i§.STATE_NAME;
      }
   }
}
