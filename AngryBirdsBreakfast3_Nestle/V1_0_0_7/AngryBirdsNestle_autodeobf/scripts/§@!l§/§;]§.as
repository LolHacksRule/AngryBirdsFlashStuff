package §@!l§
{
   import § !Q§.§=!3§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §4;§.PopupClosedEvent;
   import §7"1§.§@!9§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §>P§.§73§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §;]§ extends §-"+§
   {
      
      private static const §@!o§:Number = 1;
      
      private static var §;!9§:Class = §[!8§;
       
      
      protected var §=!L§:MovieClip;
      
      protected var §+",§:String;
      
      private const §5!=§:int = 300;
      
      private var §>6§:int;
      
      private var §8"-§:int = 1;
      
      private var §9!x§:Timer;
      
      private var §8"%§:Boolean;
      
      private var §^#§:§73§;
      
      private var §`t§:Boolean;
      
      private var §#a§:Boolean;
      
      public function §;]§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §@_§ = true;
         §!"6§ = false;
         §>,§ = true;
         if(!param6)
         {
            §5!,§ = new §@!9§(0,0,0,0.7);
         }
         super(§>!&§.§@!w§,§4!f§.DEFAULT,§=!3§.§0I§(§;!9§));
         this.§+",§ = param4;
         § y§ = true;
         this.§=!L§ = param3;
         this.§=!L§.gotoAndStop(1);
         this.§=!L§.name = "MovieClip_TutorialClip";
         this.§>6§ = this.§=!L§.totalFrames;
         this.§`t§ = param6;
         this.§#a§ = param7;
         this.§8"%§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §-"1§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§=!L§);
         this.§9!x§ = new Timer(this.§5!=§,this.§>6§ - 1);
         this.§9!x§.addEventListener(TimerEvent.TIMER,this.§=o§);
         this.§^#§ = §-"1§.getItemByName("Button_CloseTutorial") as §73§;
         this.§^#§.setVisibility(true);
         §6!x§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§5T§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§-"1§.mClip.scaleX = §@!o§;
         this.§-"1§.mClip.scaleY = §@!o§;
         §%!c§.§#!G§("Channel_Theme");
         §%!c§.§#!G§("7");
         §%!c§.§8" §("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §%!c§.§#!G§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§9!x§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §@_§ = this.§#a§;
               §!"6§ = this.§#a§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§=!L§.stop();
         §6!x§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5T§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§-!!§));
         super.dispose();
      }
      
      private function §=o§(param1:TimerEvent) : void
      {
         if(!this.§=!L§)
         {
            return;
         }
         ++this.§8"-§;
         if(this.§8"-§ > this.§>6§)
         {
            this.§8"-§ = 1;
         }
         if(this.§9!x§.currentCount >= this.§9!x§.repeatCount)
         {
            this.§8"%§ = true;
            this.§9!x§.reset();
            this.§9!x§.start();
            §6!x§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5T§);
            if(this.§^#§.mClip && !this.§^#§.visible)
            {
               this.§^#§.setVisibility(true);
            }
         }
         this.§=!L§.gotoAndStop(this.§8"-§);
      }
      
      private function §5T§(param1:MouseEvent) : void
      {
         §6!x§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5T§);
         this.§^#§.setVisibility(true);
         if(§]z§)
         {
            §]z§.stop();
         }
      }
   }
}
