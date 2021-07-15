package §[!i§
{
   import §,L§.§6!W§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §7g§.PopupClosedEvent;
   import §<!F§.§,!e§;
   import each.§8!N§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §,!X§ extends §@"§
   {
      
      private static const §`!Z§:Number = 1;
      
      private static var §;t§:Class = §!V§;
       
      
      protected var §>!>§:MovieClip;
      
      protected var §]!S§:String;
      
      private const § !M§:int = 300;
      
      private var §^"-§:int;
      
      private var §4!M§:int = 1;
      
      private var §6!=§:Timer;
      
      private var §@!s§:Boolean;
      
      private var §,?§:§;§;
      
      private var §=!-§:Boolean;
      
      private var §?L§:Boolean;
      
      public function §,!X§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §-!w§ = true;
         §@!X§ = false;
         §0!T§ = true;
         if(!param6)
         {
            §7!k§ = new §,!e§(0,0,0,0.7);
         }
         super(§1!<§.§20§,§]l§.DEFAULT,§8!N§.§?!c§(§;t§));
         this.§]!S§ = param4;
         §%!v§ = true;
         this.§>!>§ = param3;
         this.§>!>§.gotoAndStop(1);
         this.§>!>§.name = "MovieClip_TutorialClip";
         this.§^"-§ = this.§>!>§.totalFrames;
         this.§=!-§ = param6;
         this.§?L§ = param7;
         this.§@!s§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §@'§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§>!>§);
         this.§6!=§ = new Timer(this.§ !M§,this.§^"-§ - 1);
         this.§6!=§.addEventListener(TimerEvent.TIMER,this.§`%§);
         this.§,?§ = §@'§.getItemByName("Button_CloseTutorial") as §;§;
         this.§,?§.setVisibility(true);
         §6!c§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§@'§.mClip.scaleX = §`!Z§;
         this.§@'§.mClip.scaleY = §`!Z§;
         §'!c§.§;! §("Channel_Theme");
         §'!c§.§;! §("7");
         §'!c§.§3!f§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §'!c§.§;! §("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§6!=§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               this.closePressed();
         }
      }
      
      override protected function closePressed() : void
      {
         §-!w§ = this.§?L§;
         §@!X§ = this.§?L§;
         close();
      }
      
      override public function dispose() : void
      {
         this.§>!>§.stop();
         §6!c§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§,!=§));
         super.dispose();
      }
      
      private function §`%§(param1:TimerEvent) : void
      {
         if(!this.§>!>§)
         {
            return;
         }
         ++this.§4!M§;
         if(this.§4!M§ > this.§^"-§)
         {
            this.§4!M§ = 1;
         }
         if(this.§6!=§.currentCount >= this.§6!=§.repeatCount)
         {
            this.§@!s§ = true;
            this.§6!=§.reset();
            this.§6!=§.start();
            §6!c§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
            if(this.§,?§.mClip && !this.§,?§.visible)
            {
               this.§,?§.setVisibility(true);
            }
         }
         this.§>!>§.gotoAndStop(this.§4!M§);
      }
      
      private function §1!O§(param1:MouseEvent) : void
      {
         §6!c§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!O§);
         this.§,?§.setVisibility(true);
         if(§#1§)
         {
            §#1§.stop();
         }
      }
   }
}
