package §-"'§
{
   import §!N§.§2U§;
   import §!N§.§@!3§;
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §05§.§?s§;
   import §;" §.Quest;
   import §;b§.StateLevelEditorTestPlay;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import §@y§.§>!D§;
   import §]" §.§?"-§;
   import §^!k§.§#!S§;
   import §^!k§.§return§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §1d§ extends Popup
   {
      
      private static const §&" §:int = 4000;
      
      protected static const §]!9§:String = "ScoreLoopCountChannel";
       
      
      private var §4@§:§=!r§;
      
      private var §=9§:Number = 1;
      
      private var §7^§:§@u§;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      private var §1!"§:Timer;
      
      private var §7!S§:int;
      
      private var §1"6§:int = 0;
      
      private var §]y§:§@u§;
      
      private var §'";§:§=!r§;
      
      private var §3?§:§?"-§;
      
      private var §#]§:§>!V§;
      
      private var §"D§:§9"8§;
      
      private var §[k§:§9"8§;
      
      private var §"7§:§9"8§;
      
      private var §[3§:§6W§;
      
      private var §]!C§:§6W§;
      
      private var §#3§:§!!]§;
      
      private var §&!H§:§!!]§;
      
      public var mNewScoreCounter:int;
      
      private var §4!?§:§9!=§;
      
      private var §3R§:Timer;
      
      private var §1!8§:§=!r§;
      
      private var §1;§:§6W§;
      
      private var §61§:§6W§;
      
      private var §]"=§:§6W§;
      
      private var §#!B§:§!!]§;
      
      private const §;!D§:String = "Name";
      
      private var §;!a§:§#!S§;
      
      private var §catch§:Timer;
      
      public function §1d§(param1:XML, param2:§>!V§, param3:Quest)
      {
         this.§4!?§ = new §9!=§();
         super(param1,param2);
         this.§!!N§ = new Vector.<§2U§>();
         this.§3?§ = new §?"-§(param2 as §return§,§]!M§.§"!V§.Views.View_QuestMenu[0],param2.container);
         this.§3?§.init(param3);
         param2.container.§#i§(this.§3?§);
         goToFrame(1,false);
         this.§]"=§ = getItemByName("Container_Block") as §6W§;
         this.§1;§ = getItemByName("Container_LevelEnd") as §6W§;
         this.§61§ = getItemByName("Container_Publish") as §6W§;
         this.§61§.mClip.gotoAndStop(1);
         this.§[3§ = getItemByName("MovieClip_Score") as §6W§;
         this.§#3§ = this.§[3§.getItemByName("Textfield_Score") as §!!]§;
         this.§&!H§ = getItemByName("Textfield_HighScore_Small") as §!!]§;
         this.§3R§ = new Timer(1000,1);
         this.§3R§.addEventListener(TimerEvent.TIMER,this.§9">§);
         this.§3R§.start();
         this.§;!a§ = new §#!S§(param2);
         this.§]!C§ = getItemByName("HighscoreContainer") as §6W§;
         this.§"D§ = getItemByName("Button_Stars") as §9"8§;
         this.§"D§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§6Y§);
         this.§[k§ = getItemByName("Button_Check") as §9"8§;
         this.§[k§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8'§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§5"+§();
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
         this.§#!B§ = getItemByName("TextField_InputLevelName") as §!!]§;
         this.§#!B§.setText(this.§;!D§);
         this.§#!B§.mClip.addEventListener(MouseEvent.CLICK,this.§`+§);
         this.§#!B§.mClip.addEventListener(Event.CHANGE,this.§!"?§);
         goToFrame(1,false);
         this.§"7§ = getItemByName("Button_Finish") as §9"8§;
         this.§"7§.§-!2§ = §>!D§.§&!j§;
         this.§"7§.goToFrame(2,false);
         this.§!"?§();
         this.§7^§ = getItemByName("MovieClip_Glow") as §@u§;
         this.§]y§ = getItemByName("MovieClip_MoustachePig") as §@u§;
         §-^§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§9"8§;
         (_loc6_ = getItemByName("Button_ChallengeFriends") as §9"8§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§;!A§);
         var _loc7_:§9"8§;
         (_loc7_ = getItemByName("Button_NoThanks") as §9"8§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§`"'§);
         _loc7_.setVisibility(false);
         _loc6_.setVisibility(false);
         this.§catch§ = new Timer(3000,1);
         this.§catch§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§>u§);
         this.§catch§.start();
         var _loc8_:Array = new Array();
         var _loc9_:§=!r§ = §7I§.§[E§.§]g§(§7I§.§[E§.§ ";§(this.§]y§.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7I§.§;!C§),§7I§.§[E§.§ ";§(this.§7^§.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§7I§.§;!C§),§7I§.§[E§.§ ";§(_loc6_.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7I§.§;!C§),§7I§.§[E§.§ ";§(_loc7_.mClip,{
            "scaleX":this.§=9§,
            "scaleY":this.§=9§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§7I§.§;!C§));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§&D§();
            this.§4@§ = §7I§.§[E§.§5!@§.apply(§7I§.§[E§,_loc8_);
            this.§4@§.onComplete = this.§?!-§;
            this.§4@§.play();
         }
         this.§&!H§.setText(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§).toString());
         this.§;!a§.update();
         §0"#§.§4!m§(§]!9§,3,1);
         §0"#§.§9"2§("Sound_Star_Pig");
         §0"#§.§9"2§("BadPiggies_LevelCompleted");
      }
      
      protected function §>u§(param1:TimerEvent) : void
      {
         this.§`"'§(null);
      }
      
      protected function §;!A§(param1:MouseEvent) : void
      {
         §0"#§.§9"2§("Sound_Button_Click");
         §?s§.doJsCall("shareLevelBuild");
      }
      
      protected function §`"'§(param1:MouseEvent) : void
      {
         §0"#§.§9"2§("Sound_Button_Click");
         this.§1;§.setVisibility(false);
         this.§61§.setVisibility(true);
      }
      
      protected function §9">§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§4!?§.§2">§(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§));
         §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
         this.§1!8§ = §7I§.§[E§.§ ";§(this,{"mNewScoreCounter":this.§4!?§.getValue()},{"mNewScoreCounter":0},1);
         this.§1!8§.onComplete = this.§`!1§;
         this.§1!8§.play();
      }
      
      private function §`!1§() : void
      {
         §0"#§.§<"0§(§]!9§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function §?!-§() : void
      {
         this.§'";§ = §7I§.§[E§.§ ";§(this.§7^§.mClip,{"rotation":360},{"rotation":0},§&" § / 1000);
         this.§'";§.onComplete = this.§?!-§;
         this.§'";§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§2U§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         this.§1"6§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§!!N§)
         {
            _loc3_.update(_loc2_);
         }
         this.§3?§.update(_loc2_);
         this.§#3§.setText(this.mNewScoreCounter.toString());
         this.§;!a§.update();
      }
      
      private function §&V§() : void
      {
         var splash:§2U§ = null;
         if(this.§1!"§)
         {
            this.§1!"§.stop();
            try
            {
               this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!!N§)
         {
            if(§-^§.contains(splash))
            {
               §-^§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!!N§ = new Vector.<§2U§>();
      }
      
      private function §[S§(param1:Number, param2:Number) : void
      {
         this.§@"#§ = new §2U§(§[!^§.§["3§,§[!^§.§7$§,param1,param2,§2U§.§^9§,80,0,§@!3§.§?H§);
         §-^§.addChild(this.§@"#§);
         this.§!!N§.push(this.§@"#§);
      }
      
      private function §&D§() : void
      {
         this.§1!"§ = new Timer(200);
         this.§7!S§ = 0;
         this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
         this.§1!"§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §-^§.removeEventListener(Event.ENTER_FRAME,this.update);
         §-^§.container.removeComponent(this.§3?§);
         this.§3?§.hide();
         this.§3?§ = null;
         this.§&V§();
         this.§;!a§.dispose();
         this.§;!a§ = null;
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         if(this.§7!S§ == 0)
         {
            this.§[S§(this.§]y§.mClip.parent.parent.x + this.§]y§.mClip.parent.x + this.§]y§.mClip.x,this.§]y§.mClip.parent.parent.y + this.§]y§.mClip.parent.y + this.§]y§.mClip.y);
         }
         else
         {
            this.§1!"§.stop();
         }
         ++this.§7!S§;
      }
      
      private function §8'§(param1:MouseEvent) : void
      {
         §0"#§.§9"2§("Sound_Button_Click");
         this.§[k§.visible = false;
         this.§"D§.visible = true;
         this.§]!C§.setVisibility(true);
         this.§;!a§.§5!Q§();
         this.§;!a§.§0!n§();
      }
      
      private function §6Y§(param1:MouseEvent) : void
      {
         §0"#§.§9"2§("Sound_Button_Click");
         this.§"D§.visible = false;
         this.§[k§.visible = true;
         this.§]!C§.setVisibility(false);
         this.§;!a§.§<!k§();
      }
      
      private function §`+§(param1:MouseEvent) : void
      {
         if(this.§#!B§.§3!f§() == this.§;!D§)
         {
            this.§#!B§.setText("");
         }
      }
      
      private function §!"?§(param1:Event = null) : void
      {
         if(this.§#"2§())
         {
            this.§"7§.§-!2§ = §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§"7§.goToFrame(1,false);
         }
         else
         {
            this.§"7§.§-!2§ = §>!D§.§&!j§;
            this.§"7§.goToFrame(2,false);
         }
      }
      
      private function §#"2§() : Boolean
      {
         if(this.§#!B§ != null && this.§#!B§.§3!f§() != null && this.§#!B§.§3!f§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function §3"8§() : String
      {
         return this.§#!B§.§3!f§();
      }
      
      public function §2g§() : void
      {
         this.mClip.gotoAndStop(2);
      }
   }
}
