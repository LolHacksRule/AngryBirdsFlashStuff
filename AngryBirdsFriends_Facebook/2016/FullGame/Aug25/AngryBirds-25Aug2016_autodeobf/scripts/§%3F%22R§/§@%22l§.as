package §?"R§
{
   import §+"%§.§6X§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §@"l§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function §@"l§(param1:int, param2:int)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §>"$§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §7!j§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§9#v§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §9#v§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §6X§.§3U§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
