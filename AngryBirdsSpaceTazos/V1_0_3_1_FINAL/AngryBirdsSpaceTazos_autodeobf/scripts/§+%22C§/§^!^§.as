package §+"C§
{
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §,!7§.§%!J§;
   import §1!C§.PopupClosedEvent;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   import §>"!§.§@!9§;
   import com.rovio.assets.§>!;§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^!^§ extends §^"4§
   {
      
      private static const §=!!§:Number = 0.75;
      
      private static var §!!;§:Class = §+!x§;
       
      
      protected var § !V§:MovieClip;
      
      protected var §?!y§:String;
      
      private const §,8§:int = 300;
      
      private var §=!;§:int;
      
      private var §>!i§:int = 1;
      
      private var §+"A§:Timer;
      
      private var §=M§:Boolean;
      
      private var §+j§:§%!J§;
      
      private var §>!K§:Boolean;
      
      public function §^!^§(param1:int, param2:int, param3:MovieClip, param4:String, param5:Boolean, param6:Boolean)
      {
         §^">§ = true;
         §6"B§ = false;
         super(§?d§.§=!7§,§`B§.§-! §,§7[§.§[!n§(§!!;§));
         this.§?!y§ = param4;
         §>m§ = true;
         this.§ !V§ = param3;
         this.§ !V§.gotoAndStop(1);
         this.§ !V§.name = "MovieClip_TutorialClip";
         this.§=!;§ = this.§ !V§.totalFrames;
         this.§>!K§ = param6;
         this.§=M§ = false;
      }
      
      override protected function init() : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:MovieClip = null;
         super.init();
         var _loc1_:MovieClip = § 1§.getItemByName("MovieClip_Tutorial").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         _loc1_.addChild(this.§ !V§);
         switch(this.§?!y§)
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
            _loc3_ = §>!;§.§+!u§(_loc2_);
            if(_loc3_)
            {
               _loc4_ = new _loc3_();
               _loc1_ = § 1§.getItemByName("MovieClip_Avatar").mClip;
               _loc1_.removeChildAt(0);
               _loc1_.addChild(_loc4_);
            }
         }
         this.§+"A§ = new Timer(this.§,8§,this.§=!;§ - 1);
         this.§+"A§.addEventListener(TimerEvent.TIMER,this.§30§);
         this.§+j§ = § 1§.getItemByName("Button_CloseTutorial") as §%!J§;
         this.§+j§.setVisibility(false);
         §1s§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         this.§ 1§.mClip.scaleX = §=!!§;
         this.§ 1§.mClip.scaleY = §=!!§;
         §@!9§.§"!y§("Channel_Theme");
         §@!9§.§"!y§("7");
         §@!9§.playSound("tutorial_music","7");
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
         §@!9§.§"!y§("7");
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
      }
      
      override protected function onTransitionComplete(param1:String) : void
      {
         if(param1 == "in")
         {
            this.§+"A§.start();
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "CLOSE_TUTORIAL":
               close();
         }
      }
      
      override public function dispose() : void
      {
         this.§ !V§.stop();
         §1s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§7H§));
         super.dispose();
      }
      
      private function §30§(param1:TimerEvent) : void
      {
         if(!this.§ !V§)
         {
            return;
         }
         ++this.§>!i§;
         if(this.§>!i§ > this.§=!;§)
         {
            this.§>!i§ = 1;
         }
         if(this.§+"A§.currentCount == this.§+"A§.repeatCount)
         {
            this.§=M§ = true;
            this.§+"A§.reset();
            this.§+"A§.start();
            §1s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
            if(this.§+j§.mClip && !this.§+j§.visible)
            {
               this.§+j§.setVisibility(true);
            }
         }
         this.§ !V§.gotoAndStop(this.§>!i§);
      }
      
      private function §3!u§(param1:MouseEvent) : void
      {
         §1s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         this.§+j§.setVisibility(true);
         if(§&!E§)
         {
            §&!E§.stop();
         }
      }
   }
}
