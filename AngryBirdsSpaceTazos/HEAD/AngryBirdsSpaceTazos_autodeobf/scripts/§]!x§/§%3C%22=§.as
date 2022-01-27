package §]!x§
{
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §3!S§.§<5§;
   import §7!6§.§@Y§;
   import §8Y§.PopupClosedEvent;
   import §="<§.§87§;
   import §`!w§.§?!U§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<"=§ extends §5!O§
   {
      
      private static const §35§:Number = 0.75;
      
      private static var §2!u§:Class = §>!<§;
       
      
      protected var §&!j§:MovieClip;
      
      protected var §^"§:String;
      
      private const §&g§:int = 300;
      
      private var §#e§:int;
      
      private var §;q§:int = 1;
      
      private var §0"<§:Timer;
      
      private var §'9§:Boolean;
      
      private var §=!r§:§87§;
      
      private var §>8§:Boolean;
      
      public function §<"=§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean)
      {
         §<"5§ = true;
         §8!X§ = false;
         super(§>§.§"!B§,§'!h§.§3"4§,§?!U§.§3!c§(§2!u§));
         this.§^"§ = param4;
         §@!d§ = true;
         this.§&!j§ = param3;
         this.§&!j§.gotoAndStop(1);
         this.§&!j§.name = "MovieClip_TutorialClip";
         this.§#e§ = this.§&!j§.totalFrames;
         this.§>8§ = param6;
         this.§'9§ = false;
      }
      
      override protected function init() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         super.init();
         var _loc1_:MovieClip = §3!a§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§&!j§);
         switch(this.§^"§)
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
            _loc3_ = §1!h§.§4!D§(_loc2_);
            if(_loc3_)
            {
               _loc4_ = new _loc3_();
               _loc1_ = §3!a§.getItemByName("MovieClip_Avatar").mClip;
               _loc1_.removeChildAt(0);
               _loc1_.addChild(_loc4_);
            }
         }
         this.§0"<§ = new Timer(this.§&g§,this.§#e§ - 1);
         this.§0"<§.addEventListener(TimerEvent.TIMER,this.§;",§);
         this.§=!r§ = §3!a§.getItemByName("Button_CloseTutorial") as §87§;
         this.§=!r§.setVisibility(false);
         §3!L§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§3!a§.mClip.scaleX = §35§;
         this.§3!a§.mClip.scaleY = §35§;
         §<5§.§["'§("Channel_Theme");
         §<5§.§["'§("7");
         §<5§.playSound("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §<5§.§["'§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§0"<§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§&!j§.stop();
         §3!L§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§6!F§));
         super.dispose();
      }
      
      private function §;",§(param1:TimerEvent) : void
      {
         if(!this.§&!j§)
         {
            return;
         }
         ++this.§;q§;
         if(this.§;q§ > this.§#e§)
         {
            this.§;q§ = 1;
         }
         if(this.§0"<§.currentCount == this.§0"<§.repeatCount)
         {
            this.§'9§ = true;
            this.§0"<§.reset();
            this.§0"<§.start();
            §3!L§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
            if(this.§=!r§.mClip && !this.§=!r§.visible)
            {
               this.§=!r§.setVisibility(true);
            }
         }
         this.§&!j§.gotoAndStop(this.§;q§);
      }
      
      private function §`L§(param1:MouseEvent) : void
      {
         §3!L§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         this.§=!r§.setVisibility(true);
         if(§]! §)
         {
            §]! §.stop();
         }
      }
   }
}
