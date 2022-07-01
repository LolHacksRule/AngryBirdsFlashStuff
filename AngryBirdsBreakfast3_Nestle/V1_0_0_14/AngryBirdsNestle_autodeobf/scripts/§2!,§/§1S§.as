package §2!,§
{
   import §!R§.§#!L§;
   import §+T§.§1!7§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §4!4§.PopupClosedEvent;
   import §4Y§.§ `§;
   import §8!$§.§1b§;
   import §;X§.§4!@§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1S§ extends §,!#§
   {
      
      private static const §]!0§:Number = 1;
      
      private static var §8T§:Class = § "!§;
       
      
      protected var §%!b§:MovieClip;
      
      protected var §>S§:String;
      
      private const §!!0§:int = 300;
      
      private var §%!,§:int;
      
      private var §;!d§:int = 1;
      
      private var §!!1§:Timer;
      
      private var §!!J§:Boolean;
      
      private var §3!<§:§ `§;
      
      private var §8u§:Boolean;
      
      private var §2t§:Boolean;
      
      public function §1S§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §&5§ = true;
         §2L§ = false;
         §[!k§ = true;
         if(!param6)
         {
            §4!?§ = new §1!7§(0,0,0,0.7);
         }
         super(§8!f§.§7!N§,§finally§.DEFAULT,§1b§.§?!R§(§8T§));
         this.§>S§ = param4;
         §[!?§ = true;
         this.§%!b§ = param3;
         this.§%!b§.gotoAndStop(1);
         this.§%!b§.name = "MovieClip_TutorialClip";
         this.§%!,§ = this.§%!b§.totalFrames;
         this.§8u§ = param6;
         this.§2t§ = param7;
         this.§!!J§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §;"#§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§%!b§);
         this.§!!1§ = new Timer(this.§!!0§,this.§%!,§ - 1);
         this.§!!1§.addEventListener(TimerEvent.TIMER,this.§3`§);
         this.§3!<§ = §;"#§.getItemByName("Button_CloseTutorial") as § `§;
         this.§3!<§.setVisibility(true);
         §1!!§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§;"#§.mClip.scaleX = §]!0§;
         this.§;"#§.mClip.scaleY = §]!0§;
         §4!@§.§`[§("Channel_Theme");
         §4!@§.§`[§("7");
         §4!@§.§`!w§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §4!@§.§`[§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§!!1§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §&5§ = this.§2t§;
               §2L§ = this.§2t§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§%!b§.stop();
         §1!!§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§3!%§));
         super.dispose();
      }
      
      private function §3`§(param1:TimerEvent) : void
      {
         if(!this.§%!b§)
         {
            return;
         }
         ++this.§;!d§;
         if(this.§;!d§ > this.§%!,§)
         {
            this.§;!d§ = 1;
         }
         if(this.§!!1§.currentCount >= this.§!!1§.repeatCount)
         {
            this.§!!J§ = true;
            this.§!!1§.reset();
            this.§!!1§.start();
            §1!!§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§);
            if(this.§3!<§.mClip && !this.§3!<§.visible)
            {
               this.§3!<§.setVisibility(true);
            }
         }
         this.§%!b§.gotoAndStop(this.§;!d§);
      }
      
      private function §>!p§(param1:MouseEvent) : void
      {
         §1!!§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§>!p§);
         this.§3!<§.setVisibility(true);
         if(§0!Z§)
         {
            §0!Z§.stop();
         }
      }
   }
}
