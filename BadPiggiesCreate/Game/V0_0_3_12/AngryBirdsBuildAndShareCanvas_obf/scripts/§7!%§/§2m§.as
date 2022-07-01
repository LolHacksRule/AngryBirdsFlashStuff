package §7!%§
{
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §2!w§.Quest;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7N§.StateLevelEditorTestPlay;
   import §9!y§.§+'§;
   import §9!y§.§0-§;
   import §=e§.§1!@§;
   import §>P§.§%t§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^H§.§1l§;
   import §^H§.§>p§;
   import §^x§.§;_§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §2m§ extends Popup
   {
      
      private static const §-h§:int = 4000;
      
      protected static const §@!`§:String = "ScoreLoopCountChannel";
       
      
      private var § x§:§+I§;
      
      private var §2"§:Number = 1;
      
      private var §9@§:§;!P§;
      
      private var §&!D§:§0-§;
      
      private var §'v§:Vector.<§0-§>;
      
      private var §;h§:Timer;
      
      private var §1!#§:int;
      
      private var §@!g§:int = 0;
      
      private var §-"2§:§;!P§;
      
      private var §%F§:§+I§;
      
      private var §#,§:§%t§;
      
      private var §8N§:§%!u§;
      
      private var §^m§:§;!Z§;
      
      private var §+!1§:§;!Z§;
      
      private var §4!R§:§;!Z§;
      
      private var §']§:§+!?§;
      
      private var §!!N§:§+!?§;
      
      private var §%!C§:§6m§;
      
      private var §^!U§:§6m§;
      
      public var mNewScoreCounter:int;
      
      private var §+!Y§:§<s§;
      
      private var §%Y§:Timer;
      
      private var §?!M§:§+I§;
      
      private var §;@§:§+!?§;
      
      private var §?_§:§+!?§;
      
      private var § !Y§:§+!?§;
      
      private var §3"#§:§6m§;
      
      private const §"g§:String = "Name";
      
      private var §&!q§:§>p§;
      
      private var §?f§:Timer;
      
      public function §2m§(param1:XML, param2:§%!u§, param3:Quest)
      {
         this.§+!Y§ = new §<s§();
         super(param1,param2);
         this.§'v§ = new Vector.<§0-§>();
         this.§#,§ = new §%t§(param2 as §1l§,§#! §.§5!;§.Views.View_QuestMenu[0],param2.container);
         this.§#,§.init(param3);
         param2.container.§`!Y§(this.§#,§);
         goToFrame(1,false);
         this.§ !Y§ = getItemByName("Container_Block") as §+!?§;
         this.§;@§ = getItemByName("Container_LevelEnd") as §+!?§;
         this.§?_§ = getItemByName("Container_Publish") as §+!?§;
         this.§?_§.mClip.gotoAndStop(1);
         this.§']§ = getItemByName("MovieClip_Score") as §+!?§;
         this.§%!C§ = this.§']§.getItemByName("Textfield_Score") as §6m§;
         this.§^!U§ = getItemByName("Textfield_HighScore_Small") as §6m§;
         this.§%Y§ = new Timer(1000,1);
         this.§%Y§.addEventListener(TimerEvent.TIMER,this.§&!r§);
         this.§%Y§.start();
         this.§&!q§ = new §>p§(param2);
         this.§!!N§ = getItemByName("HighscoreContainer") as §+!?§;
         this.§^m§ = getItemByName("Button_Stars") as §;!Z§;
         this.§^m§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§=!b§);
         this.§+!1§ = getItemByName("Button_Check") as §;!Z§;
         this.§+!1§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§#R§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§"!&§();
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
         this.§3"#§ = getItemByName("TextField_InputLevelName") as §6m§;
         this.§3"#§.setText(this.§"g§);
         this.§3"#§.mClip.addEventListener(MouseEvent.CLICK,this.§;9§);
         this.§3"#§.mClip.addEventListener(Event.CHANGE,this.§6=§);
         goToFrame(1,false);
         this.§4!R§ = getItemByName("Button_Finish") as §;!Z§;
         this.§4!R§.§8"!§ = §;_§.§<!v§;
         this.§4!R§.goToFrame(2,false);
         this.§6=§();
         this.§9@§ = getItemByName("MovieClip_Glow") as §;!P§;
         this.§-"2§ = getItemByName("MovieClip_MoustachePig") as §;!P§;
         §&?§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§;!Z§;
         (_loc6_ = getItemByName("Button_ChallengeFriends") as §;!Z§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§-O§);
         var _loc7_:§;!Z§;
         (_loc7_ = getItemByName("Button_NoThanks") as §;!Z§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§8!1§);
         _loc7_.setVisibility(false);
         _loc6_.setVisibility(false);
         this.§?f§ = new Timer(3000,1);
         this.§?f§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§#!y§);
         this.§?f§.start();
         var _loc8_:Array = new Array();
         var _loc9_:§+I§ = §-!M§.§ "!§.§["!§(§-!M§.§ "!§.§+d§(this.§-"2§.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§-!M§.§ §),§-!M§.§ "!§.§+d§(this.§9@§.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§-!M§.§ §),§-!M§.§ "!§.§+d§(_loc6_.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§-!M§.§ §),§-!M§.§ "!§.§+d§(_loc7_.mClip,{
            "scaleX":this.§2"§,
            "scaleY":this.§2"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§-!M§.§ §));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§%!y§();
            this.§ x§ = §-!M§.§ "!§.§=!1§.apply(§-!M§.§ "!§,_loc8_);
            this.§ x§.onComplete = this.§ !o§;
            this.§ x§.play();
         }
         this.§^!U§.setText(AngryBirdsFP11.§`!j§.§import§(§-!F§.§"!L§).toString());
         this.§&!q§.update();
         §^k§.§>7§(§@!`§,1,1);
         §^k§.playSound("Sound_Star_Pig");
         §^k§.playSound("BadPiggies_LevelCompleted");
      }
      
      protected function §#!y§(param1:TimerEvent) : void
      {
         this.§8!1§(null);
      }
      
      protected function §-O§(param1:MouseEvent) : void
      {
         §^k§.playSound("Sound_Button_Click");
         §1!@§.doJsCall("shareLevelBuild");
      }
      
      protected function §8!1§(param1:MouseEvent) : void
      {
         §^k§.playSound("Sound_Button_Click");
         this.§;@§.setVisibility(false);
         this.§?_§.setVisibility(true);
      }
      
      protected function §&!r§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§+!Y§.§8>§(AngryBirdsFP11.§`!j§.§import§(§-!F§.§"!L§));
         §^k§.playSound("Hiscore_Count",§@!`§,100);
         this.§?!M§ = §-!M§.§ "!§.§+d§(this,{"mNewScoreCounter":this.§+!Y§.getValue()},{"mNewScoreCounter":0},1);
         this.§?!M§.onComplete = this.§&F§;
         this.§?!M§.play();
      }
      
      private function §&F§() : void
      {
         §^k§.§"E§(§@!`§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function § !o§() : void
      {
         this.§%F§ = §-!M§.§ "!§.§+d§(this.§9@§.mClip,{"rotation":360},{"rotation":0},§-h§ / 1000);
         this.§%F§.onComplete = this.§ !o§;
         this.§%F§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§0-§ = null;
         var _loc2_:int = getTimer() - this.§@!g§;
         this.§@!g§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§'v§)
         {
            _loc3_.update(_loc2_);
         }
         this.§#,§.update(_loc2_);
         this.§%!C§.setText(this.mNewScoreCounter.toString());
         this.§&!q§.update();
      }
      
      private function §9Q§() : void
      {
         var splash:§0-§ = null;
         if(this.§;h§)
         {
            this.§;h§.stop();
            try
            {
               this.§;h§.removeEventListener(TimerEvent.TIMER,this.§`"1§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'v§)
         {
            if(§&?§.contains(splash))
            {
               §&?§.removeChild(splash);
            }
            splash.clean();
         }
         this.§'v§ = new Vector.<§0-§>();
      }
      
      private function §'x§(param1:Number, param2:Number) : void
      {
         this.§&!D§ = new §0-§(§%"$§.§0<§,§%"$§.§-!'§,param1,param2,§0-§.§-W§,80,0,§+'§.§<y§);
         §&?§.addChild(this.§&!D§);
         this.§'v§.push(this.§&!D§);
      }
      
      private function §%!y§() : void
      {
         this.§;h§ = new Timer(200);
         this.§1!#§ = 0;
         this.§;h§.addEventListener(TimerEvent.TIMER,this.§`"1§);
         this.§;h§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §&?§.removeEventListener(Event.ENTER_FRAME,this.update);
         §&?§.container.removeComponent(this.§#,§);
         this.§#,§.hide();
         this.§#,§ = null;
         this.§9Q§();
         this.§&!q§.dispose();
         this.§&!q§ = null;
      }
      
      private function §`"1§(param1:TimerEvent) : void
      {
         if(this.§1!#§ == 0)
         {
            this.§'x§(this.§-"2§.mClip.parent.parent.x + this.§-"2§.mClip.parent.x + this.§-"2§.mClip.x,this.§-"2§.mClip.parent.parent.y + this.§-"2§.mClip.parent.y + this.§-"2§.mClip.y);
         }
         else
         {
            this.§;h§.stop();
         }
         ++this.§1!#§;
      }
      
      private function §#R§(param1:MouseEvent) : void
      {
         §^k§.playSound("Sound_Button_Click");
         this.§+!1§.visible = false;
         this.§^m§.visible = true;
         this.§!!N§.setVisibility(true);
         this.§&!q§.§,!!§();
         this.§&!q§.§3a§();
      }
      
      private function §=!b§(param1:MouseEvent) : void
      {
         §^k§.playSound("Sound_Button_Click");
         this.§^m§.visible = false;
         this.§+!1§.visible = true;
         this.§!!N§.setVisibility(false);
         this.§&!q§.§!!y§();
      }
      
      private function §;9§(param1:MouseEvent) : void
      {
         if(this.§3"#§.§5!A§() == this.§"g§)
         {
            this.§3"#§.setText("");
         }
      }
      
      private function §6=§(param1:Event = null) : void
      {
         if(this.§98§())
         {
            this.§4!R§.§8"!§ = §;_§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§4!R§.goToFrame(1,false);
         }
         else
         {
            this.§4!R§.§8"!§ = §;_§.§<!v§;
            this.§4!R§.goToFrame(2,false);
         }
      }
      
      private function §98§() : Boolean
      {
         if(this.§3"#§ != null && this.§3"#§.§5!A§() != null && this.§3"#§.§5!A§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function §]!H§() : String
      {
         return this.§3"#§.§5!A§();
      }
      
      public function §;u§() : void
      {
         this.mClip.gotoAndStop(2);
      }
   }
}
