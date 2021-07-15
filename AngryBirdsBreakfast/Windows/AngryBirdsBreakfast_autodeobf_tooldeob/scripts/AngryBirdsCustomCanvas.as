package
{
   import com.rovio.ApplicationCanvas;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class AngryBirdsCustomCanvas extends ApplicationCanvas
   {
       
      
      private const PATTERN:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
      
      private var mFullScreenSwitchKeyComboPressed:Boolean = false;
      
      private var mOsCode:String = "Win";
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.detectOS();
      }
      
      private function detectOS() : void
      {
         this.mOsCode = Capabilities.os.substr(0,3);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         new AngryBirdsCustom(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,100);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.onKeyUp,false,100);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(!this.mFullScreenSwitchKeyComboPressed)
         {
            if(this.mOsCode == "Win" && (param1.keyCode == Keyboard.ENTER && param1.altKey))
            {
               this.mFullScreenSwitchKeyComboPressed = true;
               this.onDisplayStateChange();
            }
            else if(this.mOsCode == "Mac" && (Keyboard.COMMAND && param1.keyCode == Keyboard.F))
            {
               this.mFullScreenSwitchKeyComboPressed = true;
               this.onDisplayStateChange();
            }
         }
      }
      
      public function onDisplayStateChange() : void
      {
         if(stage.displayState == StageDisplayState.NORMAL)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         else
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         this.mFullScreenSwitchKeyComboPressed = false;
      }
      
      private function onKeyUp(param1:KeyboardEvent) : void
      {
         this.mFullScreenSwitchKeyComboPressed = false;
      }
   }
}
