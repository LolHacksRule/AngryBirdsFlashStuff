package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §8q§.§]d§;
   import §;"+§.§9!M§;
   import §;4§.§%@§;
   import §=&§.PopupClosedEvent;
   import §=b§.§5!p§;
   import §>P§.§,3§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&7§ extends §1>§
   {
      
      private static const §2!6§:Number = 1;
      
      private static var §6§:Class = §+r§;
       
      
      protected var §-!Z§:MovieClip;
      
      protected var §5!c§:String;
      
      private const §3"4§:int = 300;
      
      private var §@l§:int;
      
      private var §;!8§:int = 1;
      
      private var §"N§:Timer;
      
      private var §60§:Boolean;
      
      private var §!!P§:§9!M§;
      
      private var §4!L§:Boolean;
      
      private var §="6§:Boolean;
      
      public function §&7§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §2!b§ = true;
         §@n§ = false;
         §!d§ = true;
         if(!param6)
         {
            § Y§ = new §5!p§(0,0,0,0.7);
         }
         super(§4&§.§@"$§,§ !+§.DEFAULT,§%@§.set(§6§));
         this.§5!c§ = param4;
         §>"3§ = true;
         this.§-!Z§ = param3;
         this.§-!Z§.gotoAndStop(1);
         this.§-!Z§.name = "MovieClip_TutorialClip";
         this.§@l§ = this.§-!Z§.totalFrames;
         this.§4!L§ = param6;
         this.§="6§ = param7;
         this.§60§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §@!U§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§-!Z§);
         this.§"N§ = new Timer(this.§3"4§,this.§@l§ - 1);
         this.§"N§.addEventListener(TimerEvent.TIMER,this.§@!1§);
         this.§!!P§ = §@!U§.getItemByName("Button_CloseTutorial") as §9!M§;
         this.§!!P§.setVisibility(true);
         §>!t§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§@!U§.mClip.scaleX = §2!6§;
         this.§@!U§.mClip.scaleY = §2!6§;
         §]d§.§<"+§("Channel_Theme");
         §]d§.§<"+§("7");
         §]d§.§^!J§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §]d§.§<"+§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§"N§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §2!b§ = this.§="6§;
               §@n§ = this.§="6§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§-!Z§.stop();
         §>!t§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§3!X§));
         super.dispose();
      }
      
      private function §@!1§(param1:TimerEvent) : void
      {
         if(!this.§-!Z§)
         {
            return;
         }
         ++this.§;!8§;
         if(this.§;!8§ > this.§@l§)
         {
            this.§;!8§ = 1;
         }
         if(this.§"N§.currentCount >= this.§"N§.repeatCount)
         {
            this.§60§ = true;
            this.§"N§.reset();
            this.§"N§.start();
            §>!t§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§);
            if(this.§!!P§.mClip && !this.§!!P§.visible)
            {
               this.§!!P§.setVisibility(true);
            }
         }
         this.§-!Z§.gotoAndStop(this.§;!8§);
      }
      
      private function §'!u§(param1:MouseEvent) : void
      {
         §>!t§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'!u§);
         this.§!!P§.setVisibility(true);
         if(§2`§)
         {
            §2`§.stop();
         }
      }
   }
}
