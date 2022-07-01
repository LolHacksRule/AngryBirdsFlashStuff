package §%!Z§
{
   import §!!+§.StateLevelEditorTestPlay;
   import §!q§.§84§;
   import §&!&§.§1"7§;
   import §,"$§.Popup;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §6`§.§`!e§;
   import §7M§.§"?§;
   import §9!z§.§'Y§;
   import §<8§.§"h§;
   import §="$§.Quest;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §@""§.§&S§;
   import §@""§.§'!R§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §7q§ extends Popup
   {
      
      private static const §+"+§:int = 4000;
       
      
      private var §9! §:§^F§;
      
      private var §5N§:Number = 1;
      
      private var §`" §:§%!9§;
      
      private var §3!Y§:§&S§;
      
      private var §1F§:Vector.<§&S§>;
      
      private var §!f§:Timer;
      
      private var §3q§:int;
      
      private var §"!?§:int = 0;
      
      private var §!!m§:§%!9§;
      
      private var §+^§:§^F§;
      
      private var §=,§:§`!e§;
      
      private var §%!&§:§=p§;
      
      private var §3!j§:§8!r§;
      
      private var §<,§:§8!r§;
      
      private var §^!Q§:§8!r§;
      
      private var §@n§:§7!a§;
      
      private var §!"7§:§7!a§;
      
      private var §'I§:§`G§;
      
      private var §-@§:§`G§;
      
      public var mNewScoreCounter:int;
      
      private var §82§:§1"7§;
      
      private var §;>§:Timer;
      
      private var §6!=§:§^F§;
      
      private var §>!;§:§7!a§;
      
      private var §58§:§7!a§;
      
      private var §1!H§:§7!a§;
      
      private var §!X§:§`G§;
      
      private const §]G§:String = "Name";
      
      private var §-!u§:§7!a§;
      
      private var slider1:§%!9§;
      
      private var slider2:§%!9§;
      
      private var mTextFieldSliderScore1:§`G§;
      
      private var mTextFieldSliderScore2:§`G§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §]m§:Number = 0;
      
      private var star1:§%!9§;
      
      private var star2:§%!9§;
      
      private var star3:§%!9§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §;!#§:Vector.<§%!9§>;
      
      private var §8M§:§%!9§;
      
      public function §7q§(param1:XML, param2:§=p§, param3:Quest)
      {
         this.§82§ = new §1"7§();
         this.§;!#§ = new Vector.<§%!9§>(3);
         super(param1,param2);
         this.§1F§ = new Vector.<§&S§>();
         this.§=,§ = new §`!e§(param2 as §'Y§,§1!=§.§8X§.Views.View_QuestMenu[0],param2.container);
         this.§=,§.init(param3);
         this.§=,§.§[!N§();
         param2.container.§2!%§(this.§=,§);
         goToFrame(1,false);
         this.§1!H§ = getItemByName("Container_Block") as §7!a§;
         this.§>!;§ = getItemByName("Container_LevelEnd") as §7!a§;
         this.§58§ = getItemByName("Container_Publish") as §7!a§;
         this.§58§.mClip.gotoAndStop(1);
         this.§@n§ = getItemByName("MovieClip_Score") as §7!a§;
         this.§'I§ = this.§@n§.getItemByName("Textfield_Score") as §`G§;
         this.§-@§ = getItemByName("Textfield_HighScore_Small") as §`G§;
         this.§;>§ = new Timer(1000,1);
         this.§;>§.addEventListener(TimerEvent.TIMER,this.§^=§);
         this.§;>§.start();
         this.§!"7§ = getItemByName("HighscoreContainer") as §7!a§;
         this.§-!u§ = getItemByName("Container_StarSlider") as §7!a§;
         this.§8M§ = getItemByName("MovieClip_Slider_Background") as §%!9§;
         this.§3!j§ = getItemByName("Button_Stars") as §8!r§;
         this.§3!j§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§4v§);
         this.§<,§ = getItemByName("Button_Check") as §8!r§;
         this.§<,§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§0!t§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§#5§();
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
         this.§!X§ = getItemByName("TextField_InputLevelName") as §`G§;
         this.§!X§.setText(this.§]G§);
         this.§!X§.mClip.addEventListener(MouseEvent.CLICK,this.§1!k§);
         this.§!X§.mClip.addEventListener(Event.CHANGE,this.§^H§);
         goToFrame(1,false);
         this.§^!Q§ = getItemByName("Button_Finish") as §8!r§;
         this.§^!Q§.§@!K§ = §"h§.§?L§;
         this.§^!Q§.goToFrame(2,false);
         this.§^H§();
         this.§`" § = getItemByName("MovieClip_Glow") as §%!9§;
         this.§!!m§ = getItemByName("MovieClip_MoustachePig") as §%!9§;
         §?>§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§8!r§ = getItemByName("Button_ChallengeFriends") as §8!r§;
         var _loc7_:§8!r§;
         (_loc7_ = getItemByName("Button_NoThanks") as §8!r§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§1"3§);
         var _loc8_:Array = new Array();
         var _loc9_:§^F§ = §<y§.§,l§.§'!^§(§<y§.§,l§.§]!C§(this.§!!m§.mClip,{
            "scaleX":this.§5N§,
            "scaleY":this.§5N§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§<y§.§9!=§),§<y§.§,l§.§]!C§(this.§`" §.mClip,{
            "scaleX":this.§5N§,
            "scaleY":this.§5N§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§<y§.§9!=§),§<y§.§,l§.§]!C§(_loc6_.mClip,{
            "scaleX":this.§5N§,
            "scaleY":this.§5N§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§<y§.§9!=§),§<y§.§,l§.§]!C§(_loc7_.mClip,{
            "scaleX":this.§5N§,
            "scaleY":this.§5N§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§<y§.§9!=§));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§ !7§();
            this.§9! § = §<y§.§,l§.§=!D§.apply(§<y§.§,l§,_loc8_);
            this.§9! §.onComplete = this.§1!I§;
            this.§9! §.play();
         }
         this.slider1 = getItemByName("Slider_1") as §%!9§;
         this.slider2 = getItemByName("Slider_2") as §%!9§;
         this.§;!#§[0] = getItemByName("MovieClip_Star_1") as §%!9§;
         this.§;!#§[1] = getItemByName("MovieClip_Star_2") as §%!9§;
         this.§;!#§[2] = getItemByName("MovieClip_Star_3") as §%!9§;
         this.§-@§.setText(AngryBirdsFP11.§<U§.§,s§(§"?§.§4M§).toString());
         this.mTextFieldSliderScore1 = getItemByName("Textfield_SliderScore_1") as §`G§;
         this.mTextFieldSliderScore2 = getItemByName("Textfield_SliderScore_2") as §`G§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider1Limit = this.slider1.x;
         this.slider2Limit = this.slider2.x;
         this.§]m§ = this.§-!u§.width - 3;
         this.§;!!§();
      }
      
      protected function §1"3§(param1:MouseEvent) : void
      {
         this.§>!;§.setVisibility(false);
         this.§58§.setVisibility(true);
      }
      
      private function §#!Z§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§]m§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§82§.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§]m§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§82§.getValue());
      }
      
      private function §;!!§() : void
      {
         this.§#!Z§();
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§]m§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      protected function §^=§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§82§.§ <§(AngryBirdsFP11.§<U§.§,s§(§"?§.§4M§));
         this.§6!=§ = §<y§.§,l§.§]!C§(this,{"mNewScoreCounter":this.§82§.getValue()},{"mNewScoreCounter":0},1);
         this.§6!=§.onComplete = this.§[t§;
         this.§6!=§.play();
      }
      
      private function §[t§() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      protected function §7T§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §1!I§() : void
      {
         this.§+^§ = §<y§.§,l§.§]!C§(this.§`" §.mClip,{"rotation":360},{"rotation":0},§+"+§ / 1000);
         this.§+^§.onComplete = this.§1!I§;
         this.§+^§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§&S§ = null;
         var _loc2_:int = getTimer() - this.§"!?§;
         this.§"!?§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§1F§)
         {
            _loc3_.update(_loc2_);
         }
         this.§=,§.update(_loc2_);
         this.§'I§.setText(this.mNewScoreCounter.toString());
         this.§;!!§();
         this.§+"2§();
      }
      
      private function §+"2§() : void
      {
         if(this.slider1.x + this.slider1.width / 2 >= this.slider2.x)
         {
            this.slider1.mClip.stopDrag();
            this.slider2.mClip.stopDrag();
            this.slider1.x -= 2;
         }
         var _loc1_:Array = [this.slider1.x - 10,this.slider2.x - this.slider1.x - 12,this.§]m§ - this.slider2.x - 24];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§,![§ != this.§'!M§ && _loc1_[_loc2_] > 0)
            {
               this.§;!#§[_loc2_].mClip.visible = true;
               this.§;!#§[_loc2_].mClip.scaleX = 1;
               this.§;!#§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§;!#§[_loc2_].width));
               this.§;!#§[_loc2_].mClip.scaleY = this.§;!#§[_loc2_].mClip.scaleX;
            }
            else
            {
               this.§;!#§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§;!#§[0].x = this.slider1.x / 2 - this.§;!#§[0].width / 2 + 4;
         this.§;!#§[1].x = (this.slider1.x + this.slider2.x + this.§;!#§[1].width) / 2 - this.§;!#§[1].width / 2 + 2;
         this.§;!#§[2].x = (this.§8M§.x + this.slider2.x + this.§;!#§[2].width) / 2 - this.§;!#§[2].width / 2;
      }
      
      private function §?!<§() : void
      {
         var splash:§&S§ = null;
         if(this.§!f§)
         {
            this.§!f§.stop();
            try
            {
               this.§!f§.removeEventListener(TimerEvent.TIMER,this.§3r§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1F§)
         {
            if(§?>§.contains(splash))
            {
               §?>§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1F§ = new Vector.<§&S§>();
      }
      
      private function §'J§(param1:Number, param2:Number) : void
      {
         this.§3!Y§ = new §&S§(§7"$§.§<!8§,§7"$§.§[V§,param1,param2,§&S§.§>A§,80,0,§'!R§.§?-§);
         §?>§.addChild(this.§3!Y§);
         this.§1F§.push(this.§3!Y§);
      }
      
      private function § !7§() : void
      {
         this.§!f§ = new Timer(200);
         this.§3q§ = 0;
         this.§!f§.addEventListener(TimerEvent.TIMER,this.§3r§);
         this.§!f§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §?>§.removeEventListener(Event.ENTER_FRAME,this.update);
         §?>§.container.removeComponent(this.§=,§);
         this.§=,§.hide();
         this.§=,§ = null;
         this.§?!<§();
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         if(this.§3q§ == 0)
         {
            this.§'J§(this.§!!m§.mClip.parent.parent.x + this.§!!m§.mClip.parent.x + this.§!!m§.mClip.x,this.§!!m§.mClip.parent.parent.y + this.§!!m§.mClip.parent.y + this.§!!m§.mClip.y);
         }
         else
         {
            this.§!f§.stop();
         }
         ++this.§3q§;
      }
      
      private function §0!t§(param1:MouseEvent) : void
      {
         this.§<,§.visible = false;
         this.§3!j§.visible = true;
         this.§!"7§.setVisibility(true);
         this.§-!u§.setVisibility(false);
         this.§,![§ = this.mSlider1Score;
         this.§'!M§ = this.mSlider2Score;
      }
      
      private function §4v§(param1:MouseEvent) : void
      {
         this.§3!j§.visible = false;
         this.§<,§.visible = true;
         this.§!"7§.setVisibility(false);
         this.§-!u§.setVisibility(true);
      }
      
      private function §1!k§(param1:MouseEvent) : void
      {
         if(this.§!X§.§0$§() == this.§]G§)
         {
            this.§!X§.setText("");
         }
      }
      
      private function §^H§(param1:Event = null) : void
      {
         if(this.§`!B§())
         {
            this.§^!Q§.§@!K§ = §"h§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§^!Q§.goToFrame(1,false);
         }
         else
         {
            this.§^!Q§.§@!K§ = §"h§.§?L§;
            this.§^!Q§.goToFrame(2,false);
         }
      }
      
      private function §`!B§() : Boolean
      {
         if(this.§!X§ != null && this.§!X§.§0$§() != null && this.§!X§.§0$§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function §[!V§() : String
      {
         return this.§!X§.§0$§();
      }
      
      public function §^Q§() : void
      {
         this.mClip.gotoAndStop(2);
      }
      
      public function get §'!M§() : int
      {
         return §84§.§,l§.§"j§.§^"'§.§9!6§();
      }
      
      public function get §,![§() : int
      {
         return §84§.§,l§.§"j§.§^"'§.§+!9§();
      }
      
      public function set §'!M§(param1:int) : void
      {
         §84§.§,l§.§"j§.§^"'§.§-,§(param1);
      }
      
      public function set §,![§(param1:int) : void
      {
         §84§.§,l§.§"j§.§^"'§.§["%§(param1);
      }
   }
}
