package §?P§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §1!=§.AbstractPopup;
   import §;#D§.§3#U§;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §2"n§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function §2"n§(param1:int, param2:int)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §3#U§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §,#2§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§8x§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §8x§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §^!K§.§+"D§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
