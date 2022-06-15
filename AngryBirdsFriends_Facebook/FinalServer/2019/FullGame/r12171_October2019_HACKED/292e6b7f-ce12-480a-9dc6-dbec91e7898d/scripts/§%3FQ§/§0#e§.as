package §?Q§
{
   import § $0§.AbstractPopup;
   import §";§.§false§;
   import §#$?§.§7!b§;
   import §?#z§.§]$?§;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §0#e§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function §0#e§(param1:int, param2:int)
      {
         super(param1,param2,§false§.§4#;§.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §]$?§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §;#'§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§7"#§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §7"#§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §7!b§.§7@§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
