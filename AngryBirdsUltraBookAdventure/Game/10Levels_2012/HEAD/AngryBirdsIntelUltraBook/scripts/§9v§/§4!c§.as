package §9v§
{
   import §6!'§.PopupsUIView;
   import §9!!§.§85§;
   import §>!"§.§>f§;
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §4!c§
   {
      
      protected static var sBaseView:§-!H§;
      
      protected static var sState:StatePopupManager;
      
      public static var sItem:Object;
      
      public static var sCurrentPopup:Popup;
      
      public static var returnToShop:Boolean;
      
      private static var sViewWidth:Number;
      
      private static var sViewHeight:Number;
       
      
      public function §4!c§()
      {
         super();
      }
      
      public static function §&v§() : Boolean
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
      
      public static function §[]§(eggId:String) : void
      {
         if(sCurrentPopup)
         {
            sCurrentPopup.close();
         }
         var eggPopup:EggCollectedPopup = new EggCollectedPopup(sBaseView,sState,eggId);
         §"k§(eggPopup);
      }
      
      public static function §6F§() : SyncingPopup
      {
         var syncingPopup:SyncingPopup = new SyncingPopup(sBaseView,sState);
         §"k§(syncingPopup);
         return syncingPopup;
      }
      
      public static function §?!U§(errorType:String = null) : void
      {
         try
         {
            §"k§(new ErrorPopup(sBaseView,sState,errorType || ErrorPopup.GENERAL_ERROR));
            if(errorType == ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR)
            {
               §85§.§0+§();
            }
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §5X§() : void
      {
         try
         {
            §"k§(new ServerUpdatedPopup(sBaseView,sState));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §8B§() : void
      {
         try
         {
            §"k§(new WarningPopup(sBaseView,sState));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §throw§() : void
      {
         §"k§(new ValentinePopup(sBaseView,sState));
      }
      
      public static function §4!]§(levelId:String, levelName:String, score:int, shareType:String) : void
      {
         §"k§(new EmbedPopup(sBaseView,sState,levelId,levelName,score,shareType));
      }
      
      private static function §"k§(popup:Popup, useFadeEffect:Boolean = true) : void
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
         popup.mClip.addEventListener(§>f§.ON_CLOSE_COMPLETE,§2^§);
         setViewSize(sViewWidth,sViewHeight);
      }
      
      private static function §2^§(e:§>f§) : void
      {
         if(e.popup == sCurrentPopup)
         {
            sCurrentPopup = null;
         }
      }
   }
}
