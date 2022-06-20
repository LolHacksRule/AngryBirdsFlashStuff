package § h§
{
   import §!!H§.§ $4§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §>#Y§.§,#b§;
   import §>#Y§.§2"%§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
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
       
      
      private var §"""§:Object;
      
      public function DataErasurePopup(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupDataErasure[0],ID);
      }
      
      private static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §'o§.mClip;
         _loc1_.btnCancelErasure.addEventListener(MouseEvent.CLICK,this.§[$+§);
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§6$0§);
         _loc1_.btnReload.visible = false;
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:MovieClip = §'o§.mClip;
         this.§"""§ = param1;
         _loc2_.txtBody.text = "The data erasure is being processed.";
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §'o§.mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §'o§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.hide(param1,param2);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         if(this.§"""§ && this.§"""§.scheduledErasure)
         {
            _loc2_ = this.§@!-§();
            if(_loc2_ > 0)
            {
               _loc3_ = § $4§.§1"n§(_loc2_);
               §'o§.mClip.txtBody.text = "Your data will be erased in: " + _loc3_[0];
            }
            else
            {
               this.§0!?§("Please refresh the page.");
            }
         }
      }
      
      private function §[$+§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         navigateToURL(new URLRequest(§^"a§.§+"A§ + "?locale=" + §2"%§.§`z§ + "&token=" + §^"a§(§^"a§.§9!h§).§9$0§.§0"6§.accessToken + "&appId=" + §^"a§.§-!"§),"_blank");
         this.§0!?§("Please refresh the page for it to reflect any changes.");
      }
      
      private function §'#j§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,this.§'#j§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.§<"a§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§<"a§);
         close();
      }
      
      private function §<"a§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.§ !^§,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §0!?§(param1:String) : void
      {
         §'o§.mClip.btnReload.visible = true;
         §'o§.mClip.btnCancelErasure.visible = false;
         §'o§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §'o§.mClip.txtBody.text = param1;
      }
      
      public function §@!-§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§"""§.scheduledErasure - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      private function §6$0§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §=#c§.§<!t§("reloadPage");
      }
   }
}
