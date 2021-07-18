package §3C§
{
   import §0N§.§0!g§;
   import §3"#§.§<!O§;
   import §4"§.PopupClosedEvent;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §77§.§@_§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0Y§ extends §9!;§
   {
      
      private static const §]!r§:Number = 0.75;
      
      private static var §`G§:Class = § !v§;
       
      
      protected var §?!B§:MovieClip;
      
      protected var §7!n§:String;
      
      private const §[y§:int = 300;
      
      private var §^"A§:int;
      
      private var § !P§:int = 1;
      
      private var §8!h§:Timer;
      
      private var §]j§:Boolean;
      
      private var §>T§:§@_§;
      
      private var §4!O§:Boolean;
      
      public function §0Y§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean)
      {
         §>"2§ = true;
         §1"$§ = false;
         super(§1#§.§,!"§,§8"6§.§ K§,§0!g§.§[!y§(§`G§));
         this.§7!n§ = param4;
         §#!j§ = true;
         this.§?!B§ = param3;
         this.§?!B§.gotoAndStop(1);
         this.§?!B§.name = "MovieClip_TutorialClip";
         this.§^"A§ = this.§?!B§.totalFrames;
         this.§4!O§ = param6;
         this.§]j§ = false;
      }
      
      override protected function init() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         super.init();
         var _loc1_:MovieClip = §[S§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§?!B§);
         switch(this.§7!n§)
         {
            case "RedBigBird":
               _loc2_ = "MovieClip_Avatar_Big_Brother";
               break;
            case "SmallBlueBird":
               _loc2_ = "MovieClip_Avatar_Blue";
               break;
            case "BlackBird":
               _loc2_ = "MovieClip_Avatar_Bomb";
               break;
            case "RedBird":
               _loc2_ = "MovieClip_Avatar_Red";
               break;
            case "LaserBird":
               _loc2_ = "MovieClip_Avatar_Lazer";
               break;
            case "TazosBird":
               _loc2_ = "MovieClip_Avatar_Tazos";
         }
         if(_loc2_)
         {
            _loc3_ = § !h§.§["3§(_loc2_);
            if(_loc3_)
            {
               _loc4_ = new _loc3_();
               _loc1_ = §[S§.getItemByName("MovieClip_Avatar").mClip;
               _loc1_.removeChildAt(0);
               _loc1_.addChild(_loc4_);
            }
         }
         this.§8!h§ = new Timer(this.§[y§,this.§^"A§ - 1);
         this.§8!h§.addEventListener(TimerEvent.TIMER,this.§9!k§);
         this.§>T§ = §[S§.getItemByName("Button_CloseTutorial") as §@_§;
         this.§>T§.setVisibility(false);
         §3!+§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§[S§.mClip.scaleX = §]!r§;
         this.§[S§.mClip.scaleY = §]!r§;
         §<!O§.§,!z§("Channel_Theme");
         §<!O§.§,!z§("7");
         §<!O§.playSound("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §<!O§.§,!z§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§8!h§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§?!B§.stop();
         §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§`T§));
         super.dispose();
      }
      
      private function §9!k§(param1:TimerEvent) : void
      {
         if(!this.§?!B§)
         {
            return;
         }
         ++this.§ !P§;
         if(this.§ !P§ > this.§^"A§)
         {
            this.§ !P§ = 1;
         }
         if(this.§8!h§.currentCount == this.§8!h§.repeatCount)
         {
            this.§]j§ = true;
            this.§8!h§.reset();
            this.§8!h§.start();
            §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
            if(this.§>T§.mClip && !this.§>T§.visible)
            {
               this.§>T§.setVisibility(true);
            }
         }
         this.§?!B§.gotoAndStop(this.§ !P§);
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         §3!+§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         this.§>T§.setVisibility(true);
         if(§-!w§)
         {
            §-!w§.stop();
         }
      }
   }
}
