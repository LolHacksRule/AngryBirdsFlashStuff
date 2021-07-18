package §!"e§
{
   import §7!$§.§&$§;
   import §;"Y§.§&#X§;
   import §="V§.§""v§;
   import §[!m§.AbstractPopup;
   import com.angrybirds.§,!q§;
   import flash.display.StageDisplayState;
   
   public class §1y§ extends AbstractPopup
   {
      
      public static const §%!h§:String = "ServerUpdatePopup";
       
      
      public function §1y§(param1:int, param2:int)
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_ServerUpdate[0],§%!h§);
      }
      
      override protected function init() : void
      {
         §,!q§.pause();
         §4#;§.singleton.§<#'§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         if(param2 == "RELOAD")
         {
            §4#;§.singleton.stage.displayState = StageDisplayState.NORMAL;
            §""v§.§&R§("window.location.reload");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
