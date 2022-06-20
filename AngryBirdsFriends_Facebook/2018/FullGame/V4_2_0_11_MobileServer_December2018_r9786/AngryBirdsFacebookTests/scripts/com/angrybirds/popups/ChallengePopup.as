package com.angrybirds.popups
{
   import com.rovio.sound.SoundEngine;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.popup.AbstractPopup;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class ChallengePopup extends AbstractPopup
   {
      
      public static const ID:String = "ChallengePopup";
       
      
      public function ChallengePopup(layerIndex:int, priority:int)
      {
         super(layerIndex,priority,ViewXMLLibrary.mLibrary.Views.PopupView_Challenge[0],ID);
      }
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "PLAY":
               SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
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
