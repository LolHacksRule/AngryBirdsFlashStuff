package §<"s§
{
   import § 0§.§@Y§;
   import §4##§.§7!B§;
   import §4m§.AbstractPopup;
   import §^!`§.§%n§;
   import com.angrybirds.§;!e§;
   import flash.display.StageDisplayState;
   
   public class §%![§ extends AbstractPopup
   {
      
      public static const §^"3§:String = "ServerUpdatePopup";
       
      
      public function §%![§(param1:int, param2:int)
      {
         super(param1,param2,§%n§.§ set§.Popups.Popup_ServerUpdate[0],§^"3§);
      }
      
      override protected function init() : void
      {
         §;!e§.pause();
         §;"@§.singleton.§@_§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         if(param2 == "RELOAD")
         {
            §;"@§.singleton.stage.displayState = StageDisplayState.NORMAL;
            §@Y§.§7"H§("window.location.reload");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
