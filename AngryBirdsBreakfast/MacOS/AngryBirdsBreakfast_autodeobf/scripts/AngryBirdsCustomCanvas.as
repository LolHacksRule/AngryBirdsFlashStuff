package
{
   import §?""§.§`!o§;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class AngryBirdsCustomCanvas extends §`!o§
   {
       
      
      private const §"!H§:RegExp = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
      
      private var §#O§:Boolean = false;
      
      private var §?x§:String = "Win";
      
      public function AngryBirdsCustomCanvas()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.§<!"§);
         this.§%t§();
      }
      
      private function §%t§() : void
      {
         this.§?x§ = Capabilities.os.substr(0,3);
      }
      
      private function §<!"§(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.§<!"§);
         new §4!=§(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,100);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.§7i§,false,100);
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(!this.§#O§)
         {
            if(this.§?x§ == "Win" && (param1.keyCode == Keyboard.ENTER && param1.altKey))
            {
               this.§#O§ = true;
               this.§!"-§();
            }
            else if(this.§?x§ == "Mac" && (Keyboard.COMMAND && param1.keyCode == Keyboard.F))
            {
               this.§#O§ = true;
               this.§!"-§();
            }
         }
      }
      
      public function §!"-§() : void
      {
         if(stage.displayState == StageDisplayState.NORMAL)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         }
         else
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         this.§#O§ = false;
      }
      
      private function §7i§(param1:KeyboardEvent) : void
      {
         this.§#O§ = false;
      }
   }
}
