package §;!1§
{
   import §"$§.Popup;
   import §"$§.§`§;
   import §5=§.§9F§;
   import §=!5§.§`X§;
   import §]B§.PopupsUIView;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §9u§
   {
      
      protected static var sBaseView:§`X§;
      
      protected static var sState:StatePopupManager;
      
      public static var sItem:Object;
      
      public static var sCurrentPopup:Popup;
      
      public static var returnToShop:Boolean;
      
      private static var sViewWidth:Number;
      
      private static var sViewHeight:Number;
       
      
      public function §9u§()
      {
         super();
      }
      
      public static function §?=§() : Boolean
      {
         return sCurrentPopup != null;
      }
      
      public static function initialize(stage:Stage) : void
      {
         if(sBaseView)
         {
            return;
         }
         sState = new StatePopupManager();
         sBaseView = new PopupsUIView(sState);
         sBaseView.init(<xml></xml>,new MovieClip());
         sBaseView.activateView();
         stage.addChild(sBaseView.container.mClip);
      }
      
      public static function setViewSize(width:int, height:int) : void
      {
         if(sBaseView)
         {
            sBaseView.viewWidth = width;
            sBaseView.viewHeight = height;
         }
         sViewWidth = width;
         sViewHeight = height;
      }
      
      public static function §'W§(eggId:String) : void
      {
         if(sCurrentPopup)
         {
            sCurrentPopup.close();
         }
         var eggPopup:EggCollectedPopup = new EggCollectedPopup(sBaseView,sState,eggId);
         §`G§(eggPopup);
      }
      
      public static function §+!<§() : SyncingPopup
      {
         var syncingPopup:SyncingPopup = new SyncingPopup(sBaseView,sState);
         §`G§(syncingPopup);
         return syncingPopup;
      }
      
      public static function §4!L§(errorType:String = null) : void
      {
         try
         {
            §`G§(new ErrorPopup(sBaseView,sState,errorType || ErrorPopup.GENERAL_ERROR));
            if(errorType == ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR)
            {
               §9F§.§>@§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §%l§() : void
      {
         try
         {
            §`G§(new ServerUpdatedPopup(sBaseView,sState));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#"§() : void
      {
         try
         {
            §`G§(new WarningPopup(sBaseView,sState));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §@^§() : void
      {
         §`G§(new ValentinePopup(sBaseView,sState));
      }
      
      public static function §'!e§(levelId:String, levelName:String, score:int, shareType:String) : void
      {
         §`G§(new EmbedPopup(sBaseView,sState,levelId,levelName,score,shareType));
      }
      
      private static function §`G§(popup:Popup, useFadeEffect:Boolean = true) : void
      {
         if(sCurrentPopup is ErrorPopup || sCurrentPopup is ServerUpdatedPopup)
         {
            return;
         }
         if(sCurrentPopup)
         {
            if((sCurrentPopup is WarningPopup || sCurrentPopup is SyncingPopup) && !(popup is ErrorPopup || popup is ServerUpdatedPopup))
            {
               return;
            }
            sCurrentPopup.deActivate();
         }
         sCurrentPopup = popup;
         popup.open(useFadeEffect);
         popup.mClip.addEventListener(§`§.ON_CLOSE_COMPLETE,§]§);
         setViewSize(sViewWidth,sViewHeight);
      }
      
      private static function §]§(e:§`§) : void
      {
         if(e.popup == sCurrentPopup)
         {
            sCurrentPopup = null;
         }
      }
   }
}
