package §2H§
{
   import § "@§.StateLevelEditorTestPlay;
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§9!!§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §8" §.Quest;
   import §>X§.§;!&§;
   import §>X§.§@!I§;
   import §]!+§.§ 1§;
   import §^[§.§'!K§;
   import §^[§.§2!h§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §,5§ extends Popup
   {
      
      private static const §^W§:int = 4000;
      
      protected static const §2!_§:String = "ScoreLoopCountChannel";
       
      
      private var static:§3^§;
      
      private var §?a§:Number = 1;
      
      private var §2j§:§%+§;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      private var §^K§:Timer;
      
      private var §@!6§:int;
      
      private var §7!3§:int = 0;
      
      private var §@t§:§%+§;
      
      private var §4!_§:§3^§;
      
      private var §<"9§:§ 1§;
      
      private var §0!w§:§'s§;
      
      private var §7a§:§="#§;
      
      private var §"q§:§="#§;
      
      private var §?[§:§="#§;
      
      private var §0!#§:§`!T§;
      
      private var §&"§:§`!T§;
      
      private var §-!q§:§`!<§;
      
      private var §#4§:§`!<§;
      
      public var mNewScoreCounter:int;
      
      private var §3!z§:§^J§;
      
      private var §6#§:Timer;
      
      private var §^!9§:§3^§;
      
      private var §9!'§:§`!T§;
      
      private var §9!H§:§`!T§;
      
      private var §2!=§:§`!T§;
      
      private var §@"!§:§`!<§;
      
      private const §3!d§:String = "Name";
      
      private var §=!&§:§2!h§;
      
      private var §@f§:Timer;
      
      public function §,5§(param1:XML, param2:§'s§, param3:Quest)
      {
         this.§3!z§ = new §^J§();
         super(param1,param2);
         this.§ !Q§ = new Vector.<§@!I§>();
         this.§<"9§ = new § 1§(param2 as §'!K§,§`7§.§>"?§.Views.View_QuestMenu[0],param2.container);
         this.§<"9§.init(param3);
         param2.container.§;!R§(this.§<"9§);
         goToFrame(1,false);
         this.§2!=§ = getItemByName("Container_Block") as §`!T§;
         this.§9!'§ = getItemByName("Container_LevelEnd") as §`!T§;
         this.§9!H§ = getItemByName("Container_Publish") as §`!T§;
         this.§9!H§.mClip.gotoAndStop(1);
         this.§0!#§ = getItemByName("MovieClip_Score") as §`!T§;
         this.§-!q§ = this.§0!#§.getItemByName("Textfield_Score") as §`!<§;
         this.§#4§ = getItemByName("Textfield_HighScore_Small") as §`!<§;
         this.§6#§ = new Timer(1000,1);
         this.§6#§.addEventListener(TimerEvent.TIMER,this.§82§);
         this.§6#§.start();
         this.§=!&§ = new §2!h§(param2);
         this.§&"§ = getItemByName("HighscoreContainer") as §`!T§;
         this.§7a§ = getItemByName("Button_Stars") as §="#§;
         this.§7a§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§7!?§);
         this.§"q§ = getItemByName("Button_Check") as §="#§;
         this.§"q§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§[K§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§%P§();
         var _loc5_:Bitmap;
         (_loc5_ = new Bitmap(_loc4_)).height = 189;
         _loc5_.scaleX = _loc5_.scaleY;
         if(_loc5_.width < 189)
         {
            _loc5_.width = 189;
            _loc5_.scaleY = _loc5_.scaleX;
         }
         getItemByName("MovieClip_Thumbnail").mClip.removeChildAt(1);
         getItemByName("MovieClip_Thumbnail").mClip.addChild(_loc5_);
         _loc5_.x = _loc5_.x + 1 - _loc5_.width / 2;
         _loc5_.y -= _loc5_.height / 2;
         this.§@"!§ = getItemByName("TextField_InputLevelName") as §`!<§;
         this.§@"!§.setText(this.§3!d§);
         this.§@"!§.mClip.addEventListener(MouseEvent.CLICK,this.§^T§);
         this.§@"!§.mClip.addEventListener(Event.CHANGE,this.§=!<§);
         goToFrame(1,false);
         this.§?[§ = getItemByName("Button_Finish") as §="#§;
         this.§?[§.§%!v§ = §9!!§.§%!§;
         this.§?[§.goToFrame(2,false);
         this.§=!<§();
         this.§2j§ = getItemByName("MovieClip_Glow") as §%+§;
         this.§@t§ = getItemByName("MovieClip_MoustachePig") as §%+§;
         §&!D§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§="#§;
         (_loc6_ = getItemByName("Button_ChallengeFriends") as §="#§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§[P§);
         var _loc7_:§="#§;
         (_loc7_ = getItemByName("Button_NoThanks") as §="#§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§?h§);
         _loc7_.setVisibility(false);
         _loc6_.setVisibility(false);
         this.§@f§ = new Timer(3000,1);
         this.§@f§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-"#§);
         this.§@f§.start();
         var _loc8_:Array = new Array();
         var _loc9_:§3^§ = §7!E§.§2=§.§7#§(§7!E§.§2=§.§<!C§(this.§@t§.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7!E§.§8""§),§7!E§.§2=§.§<!C§(this.§2j§.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§7!E§.§8""§),§7!E§.§2=§.§<!C§(_loc6_.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7!E§.§8""§),§7!E§.§2=§.§<!C§(_loc7_.mClip,{
            "scaleX":this.§?a§,
            "scaleY":this.§?a§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7!E§.§8""§));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§!_§();
            this.static = §7!E§.§2=§.§2!u§.apply(§7!E§.§2=§,_loc8_);
            this.static.onComplete = this.§'!r§;
            this.static.play();
         }
         this.§#4§.setText(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§).toString());
         this.§=!&§.update();
         §5!U§.§2R§(§2!_§,3,1);
         §5!U§.playSound("Sound_Star_Pig");
         §5!U§.playSound("BadPiggies_LevelCompleted");
      }
      
      protected function §-"#§(param1:TimerEvent) : void
      {
         this.§?h§(null);
      }
      
      protected function §[P§(param1:MouseEvent) : void
      {
         §5!U§.playSound("Sound_Button_Click");
         §4m§.doJsCall("shareLevelBuild");
      }
      
      protected function §?h§(param1:MouseEvent) : void
      {
         §5!U§.playSound("Sound_Button_Click");
         this.§9!'§.setVisibility(false);
         this.§9!H§.setVisibility(true);
      }
      
      protected function §82§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§3!z§.§&!Y§(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§));
         §5!U§.playSound("Hiscore_Count",§2!_§,100);
         this.§^!9§ = §7!E§.§2=§.§<!C§(this,{"mNewScoreCounter":this.§3!z§.getValue()},{"mNewScoreCounter":0},1);
         this.§^!9§.onComplete = this.§9!y§;
         this.§^!9§.play();
      }
      
      private function §9!y§() : void
      {
         §5!U§.§+!7§(§2!_§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function §'!r§() : void
      {
         this.§4!_§ = §7!E§.§2=§.§<!C§(this.§2j§.mClip,{"rotation":360},{"rotation":0},§^W§ / 1000);
         this.§4!_§.onComplete = this.§'!r§;
         this.§4!_§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§@!I§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         this.§7!3§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§ !Q§)
         {
            _loc3_.update(_loc2_);
         }
         this.§<"9§.update(_loc2_);
         this.§-!q§.setText(this.mNewScoreCounter.toString());
         this.§=!&§.update();
      }
      
      private function §#!x§() : void
      {
         var splash:§@!I§ = null;
         if(this.§^K§)
         {
            this.§^K§.stop();
            try
            {
               this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ !Q§)
         {
            if(§&!D§.contains(splash))
            {
               §&!D§.removeChild(splash);
            }
            splash.clean();
         }
         this.§ !Q§ = new Vector.<§@!I§>();
      }
      
      private function §0,§(param1:Number, param2:Number) : void
      {
         this.§7d§ = new §@!I§(§>"§.§^!N§,§>"§.§5!P§,param1,param2,§@!I§.§4"5§,80,0,§;!&§.§3!O§);
         §&!D§.addChild(this.§7d§);
         this.§ !Q§.push(this.§7d§);
      }
      
      private function §!_§() : void
      {
         this.§^K§ = new Timer(200);
         this.§@!6§ = 0;
         this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
         this.§^K§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §&!D§.removeEventListener(Event.ENTER_FRAME,this.update);
         §&!D§.container.removeComponent(this.§<"9§);
         this.§<"9§.hide();
         this.§<"9§ = null;
         this.§#!x§();
         this.§=!&§.dispose();
         this.§=!&§ = null;
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         if(this.§@!6§ == 0)
         {
            this.§0,§(this.§@t§.mClip.parent.parent.x + this.§@t§.mClip.parent.x + this.§@t§.mClip.x,this.§@t§.mClip.parent.parent.y + this.§@t§.mClip.parent.y + this.§@t§.mClip.y);
         }
         else
         {
            this.§^K§.stop();
         }
         ++this.§@!6§;
      }
      
      private function §[K§(param1:MouseEvent) : void
      {
         §5!U§.playSound("Sound_Button_Click");
         this.§"q§.visible = false;
         this.§7a§.visible = true;
         this.§&"§.setVisibility(true);
         this.§=!&§.§=!^§();
         this.§=!&§.§&!N§();
      }
      
      private function §7!?§(param1:MouseEvent) : void
      {
         §5!U§.playSound("Sound_Button_Click");
         this.§7a§.visible = false;
         this.§"q§.visible = true;
         this.§&"§.setVisibility(false);
         this.§=!&§.§"!U§();
      }
      
      private function §^T§(param1:MouseEvent) : void
      {
         if(this.§@"!§.§2! §() == this.§3!d§)
         {
            this.§@"!§.setText("");
         }
      }
      
      private function §=!<§(param1:Event = null) : void
      {
         if(this.§5!O§())
         {
            this.§?[§.§%!v§ = §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§?[§.goToFrame(1,false);
         }
         else
         {
            this.§?[§.§%!v§ = §9!!§.§%!§;
            this.§?[§.goToFrame(2,false);
         }
      }
      
      private function §5!O§() : Boolean
      {
         if(this.§@"!§ != null && this.§@"!§.§2! §() != null && this.§@"!§.§2! §().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function §"T§() : String
      {
         return this.§@"!§.§2! §();
      }
      
      public function §?D§() : void
      {
         this.mClip.gotoAndStop(2);
      }
   }
}
