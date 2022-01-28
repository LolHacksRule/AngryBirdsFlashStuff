package §1!F§
{
   import §#!4§.§+!S§;
   
   public class §%!A§ extends §"![§
   {
      
      public static const STATE_NAME:String = §"![§.STATE_NAME;
       
      
      public function §%!A§(param1:Boolean = false, param2:String = "LevelEndStateBS")
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
