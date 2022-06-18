package § o§
{
   import §1#W§.§!#&§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<#m§.AbstractPopup;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ChallengePopup extends AbstractPopup
   {
      
      public static const ID:String = "ChallengePopup";
       
      
      public function ChallengePopup(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_Challenge[0],ID);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'"S§ = param3;
         switch(eventName)
         {
            case "PLAY":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("http://rov.io/friendsmobile"),"_blank");
                  this.close();
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
   }
}
