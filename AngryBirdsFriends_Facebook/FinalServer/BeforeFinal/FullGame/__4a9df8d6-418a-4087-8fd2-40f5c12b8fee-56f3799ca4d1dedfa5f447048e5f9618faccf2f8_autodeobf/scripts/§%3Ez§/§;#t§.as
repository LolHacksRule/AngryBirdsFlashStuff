package §>z§
{
   import §%!-§.§?l§;
   import §0!s§.AbstractPopup;
   import §]C§.§ !+§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §;#t§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function §;#t§(param1:int, param2:int)
      {
         super(param1,param2,§?l§.§3m§.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §7n§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §&!M§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§!S§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §!S§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         § !+§.§>$%§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
