package §?!N§
{
   import §%#v§.§0"j§;
   import §7#j§.§@"F§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §>"Q§.§"!;§;
   import §]"'§.§1#"§;
   import §]"'§.§@"%§;
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
       
      
      private var §6!D§:Object;
      
      public function DataErasurePopup(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupDataErasure[0],ID);
      }
      
      private static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §8#Y§.mClip;
         _loc1_.btnCancelErasure.addEventListener(MouseEvent.CLICK,this.§8Y§);
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§ "8§);
         _loc1_.btnReload.visible = false;
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:MovieClip = §8#Y§.mClip;
         this.§6!D§ = param1;
         _loc2_.txtBody.text = "The data erasure is being processed.";
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.mClip.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         §8#Y§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         super.hide(param1,param2);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         if(this.§6!D§ && this.§6!D§.scheduledErasure)
         {
            _loc2_ = this.§&"C§();
            if(_loc2_ > 0)
            {
               _loc3_ = §&!b§.§0#$§(_loc2_);
               §8#Y§.mClip.txtBody.text = "Your data will be erased in: " + _loc3_[0];
            }
            else
            {
               this.§>!"§("Please refresh the page.");
            }
         }
      }
      
      private function §8Y§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         navigateToURL(new URLRequest(§'"a§.§ !f§ + "?locale=" + §1#"§.§<!f§ + "&token=" + §'"a§(§'"a§.§!!8§).§6#X§.§="4§.accessToken + "&appId=" + §'"a§.§;#M§),"_blank");
         this.§>!"§("Please refresh the page for it to reflect any changes.");
      }
      
      private function §1#N§(param1:Event) : void
      {
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(Event.COMPLETE,this.§1#N§);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.§#7§);
         _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#7§);
         close();
      }
      
      private function §#7§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.§3t§,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §>!"§(param1:String) : void
      {
         §8#Y§.mClip.btnReload.visible = true;
         §8#Y§.mClip.btnCancelErasure.visible = false;
         §8#Y§.mClip.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §8#Y§.mClip.txtBody.text = param1;
      }
      
      public function §&"C§() : int
      {
         var _loc1_:Number = 0;
         if(dataModel.serverSynchronizedTime)
         {
            _loc1_ = dataModel.serverSynchronizedTime.synchronizedTimeStamp;
         }
         var _loc2_:int = (this.§6!D§.scheduledErasure - _loc1_) / 1000;
         return int(Math.max(0,_loc2_));
      }
      
      private function § "8§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §@"F§.§^$#§("reloadPage");
      }
   }
}
