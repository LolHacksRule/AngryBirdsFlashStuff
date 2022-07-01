package §1!5§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §""§.Popup;
   import §#!8§.§&!'§;
   import §,!!§.§0"!§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §1"1§.§;]§;
   import §1"1§.§`&§;
   import §3c§.§2A§;
   import §4!S§.Quest;
   import §4!j§.§""3§;
   import §;W§.§"w§;
   import §;W§.§7!S§;
   import §>Z§.§5;§;
   import §^^§.StateLevelEditorTestPlay;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]!j§ extends Popup
   {
      
      private static const §3""§:int = 4000;
      
      protected static const §^j§:String = "ScoreLoopCountChannel";
       
      
      private var §`9§:§-!m§;
      
      private var §#"0§:Number = 1;
      
      private var §9h§:§%!7§;
      
      private var §=!j§:§;]§;
      
      private var §!""§:Vector.<§;]§>;
      
      private var §5c§:Timer;
      
      private var §!X§:int;
      
      private var §?"+§:int = 0;
      
      private var §-"4§:§%!7§;
      
      private var §-"'§:§-!m§;
      
      private var §!"6§:§2A§;
      
      private var §6!B§:§=!]§;
      
      private var §8!n§:§8K§;
      
      private var §var §:§8K§;
      
      private var §4""§:§8K§;
      
      private var §?!]§:§1H§;
      
      private var §0"2§:§1H§;
      
      private var §6!_§:§<"-§;
      
      private var §8!-§:§<"-§;
      
      public var mNewScoreCounter:int;
      
      private var §,B§:§0"!§;
      
      private var §`g§:Timer;
      
      private var §<!h§:§-!m§;
      
      private var §,C§:§1H§;
      
      private var §1U§:§1H§;
      
      private var §9"%§:§1H§;
      
      private var §=!J§:§<"-§;
      
      private const §^p§:String = "Name";
      
      private var §^!S§:§7!S§;
      
      private var §5%§:Timer;
      
      public function §]!j§(param1:XML, param2:§=!]§, param3:Quest)
      {
         this.§,B§ = new §0"!§();
         super(param1,param2);
         this.§!""§ = new Vector.<§;]§>();
         this.§!"6§ = new §2A§(param2 as §"w§,§,!h§.§`C§.Views.View_QuestMenu[0],param2.container);
         this.§!"6§.init(param3);
         param2.container.§[!I§(this.§!"6§);
         goToFrame(1,false);
         this.§9"%§ = getItemByName("Container_Block") as §1H§;
         this.§,C§ = getItemByName("Container_LevelEnd") as §1H§;
         this.§1U§ = getItemByName("Container_Publish") as §1H§;
         this.§1U§.mClip.gotoAndStop(1);
         this.§?!]§ = getItemByName("MovieClip_Score") as §1H§;
         this.§6!_§ = this.§?!]§.getItemByName("Textfield_Score") as §<"-§;
         this.§8!-§ = getItemByName("Textfield_HighScore_Small") as §<"-§;
         this.§`g§ = new Timer(1000,1);
         this.§`g§.addEventListener(TimerEvent.TIMER,this.§,W§);
         this.§`g§.start();
         this.§^!S§ = new §7!S§(param2);
         this.§0"2§ = getItemByName("HighscoreContainer") as §1H§;
         this.§8!n§ = getItemByName("Button_Stars") as §8K§;
         this.§8!n§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§1T§);
         this.§var § = getItemByName("Button_Check") as §8K§;
         this.§var §.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§&"8§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§9!t§();
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
         this.§=!J§ = getItemByName("TextField_InputLevelName") as §<"-§;
         this.§=!J§.setText(this.§^p§);
         this.§=!J§.mClip.addEventListener(MouseEvent.CLICK,this.§<!U§);
         this.§=!J§.mClip.addEventListener(Event.CHANGE,this.§#"3§);
         goToFrame(1,false);
         this.§4""§ = getItemByName("Button_Finish") as §8K§;
         this.§4""§.§;X§ = §""3§.override;
         this.§4""§.goToFrame(2,false);
         this.§#"3§();
         this.§9h§ = getItemByName("MovieClip_Glow") as §%!7§;
         this.§-"4§ = getItemByName("MovieClip_MoustachePig") as §%!7§;
         §4!+§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§8K§;
         (_loc6_ = getItemByName("Button_ChallengeFriends") as §8K§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§^"1§);
         var _loc7_:§8K§;
         (_loc7_ = getItemByName("Button_NoThanks") as §8K§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§@!j§);
         _loc7_.setVisibility(false);
         _loc6_.setVisibility(false);
         this.§5%§ = new Timer(3000,1);
         this.§5%§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§+,§);
         this.§5%§.start();
         var _loc8_:Array = new Array();
         var _loc9_:§-!m§ = §"L§.§7!?§.§#!x§(§"L§.§7!?§.§4!P§(this.§-"4§.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"L§.§@v§),§"L§.§7!?§.§4!P§(this.§9h§.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§"L§.§@v§),§"L§.§7!?§.§4!P§(_loc6_.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"L§.§@v§),§"L§.§7!?§.§4!P§(_loc7_.mClip,{
            "scaleX":this.§#"0§,
            "scaleY":this.§#"0§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"L§.§@v§));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§^E§();
            this.§`9§ = §"L§.§7!?§.§@!H§.apply(§"L§.§7!?§,_loc8_);
            this.§`9§.onComplete = this.§!t§;
            this.§`9§.play();
         }
         this.§8!-§.setText(AngryBirdsFP11.§"!c§.§7!9§(§8!z§.§>!&§).toString());
         this.§^!S§.update();
         §5;§.§9L§(§^j§,3,1);
         §5;§.playSound("Sound_Star_Pig");
         §5;§.playSound("BadPiggies_LevelCompleted");
      }
      
      protected function §+,§(param1:TimerEvent) : void
      {
         this.§@!j§(null);
      }
      
      protected function §^"1§(param1:MouseEvent) : void
      {
         §5;§.playSound("Sound_Button_Click");
         §&!'§.doJsCall("shareLevelBuild");
      }
      
      protected function §@!j§(param1:MouseEvent) : void
      {
         §5;§.playSound("Sound_Button_Click");
         this.§,C§.setVisibility(false);
         this.§1U§.setVisibility(true);
      }
      
      protected function §,W§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§,B§.§`S§(AngryBirdsFP11.§"!c§.§7!9§(§8!z§.§>!&§));
         §5;§.playSound("Hiscore_Count",§^j§,100);
         this.§<!h§ = §"L§.§7!?§.§4!P§(this,{"mNewScoreCounter":this.§,B§.getValue()},{"mNewScoreCounter":0},1);
         this.§<!h§.onComplete = this.§2,§;
         this.§<!h§.play();
      }
      
      private function §2,§() : void
      {
         §5;§.§@g§(§^j§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function §!t§() : void
      {
         this.§-"'§ = §"L§.§7!?§.§4!P§(this.§9h§.mClip,{"rotation":360},{"rotation":0},§3""§ / 1000);
         this.§-"'§.onComplete = this.§!t§;
         this.§-"'§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§;]§ = null;
         var _loc2_:int = getTimer() - this.§?"+§;
         this.§?"+§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§!""§)
         {
            _loc3_.update(_loc2_);
         }
         this.§!"6§.update(_loc2_);
         this.§6!_§.setText(this.mNewScoreCounter.toString());
         this.§^!S§.update();
      }
      
      private function §4!-§() : void
      {
         var splash:§;]§ = null;
         if(this.§5c§)
         {
            this.§5c§.stop();
            try
            {
               this.§5c§.removeEventListener(TimerEvent.TIMER,this.§8!%§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!""§)
         {
            if(§4!+§.contains(splash))
            {
               §4!+§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!""§ = new Vector.<§;]§>();
      }
      
      private function §#N§(param1:Number, param2:Number) : void
      {
         this.§=!j§ = new §;]§(§@=§.§`!_§,§@=§.§?_§,param1,param2,§;]§.§3!1§,80,0,§`&§.§0"7§);
         §4!+§.addChild(this.§=!j§);
         this.§!""§.push(this.§=!j§);
      }
      
      private function §^E§() : void
      {
         this.§5c§ = new Timer(200);
         this.§!X§ = 0;
         this.§5c§.addEventListener(TimerEvent.TIMER,this.§8!%§);
         this.§5c§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §4!+§.removeEventListener(Event.ENTER_FRAME,this.update);
         §4!+§.container.removeComponent(this.§!"6§);
         this.§!"6§.hide();
         this.§!"6§ = null;
         this.§4!-§();
         this.§^!S§.dispose();
         this.§^!S§ = null;
      }
      
      private function §8!%§(param1:TimerEvent) : void
      {
         if(this.§!X§ == 0)
         {
            this.§#N§(this.§-"4§.mClip.parent.parent.x + this.§-"4§.mClip.parent.x + this.§-"4§.mClip.x,this.§-"4§.mClip.parent.parent.y + this.§-"4§.mClip.parent.y + this.§-"4§.mClip.y);
         }
         else
         {
            this.§5c§.stop();
         }
         ++this.§!X§;
      }
      
      private function §&"8§(param1:MouseEvent) : void
      {
         §5;§.playSound("Sound_Button_Click");
         this.§var §.visible = false;
         this.§8!n§.visible = true;
         this.§0"2§.setVisibility(true);
         this.§^!S§.§2r§();
         this.§^!S§.§9!C§();
      }
      
      private function §1T§(param1:MouseEvent) : void
      {
         §5;§.playSound("Sound_Button_Click");
         this.§8!n§.visible = false;
         this.§var §.visible = true;
         this.§0"2§.setVisibility(false);
         this.§^!S§.§9G§();
      }
      
      private function §<!U§(param1:MouseEvent) : void
      {
         if(this.§=!J§.§@!;§() == this.§^p§)
         {
            this.§=!J§.setText("");
         }
      }
      
      private function §#"3§(param1:Event = null) : void
      {
         if(this.§8!#§())
         {
            this.§4""§.§;X§ = §""3§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§4""§.goToFrame(1,false);
         }
         else
         {
            this.§4""§.§;X§ = §""3§.override;
            this.§4""§.goToFrame(2,false);
         }
      }
      
      private function §8!#§() : Boolean
      {
         if(this.§=!J§ != null && this.§=!J§.§@!;§() != null && this.§=!J§.§@!;§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function §[<§() : String
      {
         return this.§=!J§.§@!;§();
      }
      
      public function §3e§() : void
      {
         this.mClip.gotoAndStop(2);
      }
   }
}
