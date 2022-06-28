package §%!4§
{
   import §##§.§9![§;
   import §##§.Popup;
   import §4!9§.§6"§;
   import §7p§.§+!N§;
   import §?t§.PopupsUIView;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!e§
   {
      
      protected static var sBaseView:§6"§;
      
      protected static var sState:StatePopupManager;
      
      public static var sItem:Object;
      
      public static var sCurrentPopup:Popup;
      
      public static var returnToShop:Boolean;
      
      private static var sViewWidth:Number;
      
      private static var sViewHeight:Number;
       
      
      public function §]!e§()
      {
         super();
      }
      
      public static function §1!J§() : Boolean
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
      
      public static function §?!K§(eggId:String) : void
      {
         if(sCurrentPopup)
         {
            sCurrentPopup.close();
         }
         var eggPopup:EggCollectedPopup = new EggCollectedPopup(sBaseView,sState,eggId);
         §"!#§(eggPopup);
      }
      
      public static function §6&§() : SyncingPopup
      {
         var syncingPopup:SyncingPopup = new SyncingPopup(sBaseView,sState);
         §"!#§(syncingPopup);
         return syncingPopup;
      }
      
      public static function §3!T§(errorType:String = null) : void
      {
         try
         {
            §"!#§(new ErrorPopup(sBaseView,sState,errorType || ErrorPopup.GENERAL_ERROR));
            if(errorType == ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR)
            {
               §+!N§.§8!§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §[!R§() : void
      {
         try
         {
            §"!#§(new ServerUpdatedPopup(sBaseView,sState));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §finally§() : void
      {
         try
         {
            §"!#§(new WarningPopup(sBaseView,sState));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §&R§() : void
      {
         §"!#§(new ValentinePopup(sBaseView,sState));
      }
      
      public static function §<!5§(levelId:String, levelName:String, score:int, shareType:String) : void
      {
         §"!#§(new EmbedPopup(sBaseView,sState,levelId,levelName,score,shareType));
      }
      
      private static function §"!#§(popup:Popup, useFadeEffect:Boolean = true) : void
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
         popup.mClip.addEventListener(§9![§.ON_CLOSE_COMPLETE,§%!@§);
         setViewSize(sViewWidth,sViewHeight);
      }
      
      private static function §%!@§(e:§9![§) : void
      {
         if(e.popup == sCurrentPopup)
         {
            sCurrentPopup = null;
         }
      }
   }
}
