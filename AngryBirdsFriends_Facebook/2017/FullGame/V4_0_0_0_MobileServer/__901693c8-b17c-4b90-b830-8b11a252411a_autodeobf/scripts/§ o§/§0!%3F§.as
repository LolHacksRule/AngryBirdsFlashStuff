package § o§
{
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §8#D§.§=>§;
   import §<#m§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §0!?§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function §0!?§(param1:int, param2:int)
      {
         super(param1,param2,§=>§.§%" §.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §!#A§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §1"6§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§0]§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §0]§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         § "8§.§ "§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
