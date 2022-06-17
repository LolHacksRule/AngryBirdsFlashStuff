package §?!N§
{
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §;$5§.AbstractPopup;
   import §>"9§.§[#%§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ChallengePopup extends AbstractPopup
   {
      
      public static const ID:String = "ChallengePopup";
       
      
      public function ChallengePopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupView_Challenge[0],ID);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'!,§ = param3;
         switch(eventName)
         {
            case "PLAY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
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
