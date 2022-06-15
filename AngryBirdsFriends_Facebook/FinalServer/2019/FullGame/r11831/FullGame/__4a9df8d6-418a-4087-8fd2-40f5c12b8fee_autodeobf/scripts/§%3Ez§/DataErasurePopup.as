package §>z§
{
   import §!#C§.§&%§;
   import §!#C§.§4!Q§;
   import §"!n§.§;"x§;
   import §%!-§.§?l§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §1L§.§>5§;
   import §]C§.§ !+§;
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
       
      
      private var § l§:Object;
      
      public function DataErasurePopup(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupDataErasure[0],ID);
      }
      
      private static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §&!M§.mClip;
         _loc1_.btnCancelErasure.addEventListener(MouseEvent.CLICK,this.§=j§);
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§1!y§);
         _loc1_.btnReload.visible = false;
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:MovieClip = §&!M§.mClip;
         this.§ l§ = param1;
         _loc2_.txtBody.text = "The data erasure is being processed.";
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §&!M§.mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §&!M§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.hide(param1,param2);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         if(this.§ l§ && this.§ l§.scheduledErasure)
         {
            _loc2_ = this.§'"^§();
            if(_loc2_ > 0)
            {
               _loc3_ = §;"x§.§%#T§(_loc2_);
               §&!M§.mClip.txtBody.text = "Your data will be erased in: " + _loc3_[0];
            }
            else
            {
               this.§4$0§("Please refresh the page.");
            }
         }
      }
      
      private function §=j§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         navigateToURL(new URLRequest(§ #v§.§&$'§ + "?locale=" + §&%§.§,#,§ + "&token=" + § #v§(§ #v§.§1!!§).§]p§.§["D§.accessToken + "&appId=" + § #v§.§>#r§),"_blank");
         this.§4$0§("Please refresh the page for it to reflect any changes.");
      }
      
      private function §[#o§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,this.§[#o§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.§+V§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+V§);
         close();
      }
      
      private function §+V§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.§?!b§,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §4$0§(param1:String) : void
      {
         §&!M§.mClip.btnReload.visible = true;
         §&!M§.mClip.btnCancelErasure.visible = false;
         §&!M§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §&!M§.mClip.txtBody.text = param1;
      }
      
      public function §'"^§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§ l§.scheduledErasure - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      private function §1!y§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         § !+§.§>$%§("reloadPage");
      }
   }
}
