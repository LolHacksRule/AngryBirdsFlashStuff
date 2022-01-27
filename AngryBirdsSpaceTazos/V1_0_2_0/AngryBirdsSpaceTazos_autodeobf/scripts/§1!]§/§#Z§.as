package §1!]§
{
   import §!i§.§3!A§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §4!t§.§95§;
   import §9!G§.§"!S§;
   import §]!M§.PopupClosedEvent;
   import com.rovio.assets.§2!3§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#Z§ extends §%"%§
   {
      
      private static const §0!s§:Number = 0.75;
      
      private static var §!?§:Class = §&f§;
       
      
      protected var §>+§:MovieClip;
      
      protected var §'!r§:String;
      
      private const §@!s§:int = 300;
      
      private var §6V§:int;
      
      private var §["§:int = 1;
      
      private var §set §:Timer;
      
      private var §+l§:Boolean;
      
      private var §60§:§3!A§;
      
      private var §!" §:Boolean;
      
      public function §#Z§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean)
      {
         §&"<§ = true;
         § !z§ = false;
         super(§&r§.§2B§,§3o§.§0!n§,§=Q§.§%!g§(§!?§));
         this.§'!r§ = param4;
         §@"1§ = true;
         this.§>+§ = param3;
         this.§>+§.gotoAndStop(1);
         this.§>+§.name = "MovieClip_TutorialClip";
         this.§6V§ = this.§>+§.totalFrames;
         this.§!" § = param6;
         this.§+l§ = false;
      }
      
      override protected function init() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         super.init();
         var _loc1_:MovieClip = §&#§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§>+§);
         switch(this.§'!r§)
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
            _loc3_ = §2!3§.dynamic(_loc2_);
            if(_loc3_)
            {
               _loc4_ = new _loc3_();
               _loc1_ = §&#§.getItemByName("MovieClip_Avatar").mClip;
               _loc1_.removeChildAt(0);
               _loc1_.addChild(_loc4_);
            }
         }
         this.§set § = new Timer(this.§@!s§,this.§6V§ - 1);
         this.§set §.addEventListener(TimerEvent.TIMER,this.§^O§);
         this.§60§ = §&#§.getItemByName("Button_CloseTutorial") as §3!A§;
         this.§60§.setVisibility(false);
         §+!#§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§&#§.mClip.scaleX = §0!s§;
         this.§&#§.mClip.scaleY = §0!s§;
         §"!S§.§]R§("Channel_Theme");
         §"!S§.§]R§("7");
         §"!S§.playSound("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §"!S§.§]R§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§set §.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§>+§.stop();
         §+!#§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§2!J§));
         super.dispose();
      }
      
      private function §^O§(param1:TimerEvent) : void
      {
         if(!this.§>+§)
         {
            return;
         }
         ++this.§["§;
         if(this.§["§ > this.§6V§)
         {
            this.§["§ = 1;
         }
         if(this.§set §.currentCount == this.§set §.repeatCount)
         {
            this.§+l§ = true;
            this.§set §.reset();
            this.§set §.start();
            §+!#§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
            if(this.§60§.mClip && !this.§60§.visible)
            {
               this.§60§.setVisibility(true);
            }
         }
         this.§>+§.gotoAndStop(this.§["§);
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         §+!#§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
         this.§60§.setVisibility(true);
         if(§,"4§)
         {
            §,"4§.stop();
         }
      }
   }
}
