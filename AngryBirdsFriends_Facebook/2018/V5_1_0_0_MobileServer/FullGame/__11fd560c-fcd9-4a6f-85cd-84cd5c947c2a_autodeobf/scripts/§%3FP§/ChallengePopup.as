package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §3#T§.§'§;
   import §@!M§.§!"p§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ChallengePopup extends AbstractPopup
   {
      
      public static const ID:String = "ChallengePopup";
       
      
      public function ChallengePopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_Challenge[0],ID);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'#0§ = param3;
         switch(eventName)
         {
            case "PLAY":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://rov.io/friendsmobile"),"_blank");
                  this.close();
               }
               catch(e:Error)
               {
               }
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
   }
}
