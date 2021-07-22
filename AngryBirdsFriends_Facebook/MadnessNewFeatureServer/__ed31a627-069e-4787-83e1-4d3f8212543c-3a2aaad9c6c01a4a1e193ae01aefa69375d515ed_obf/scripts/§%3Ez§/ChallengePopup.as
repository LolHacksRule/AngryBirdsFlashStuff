package §>z§
{
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §8#K§.§3Z§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ChallengePopup extends AbstractPopup
   {
      
      public static const ID:String = "ChallengePopup";
       
      
      public function ChallengePopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupView_Challenge[0],ID);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§6"n§ = param3;
         switch(eventName)
         {
            case "PLAY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
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
