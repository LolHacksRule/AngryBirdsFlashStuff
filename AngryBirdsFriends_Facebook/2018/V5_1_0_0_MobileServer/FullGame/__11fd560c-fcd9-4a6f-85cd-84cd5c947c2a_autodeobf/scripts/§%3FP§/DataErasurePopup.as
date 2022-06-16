package §?P§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §2G§.§ #$§;
   import §2G§.§#"8§;
   import §@V§.§;m§;
   import §[#[§.§=#Q§;
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
       
      
      private var §1"2§:Object;
      
      public function DataErasurePopup(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupDataErasure[0],ID);
      }
      
      private static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §,#2§.mClip;
         _loc1_.btnCancelErasure.addEventListener(MouseEvent.CLICK,this.§4C§);
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§!P§);
         _loc1_.btnReload.visible = false;
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:MovieClip = §,#2§.mClip;
         this.§1"2§ = param1;
         _loc2_.txtBody.text = "The data erasure is being processed.";
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §,#2§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.hide(param1,param2);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         if(this.§1"2§ && this.§1"2§.scheduledErasure)
         {
            _loc2_ = this.§]#M§();
            if(_loc2_ > 0)
            {
               _loc3_ = §=#Q§.§5"H§(_loc2_);
               §,#2§.mClip.txtBody.text = "Your data will be erased in: " + _loc3_[0];
            }
            else
            {
               this.§'$$§("Please refresh the page.");
            }
         }
      }
      
      private function §4C§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         navigateToURL(new URLRequest(§,A§.§6#w§ + "?locale=" + § #$§.§3<§ + "&token=" + §,A§(§,A§.§2#O§).§<u§.§@!o§.accessToken + "&appId=" + §,A§.§ !;§),"_blank");
         this.§'$$§("Please refresh the page for it to reflect any changes.");
      }
      
      private function §0"G§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,this.§0"G§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.§+$=§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+$=§);
         close();
      }
      
      private function §+$=§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.§[#=§,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §'$$§(param1:String) : void
      {
         §,#2§.mClip.btnReload.visible = true;
         §,#2§.mClip.btnCancelErasure.visible = false;
         §,#2§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §,#2§.mClip.txtBody.text = param1;
      }
      
      public function §]#M§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§1"2§.scheduledErasure - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      private function §!P§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §^!K§.§+"D§("reloadPage");
      }
   }
}
