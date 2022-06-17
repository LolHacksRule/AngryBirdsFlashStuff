package § h§
{
   import §+!n§.§+!p§;
   import §9!6§.AbstractPopup;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class § "t§ extends AbstractPopup
   {
      
      public static const ID:String = "ServerUpdatePopup";
       
      
      public function § "t§(param1:int, param2:int)
      {
         super(param1,param2,§&n§.§7a§.Views.PopupServerUpdated_Error[0],ID);
      }
      
      override protected function init() : void
      {
         super.init();
         §+!p§.pause();
         AngryBirdsBase.singleton.exitFullScreen();
         var _loc1_:MovieClip = §'o§.mClip;
         _loc1_.btnReload.addEventListener(MouseEvent.CLICK,this.§-$>§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §-$>§(param1:Event) : void
      {
         AngryBirdsBase.singleton.stage.displayState = StageDisplayState.NORMAL;
         §=#c§.§<!t§("reloadPage");
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
