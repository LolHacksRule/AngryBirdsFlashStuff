package §%9§
{
   import §"I§.§ !R§;
   import §&!>§.§3!k§;
   import §??§.PopupClosedEvent;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§4!O§;
   import §[!b§.§'!R§;
   import §`!_§.§[!q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!s§ extends §<a§
   {
      
      private static const §]![§:Number = 1;
      
      private static var §5"-§:Class = §=U§;
       
      
      protected var §[!n§:MovieClip;
      
      protected var § ;§:String;
      
      private const §6!s§:int = 300;
      
      private var §<!#§:int;
      
      private var §5!B§:int = 1;
      
      private var §4?§:Timer;
      
      private var §8@§:Boolean;
      
      private var §3&§:§4!O§;
      
      private var §!!A§:Boolean;
      
      private var §=![§:Boolean;
      
      public function §-!s§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §?!^§ = true;
         §+!X§ = false;
         §8!^§ = true;
         if(!param6)
         {
            §[""§ = new §[!q§(0,0,0,0.7);
         }
         super(§9r§.§"d§,§>!H§.DEFAULT,§ !R§.§`G§(§5"-§));
         this.§ ;§ = param4;
         §=!O§ = true;
         this.§[!n§ = param3;
         this.§[!n§.gotoAndStop(1);
         this.§[!n§.name = "MovieClip_TutorialClip";
         this.§<!#§ = this.§[!n§.totalFrames;
         this.§!!A§ = param6;
         this.§=![§ = param7;
         this.§8@§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §0+§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§[!n§);
         this.§4?§ = new Timer(this.§6!s§,this.§<!#§ - 1);
         this.§4?§.addEventListener(TimerEvent.TIMER,this.§'!x§);
         this.§3&§ = §0+§.getItemByName("Button_CloseTutorial") as §4!O§;
         this.§3&§.setVisibility(true);
         §9!1§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§0+§.mClip.scaleX = §]![§;
         this.§0+§.mClip.scaleY = §]![§;
         §3!k§.§4[§("Channel_Theme");
         §3!k§.§4[§("7");
         §3!k§.§]"4§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §3!k§.§4[§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§4?§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §?!^§ = this.§=![§;
               §+!X§ = this.§=![§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§[!n§.stop();
         §9!1§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§ b§));
         super.dispose();
      }
      
      private function §'!x§(param1:TimerEvent) : void
      {
         if(!this.§[!n§)
         {
            return;
         }
         ++this.§5!B§;
         if(this.§5!B§ > this.§<!#§)
         {
            this.§5!B§ = 1;
         }
         if(this.§4?§.currentCount >= this.§4?§.repeatCount)
         {
            this.§8@§ = true;
            this.§4?§.reset();
            this.§4?§.start();
            §9!1§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§);
            if(this.§3&§.mClip && !this.§3&§.visible)
            {
               this.§3&§.setVisibility(true);
            }
         }
         this.§[!n§.gotoAndStop(this.§5!B§);
      }
      
      private function §0!H§(param1:MouseEvent) : void
      {
         §9!1§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!H§);
         this.§3&§.setVisibility(true);
         if(§42§)
         {
            §42§.stop();
         }
      }
   }
}
