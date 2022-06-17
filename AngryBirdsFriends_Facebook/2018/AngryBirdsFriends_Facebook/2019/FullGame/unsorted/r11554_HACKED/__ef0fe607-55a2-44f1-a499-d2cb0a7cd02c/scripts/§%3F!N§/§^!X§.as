package §?!N§
{
   import §%#v§.§0"j§;
   import §7#j§.§@"F§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §^!X§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function §^!X§(param1:int, param2:int)
      {
         super(param1,param2,§0"j§.§-i§.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §%"T§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §8#Y§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§]v§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §]v§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §@"F§.§^$#§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
