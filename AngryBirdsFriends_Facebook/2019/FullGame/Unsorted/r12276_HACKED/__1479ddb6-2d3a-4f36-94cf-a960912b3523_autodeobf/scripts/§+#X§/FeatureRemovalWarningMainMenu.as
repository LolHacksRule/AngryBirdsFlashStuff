package §+#X§
{
   import § "v§.§4$4§;
   import §9!6§.AbstractPopup;
   import §<8§.§8!g§;
   import §[#A§.§&n§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class FeatureRemovalWarningMainMenu extends AbstractPopup
   {
      
      public static const ID:String = "FeatureRemovalWarningMainMenu";
       
      
      public function FeatureRemovalWarningMainMenu(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupView_FeatureRemovalWarningMainMenu[0],ID);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§8!g§ = param3;
         switch(eventName)
         {
            case "FAQ":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest("https://angrybirdsfriends.rovio.com/hc/en-us/articles/360023284553"),"_blank");
               }
               catch(e:Error)
               {
               }
               break;
            case "GREAT":
               this.close();
               break;
            default:
               super.onUIInteraction(eventIndex,eventName,component);
         }
      }
   }
}
