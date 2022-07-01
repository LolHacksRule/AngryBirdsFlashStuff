package §'!3§
{
   import §'"!§.§+§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §1'§.§?>§;
   import §24§.§4!H§;
   import §2u§.§]"%§;
   import §>G§.PopupClosedEvent;
   import §[!Z§.§>D§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §62§ extends §;!o§
   {
      
      private static const §?!o§:Number = 1;
      
      private static var §^q§:Class = §`U§;
       
      
      protected var §+3§:MovieClip;
      
      protected var §?!%§:String;
      
      private const §?o§:int = 300;
      
      private var §,!6§:int;
      
      private var §`!P§:int = 1;
      
      private var §!"$§:Timer;
      
      private var §-!a§:Boolean;
      
      private var §`h§:§]"%§;
      
      private var §>U§:Boolean;
      
      private var §%!"§:Boolean;
      
      public function §62§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean, param7:Boolean)
      {
         §9p§ = true;
         §]G§ = false;
         §^J§ = true;
         if(!param6)
         {
            §]!b§ = new §?>§(0,0,0,0.7);
         }
         super(§`!t§.§class§,§4z§.DEFAULT,§4!H§.§7o§(§^q§));
         this.§?!%§ = param4;
         §@^§ = true;
         this.§+3§ = param3;
         this.§+3§.gotoAndStop(1);
         this.§+3§.name = "MovieClip_TutorialClip";
         this.§,!6§ = this.§+3§.totalFrames;
         this.§>U§ = param6;
         this.§%!"§ = param7;
         this.§-!a§ = false;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:MovieClip = §29§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§+3§);
         this.§!"$§ = new Timer(this.§?o§,this.§,!6§ - 1);
         this.§!"$§.addEventListener(TimerEvent.TIMER,this.§1T§);
         this.§`h§ = §29§.getItemByName("Button_CloseTutorial") as §]"%§;
         this.§`h§.setVisibility(true);
         §-p§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§29§.mClip.scaleX = §?!o§;
         this.§29§.mClip.scaleY = §?!o§;
         §>D§.§6A§("Channel_Theme");
         §>D§.§6A§("7");
         §>D§.§9!q§("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §>D§.§6A§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§!"$§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               §9p§ = this.§%!"§;
               §]G§ = this.§%!"§;
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§+3§.stop();
         §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§8!;§));
         super.dispose();
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         if(!this.§+3§)
         {
            return;
         }
         ++this.§`!P§;
         if(this.§`!P§ > this.§,!6§)
         {
            this.§`!P§ = 1;
         }
         if(this.§!"$§.currentCount >= this.§!"$§.repeatCount)
         {
            this.§-!a§ = true;
            this.§!"$§.reset();
            this.§!"$§.start();
            §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
            if(this.§`h§.mClip && !this.§`h§.visible)
            {
               this.§`h§.setVisibility(true);
            }
         }
         this.§+3§.gotoAndStop(this.§`!P§);
      }
      
      private function §,o§(param1:MouseEvent) : void
      {
         §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
         this.§`h§.setVisibility(true);
         if(§@"+§)
         {
            §@"+§.stop();
         }
      }
   }
}
