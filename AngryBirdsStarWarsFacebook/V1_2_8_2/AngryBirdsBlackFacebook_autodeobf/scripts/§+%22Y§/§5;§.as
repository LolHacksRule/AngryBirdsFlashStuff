package §+"Y§
{
   import §+"x§.AbstractPopup;
   import §5"Q§.§5"s§;
   import §8!h§.§-V§;
   import §[!H§.§^x§;
   import com.angrybirds.§<!J§;
   import flash.display.StageDisplayState;
   
   public class §5;§ extends AbstractPopup
   {
      
      public static const §-"§:String = "ServerUpdatePopup";
       
      
      public function §5;§(param1:int, param2:int)
      {
         super(param1,param2,§^x§.§ '§.Popups.Popup_ServerUpdate[0],§-"§);
      }
      
      override protected function init() : void
      {
         §<!J§.pause();
         §4"#§.singleton.§,]§();
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         if(param2 == "RELOAD")
         {
            §4"#§.singleton.stage.displayState = StageDisplayState.NORMAL;
            §5"s§.§<!8§("window.location.reload");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
