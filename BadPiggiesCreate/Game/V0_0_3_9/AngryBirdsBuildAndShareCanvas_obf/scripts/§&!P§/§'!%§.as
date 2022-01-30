package §&!P§
{
   import §!!A§.§""5§;
   import §&!&§.§+!A§;
   import §&"8§.Quest;
   import §3!O§.§3"4§;
   import §3!O§.§6w§;
   import §6!&§.§1!c§;
   import §7"2§.§;!5§;
   import §8!7§.§&%§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=;§.StateLevelEditorTestPlay;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import §]J§.Popup;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import §try§.§6>§;
   
   public class §'!%§ extends Popup
   {
      
      private static const §[!w§:int = 4000;
       
      
      private var §#i§:§^!#§;
      
      private var §`"§:Number = 1;
      
      private var §#!P§:§&5§;
      
      private var §[j§:§6w§;
      
      private var §>h§:Vector.<§6w§>;
      
      private var §6C§:Timer;
      
      private var §4_§:int;
      
      private var §[<§:int = 0;
      
      private var §@! §:§&5§;
      
      private var §;!;§:§^!#§;
      
      private var §!+§:§6>§;
      
      private var §1!T§:§7!!§;
      
      private var §>! §:§="5§;
      
      private var §<!V§:§="5§;
      
      private var §;!9§:§="5§;
      
      private var §4!5§:§>"-§;
      
      private var §["7§:§>"-§;
      
      private var §?!]§:§7!N§;
      
      public var mNewScoreCounter:int;
      
      private var §," §:§""5§;
      
      private var §<"#§:Timer;
      
      private var §;!m§:§^!#§;
      
      private var §?_§:§>"-§;
      
      private var §@E§:§>"-§;
      
      private var §2r§:§>"-§;
      
      private var §8"3§:§7!N§;
      
      private const §1J§:String = "Name";
      
      private var §#,§:§>"-§;
      
      private var slider1:§&5§;
      
      private var slider2:§&5§;
      
      private var mTextFieldSliderScore1:§7!N§;
      
      private var mTextFieldSliderScore2:§7!N§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §+!j§:Number = 0;
      
      public function §'!%§(param1:XML, param2:§7!!§, param3:Quest)
      {
         this.§," § = new §""5§();
         super(param1,param2);
         this.§>h§ = new Vector.<§6w§>();
         this.§!+§ = new §6>§(param2 as §&%§,§"!f§.§%!1§.Views.View_QuestMenu[0],param2.container);
         this.§!+§.init(param3);
         this.§!+§.§<+§();
         param2.container.§?!;§(this.§!+§);
         goToFrame(1,false);
         this.§2r§ = getItemByName("Container_Block") as §>"-§;
         this.§?_§ = getItemByName("Container_LevelEnd") as §>"-§;
         this.§@E§ = getItemByName("Container_Publish") as §>"-§;
         this.§@E§.mClip.gotoAndStop(1);
         this.§4!5§ = getItemByName("MovieClip_Score") as §>"-§;
         this.§?!]§ = this.§4!5§.getItemByName("Textfield_Score") as §7!N§;
         this.§<"#§ = new Timer(1000,1);
         this.§<"#§.addEventListener(TimerEvent.TIMER,this.§2B§);
         this.§<"#§.start();
         this.§["7§ = getItemByName("HighscoreContainer") as §>"-§;
         this.§#,§ = getItemByName("Container_StarSlider") as §>"-§;
         this.§>! § = getItemByName("Button_Stars") as §="5§;
         this.§>! §.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§,!6§);
         this.§<!V§ = getItemByName("Button_Check") as §="5§;
         this.§<!V§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§=""§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§>M§();
         var _loc5_:Bitmap;
         (_loc5_ = new Bitmap(_loc4_)).width = 189;
         _loc5_.scaleY = _loc5_.scaleX;
         getItemByName("MovieClip_Thumbnail").mClip.removeChildAt(0);
         getItemByName("MovieClip_Thumbnail").mClip.addChild(_loc5_);
         _loc5_.x = _loc5_.x + 1 - _loc5_.width / 2;
         _loc5_.y -= _loc5_.height / 2;
         this.§8"3§ = getItemByName("TextField_InputLevelName") as §7!N§;
         this.§8"3§.setText(this.§1J§);
         this.§8"3§.mClip.addEventListener(MouseEvent.CLICK,this.§;!Y§);
         this.§8"3§.mClip.addEventListener(Event.CHANGE,this.§"!q§);
         goToFrame(1,false);
         this.§;!9§ = getItemByName("Button_Finish") as §="5§;
         this.§;!9§.§]p§ = §+!A§.§@x§;
         this.§;!9§.goToFrame(2,false);
         this.§"!q§();
         this.§#!P§ = getItemByName("MovieClip_Glow") as §&5§;
         this.§@! § = getItemByName("MovieClip_MoustachePig") as §&5§;
         §%!a§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§="5§ = getItemByName("Button_ChallengeFriends") as §="5§;
         var _loc7_:§="5§;
         (_loc7_ = getItemByName("Button_NoThanks") as §="5§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§7!+§);
         var _loc8_:Array = new Array();
         var _loc9_:§^!#§ = §"g§.§'!o§.§3!p§(§"g§.§'!o§.§while§(this.§@! §.mClip,{
            "scaleX":this.§`"§,
            "scaleY":this.§`"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"g§.§'!9§),§"g§.§'!o§.§while§(this.§#!P§.mClip,{
            "scaleX":this.§`"§,
            "scaleY":this.§`"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§"g§.§'!9§),§"g§.§'!o§.§while§(_loc6_.mClip,{
            "scaleX":this.§`"§,
            "scaleY":this.§`"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"g§.§'!9§),§"g§.§'!o§.§while§(_loc7_.mClip,{
            "scaleX":this.§`"§,
            "scaleY":this.§`"§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§"g§.§'!9§));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§=!6§();
            this.§#i§ = §"g§.§'!o§.§%l§.apply(§"g§.§'!o§,_loc8_);
            this.§#i§.onComplete = this.§6b§;
            this.§#i§.play();
         }
         this.slider1 = getItemByName("Slider_1") as §&5§;
         this.slider2 = getItemByName("Slider_2") as §&5§;
         var _loc10_:§&5§ = getItemByName("MovieClip_Star_1") as §&5§;
         var _loc11_:§&5§ = getItemByName("MovieClip_Star_2") as §&5§;
         var _loc12_:§&5§ = getItemByName("MovieClip_Star_3") as §&5§;
         var _loc13_:§&5§ = getItemByName("Current_Score_Slider") as §&5§;
         this.mTextFieldSliderScore1 = getItemByName("Textfield_SliderScore_1") as §7!N§;
         this.mTextFieldSliderScore2 = getItemByName("Textfield_SliderScore_2") as §7!N§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.§+!j§ = this.§#,§.width - 3;
         this.§,""§();
      }
      
      protected function §7!+§(param1:MouseEvent) : void
      {
         this.§?_§.setVisibility(false);
         this.§@E§.setVisibility(true);
      }
      
      private function §%"5§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§+!j§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§," §.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§+!j§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§," §.getValue());
      }
      
      private function §,""§() : void
      {
         this.§%"5§();
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§+!j§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      protected function §2B§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§," §.§9!<§(AngryBirdsFP11.§5!c§.§0!^§(§1!c§.§'Z§));
         this.§;!m§ = §"g§.§'!o§.§while§(this,{"mNewScoreCounter":this.§," §.getValue()},{"mNewScoreCounter":0},1);
         this.§;!m§.onComplete = this.§-T§;
         this.§;!m§.play();
      }
      
      private function §-T§() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      protected function §3!N§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §6b§() : void
      {
         this.§;!;§ = §"g§.§'!o§.§while§(this.§#!P§.mClip,{"rotation":360},{"rotation":0},§[!w§ / 1000);
         this.§;!;§.onComplete = this.§6b§;
         this.§;!;§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§6w§ = null;
         var _loc2_:int = getTimer() - this.§[<§;
         this.§[<§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§>h§)
         {
            _loc3_.update(_loc2_);
         }
         this.§!+§.update(_loc2_);
         this.§?!]§.setText(this.mNewScoreCounter.toString());
         this.§,""§();
      }
      
      private function §'c§() : void
      {
         var splash:§6w§ = null;
         if(this.§6C§)
         {
            this.§6C§.stop();
            try
            {
               this.§6C§.removeEventListener(TimerEvent.TIMER,this.§5;§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>h§)
         {
            if(§%!a§.contains(splash))
            {
               §%!a§.removeChild(splash);
            }
            splash.clean();
         }
         this.§>h§ = new Vector.<§6w§>();
      }
      
      private function §]"0§(param1:Number, param2:Number) : void
      {
         this.§[j§ = new §6w§(§1+§.§"<§,§1+§.§9%§,param1,param2,§6w§.§=j§,80,0,§3"4§.§=!P§);
         §%!a§.addChild(this.§[j§);
         this.§>h§.push(this.§[j§);
      }
      
      private function §=!6§() : void
      {
         this.§6C§ = new Timer(200);
         this.§4_§ = 0;
         this.§6C§.addEventListener(TimerEvent.TIMER,this.§5;§);
         this.§6C§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §%!a§.removeEventListener(Event.ENTER_FRAME,this.update);
         §%!a§.container.removeComponent(this.§!+§);
         this.§!+§.hide();
         this.§!+§ = null;
         this.§'c§();
      }
      
      private function §5;§(param1:TimerEvent) : void
      {
         if(this.§4_§ == 0)
         {
            this.§]"0§(this.§@! §.mClip.parent.parent.x + this.§@! §.mClip.parent.x + this.§@! §.mClip.x,this.§@! §.mClip.parent.parent.y + this.§@! §.mClip.parent.y + this.§@! §.mClip.y);
         }
         else
         {
            this.§6C§.stop();
         }
         ++this.§4_§;
      }
      
      private function §=""§(param1:MouseEvent) : void
      {
         this.§<!V§.visible = false;
         this.§>! §.visible = true;
         this.§["7§.setVisibility(true);
         this.§#,§.setVisibility(false);
         this.§8;§ = this.mSlider1Score;
         this.§2!e§ = this.mSlider2Score;
      }
      
      private function §,!6§(param1:MouseEvent) : void
      {
         this.§>! §.visible = false;
         this.§<!V§.visible = true;
         this.§["7§.setVisibility(false);
         this.§#,§.setVisibility(true);
      }
      
      private function §;!Y§(param1:MouseEvent) : void
      {
         if(this.§8"3§.§2!^§() == this.§1J§)
         {
            this.§8"3§.setText("");
         }
      }
      
      private function §"!q§(param1:Event = null) : void
      {
         if(this.§'!Z§())
         {
            this.§;!9§.§]p§ = §+!A§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§;!9§.goToFrame(1,false);
         }
         else
         {
            this.§;!9§.§]p§ = §+!A§.§@x§;
            this.§;!9§.goToFrame(2,false);
         }
      }
      
      private function §'!Z§() : Boolean
      {
         if(this.§8"3§ != null && this.§8"3§.§2!^§() != null && this.§8"3§.§2!^§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function §,-§() : String
      {
         return this.§8"3§.§2!^§();
      }
      
      public function §6""§() : void
      {
         this.§@E§.mClip.gotoAndStop(2);
      }
      
      public function get §2!e§() : int
      {
         return §;!5§.§'!o§.§94§.§'!E§.§97§();
      }
      
      public function get §8;§() : int
      {
         return §;!5§.§'!o§.§94§.§'!E§.§5!]§();
      }
      
      public function set §2!e§(param1:int) : void
      {
         §;!5§.§'!o§.§94§.§'!E§.§ null§(param1);
      }
      
      public function set §8;§(param1:int) : void
      {
         §;!5§.§'!o§.§94§.§'!E§.§8!=§(param1);
      }
   }
}
