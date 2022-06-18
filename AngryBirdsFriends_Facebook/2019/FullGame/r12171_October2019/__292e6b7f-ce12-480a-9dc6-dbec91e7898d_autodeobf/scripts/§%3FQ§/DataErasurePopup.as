package §?Q§
{
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#$?§.§7!b§;
   import §,#,§.§%"#§;
   import §,#,§.§=#o§;
   import §4S§.§+!p§;
   import §`"t§.§7"U§;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class DataErasurePopup extends AbstractPopup
   {
      
      public static const ID:String = "DataErasurePopup";
       
      
      private var §"#p§:Object;
      
      public function DataErasurePopup(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupDataErasure[0],ID);
      }
      
      private static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;#'§.mClip;
         _loc1_.btnCancelErasure.addEventListener(MouseEvent.CLICK,this.§<"`§);
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§7"6§);
         _loc1_.btnReload.visible = false;
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:MovieClip = §;#'§.mClip;
         this.§"#p§ = param1;
         _loc2_.txtBody.text = "The data erasure is being processed.";
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §;#'§.mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §;#'§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.hide(param1,param2);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         if(this.§"#p§ && this.§"#p§.scheduledErasure)
         {
            _loc2_ = this.§&"%§();
            if(_loc2_ > 0)
            {
               _loc3_ = §7"U§.§&#M§(_loc2_);
               §;#'§.mClip.txtBody.text = "Your data will be erased in: " + _loc3_[0];
            }
            else
            {
               this.§1e§("Please refresh the page.");
            }
         }
      }
      
      private function §<"`§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         navigateToURL(new URLRequest(§@z§.§-z§ + "?locale=" + §%"#§.§%#G§ + "&token=" + §@z§(§@z§.§ !D§).§ !n§.§@#-§.accessToken + "&appId=" + §@z§.§0"W§),"_blank");
         this.§1e§("Please refresh the page for it to reflect any changes.");
      }
      
      private function §7W§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,this.§7W§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.§9$4§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9$4§);
         close();
      }
      
      private function §9$4§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.§,"4§,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §1e§(param1:String) : void
      {
         §;#'§.mClip.btnReload.visible = true;
         §;#'§.mClip.btnCancelErasure.visible = false;
         §;#'§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §;#'§.mClip.txtBody.text = param1;
      }
      
      public function §&"%§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§"#p§.scheduledErasure - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      private function §7"6§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §7!b§.§7@§("reloadPage");
      }
   }
}
