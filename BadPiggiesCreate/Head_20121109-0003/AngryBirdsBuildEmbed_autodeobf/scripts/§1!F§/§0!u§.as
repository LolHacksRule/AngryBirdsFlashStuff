package §1!F§
{
   import §#!4§.§+!S§;
   
   public class §0!u§ extends §2!i§
   {
      
      public static const STATE_NAME:String = §2!i§.STATE_NAME;
       
      
      public function §0!u§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
      {
         super(param1,param2);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §26§.§!=§();
               mNextState = §26§.STATE_NAME;
               break;
            case "MENU":
         }
      }
   }
}
