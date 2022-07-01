package §`q§
{
   import §%!9§.PopupClosedEvent;
   import §&!'§.§]S§;
   import §3!!§.§?v§;
   import §9![§.§1!i§;
   import §=!7§.§%!%§;
   import §@f§.§&!"§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!l§ extends §'!O§
   {
      
      private static const § 0§:Number = 1;
      
      private static var §=!?§:Class = §';§;
       
      
      protected var §6v§:MovieClip;
      
      protected var §0W§:String;
      
      private const §]!0§:int = 300;
      
      private var §default§:int;
      
      private var §;!`§:int = 1;
      
      private var §]F§:Timer;
      
      private var §&"1§:Boolean;
      
      private var §?V§:§?v§;
      
      private var §%;§:Boolean;
      
      private var §9!E§:Boolean;
      
      public function §-!l§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §=!c§ = true;
         §1!b§ = false;
         §0!2§ = true;
         if(!param6)
         {
            §1x§ = new §]S§(0,0,0,0.7);
         }
         super(§%!T§.§#e§,§#!q§.DEFAULT,§%!%§.§<!0§(§=!?§));
         this.§0W§ = param4;
         §8z§ = true;
         this.§6v§ = param3;
         this.§6v§.gotoAndStop(1);
         this.§6v§.name = "MovieClip_TutorialClip";
         this.§default§ = this.§6v§.totalFrames;
         this.§%;§ = param6;
         this.§9!E§ = param7;
         this.§&"1§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §#t§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§6v§);
         this.§]F§ = new Timer(this.§]!0§,this.§default§ - 1);
         this.§]F§.addEventListener(TimerEvent.TIMER,this.§?!l§);
         this.§?V§ = §#t§.getItemByName("Button_CloseTutorial") as §?v§;
         this.§?V§.setVisibility(true);
         §6R§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§#t§.mClip.scaleX = § 0§;
         this.§#t§.mClip.scaleY = § 0§;
         §1!i§.§=!3§("Channel_Theme");
         §1!i§.§=!3§("7");
         §1!i§.§+!Y§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §1!i§.§=!3§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§]F§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §=!c§ = this.§9!E§;
               §1!b§ = this.§9!E§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§6v§.stop();
         §6R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§#!&§));
         super.dispose();
      }
      
      private function §?!l§(param1:TimerEvent) : void
      {
         if(!this.§6v§)
         {
            return;
         }
         ++this.§;!`§;
         if(this.§;!`§ > this.§default§)
         {
            this.§;!`§ = 1;
         }
         if(this.§]F§.currentCount >= this.§]F§.repeatCount)
         {
            this.§&"1§ = true;
            this.§]F§.reset();
            this.§]F§.start();
            §6R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§);
            if(this.§?V§.mClip && !this.§?V§.visible)
            {
               this.§?V§.setVisibility(true);
            }
         }
         this.§6v§.gotoAndStop(this.§;!`§);
      }
      
      private function §5!'§(param1:MouseEvent) : void
      {
         §6R§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§5!'§);
         this.§?V§.setVisibility(true);
         if(§8"§)
         {
            §8"§.stop();
         }
      }
   }
}
