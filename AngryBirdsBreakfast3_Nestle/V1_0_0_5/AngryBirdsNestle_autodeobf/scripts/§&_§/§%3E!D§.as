package §&_§
{
   import §&<§.§^!#§;
   import §+!5§.§2O§;
   import §0!$§.§2!K§;
   import §1l§.PopupClosedEvent;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §@!6§.§3!5§;
   import §[!F§.§^!g§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>!D§ extends §-"!§
   {
      
      private static const §"!x§:Number = 1;
      
      private static var §3"#§:Class = §^!J§;
       
      
      protected var §;?§:MovieClip;
      
      protected var §]g§:String;
      
      private const §&!$§:int = 300;
      
      private var §!!]§:int;
      
      private var §]!3§:int = 1;
      
      private var §6^§:Timer;
      
      private var §3!]§:Boolean;
      
      private var §#"4§:§^!g§;
      
      private var §60§:Boolean;
      
      private var §["!§:Boolean;
      
      public function §>!D§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §^c§ = true;
         §'[§ = false;
         §null§ = true;
         if(!param6)
         {
            §0!M§ = new §2O§(0,0,0,0.7);
         }
         super(§^!=§.§1v§,§+!]§.DEFAULT,§2!K§.§5i§(§3"#§));
         this.§]g§ = param4;
         §8!0§ = true;
         this.§;?§ = param3;
         this.§;?§.gotoAndStop(1);
         this.§;?§.name = "MovieClip_TutorialClip";
         this.§!!]§ = this.§;?§.totalFrames;
         this.§60§ = param6;
         this.§["!§ = param7;
         this.§3!]§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §[!<§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§;?§);
         this.§6^§ = new Timer(this.§&!$§,this.§!!]§ - 1);
         this.§6^§.addEventListener(TimerEvent.TIMER,this.§-6§);
         this.§#"4§ = §[!<§.getItemByName("Button_CloseTutorial") as §^!g§;
         this.§#"4§.setVisibility(true);
         §&X§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§[!<§.mClip.scaleX = §"!x§;
         this.§[!<§.mClip.scaleY = §"!x§;
         §3!5§.§55§("Channel_Theme");
         §3!5§.§55§("7");
         §3!5§.§<!9§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §3!5§.§55§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§6^§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §^c§ = this.§["!§;
               §'[§ = this.§["!§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§;?§.stop();
         §&X§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§["%§));
         super.dispose();
      }
      
      private function §-6§(param1:TimerEvent) : void
      {
         if(!this.§;?§)
         {
            return;
         }
         ++this.§]!3§;
         if(this.§]!3§ > this.§!!]§)
         {
            this.§]!3§ = 1;
         }
         if(this.§6^§.currentCount >= this.§6^§.repeatCount)
         {
            this.§3!]§ = true;
            this.§6^§.reset();
            this.§6^§.start();
            §&X§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§);
            if(this.§#"4§.mClip && !this.§#"4§.visible)
            {
               this.§#"4§.setVisibility(true);
            }
         }
         this.§;?§.gotoAndStop(this.§]!3§);
      }
      
      private function §=!4§(param1:MouseEvent) : void
      {
         §&X§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§=!4§);
         this.§#"4§.setVisibility(true);
         if(§`!?§)
         {
            §`!?§.stop();
         }
      }
   }
}
