package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §3"V§.§ b§;
   import §^"3§.§`$4§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ChallengePopup extends AbstractPopup
   {
      
      public static const ID:String = "ChallengePopup";
       
      
      public function ChallengePopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupView_Challenge[0],ID);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§`$4§ = param3;
         switch(eventName)
         {
            case "PLAY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
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
