package §^[§
{
   import §"v§.§3!w§;
   import §'@§.§^J§;
   import §'i§.§'!;§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §1"2§.§'s§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §2!h§
   {
       
      
      private var §;!S§:§`!T§;
      
      private var slider1:§="#§;
      
      private var slider2:§="#§;
      
      private var mTextFieldSliderScore1:§`!<§;
      
      private var mTextFieldSliderScore2:§`!<§;
      
      private var star1:§%+§;
      
      private var star2:§%+§;
      
      private var star3:§%+§;
      
      private var §2b§:§%+§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §%y§:Vector.<§%+§>;
      
      private var §3!z§:§^J§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §+!%§:Number = 0;
      
      public function §2!h§(param1:§'s§)
      {
         this.§%y§ = new Vector.<§%+§>(3);
         this.§3!z§ = new §^J§();
         super();
         this.§;!S§ = param1.getItemByName("Container_StarSlider") as §`!T§;
         this.§2b§ = param1.getItemByName("MovieClip_Slider_Background") as §%+§;
         this.§3!z§.§&!Y§(AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§));
         this.slider1 = param1.getItemByName("Slider_1") as §="#§;
         this.slider2 = param1.getItemByName("Slider_2") as §="#§;
         this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as §`!<§;
         this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as §`!<§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
         this.slider1Limit = this.slider1.x;
         this.slider2Limit = this.slider2.x;
         this.§+!%§ = this.§;!S§.width - 3;
         this.§%y§[0] = param1.getItemByName("MovieClip_Star_1") as §%+§;
         this.§%y§[1] = param1.getItemByName("MovieClip_Star_2") as §%+§;
         this.§%y§[2] = param1.getItemByName("MovieClip_Star_3") as §%+§;
      }
      
      public function update() : void
      {
         this.§`P§();
         this.§4!q§();
      }
      
      private function §`P§() : void
      {
         this.§`_§();
      }
      
      private function §`_§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§+!%§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§3!z§.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§+!%§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§3!z§.getValue());
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      private function §4!q§() : void
      {
         var _loc1_:Array = null;
         if(this.slider1.x + this.slider1.width / 2 >= this.slider2.x)
         {
            this.slider1.mClip.stopDrag();
            this.slider2.mClip.stopDrag();
            this.slider1.x -= 2;
         }
         _loc1_ = [this.slider1.x - 10,this.slider2.x - this.slider1.x - 12,this.§+!%§ - this.slider2.x - 24];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§,!B§ != this.§1">§ && _loc1_[_loc2_] > 0)
            {
               this.§%y§[_loc2_].mClip.visible = true;
               this.§%y§[_loc2_].mClip.scaleX = 1;
               this.§%y§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§%y§[_loc2_].width));
               this.§%y§[_loc2_].mClip.scaleY = this.§%y§[_loc2_].mClip.scaleX;
            }
            else
            {
               this.§%y§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§%y§[0].x = this.slider1.x / 2 - this.§%y§[0].width / 2 + 4;
         this.§%y§[1].x = (this.slider1.x + this.slider2.x + this.§%y§[1].width) / 2 - this.§%y§[1].width / 2 + 2;
         this.§%y§[2].x = (this.§2b§.x + this.slider2.x + this.§%y§[2].width) / 2 - this.§%y§[2].width / 2;
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§+!%§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      public function §=!^§() : void
      {
         this.§;!S§.setVisibility(false);
      }
      
      public function §"!U§() : void
      {
         this.§;!S§.setVisibility(true);
      }
      
      public function §9P§(param1:int) : int
      {
         if(param1 == 1)
         {
            return this.mSlider1Score;
         }
         if(param1 == 2)
         {
            return this.mSlider2Score;
         }
         return 0;
      }
      
      public function §&!N§() : void
      {
         this.§,!B§ = this.§9P§(1);
         this.§1">§ = this.§9P§(2);
      }
      
      public function get §1">§() : int
      {
         return §'!;§.§2=§.§8#§.§4+§.§?@§();
      }
      
      public function get §,!B§() : int
      {
         return §'!;§.§2=§.§8#§.§4+§.§]#§();
      }
      
      public function set §1">§(param1:int) : void
      {
         §'!;§.§2=§.§8#§.§4+§.§[!j§(param1);
      }
      
      public function set §,!B§(param1:int) : void
      {
         §'!;§.§2=§.§8#§.§4+§.§>f§(param1);
      }
      
      public function dispose() : void
      {
         this.slider1.mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider2.mClip.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
      }
   }
}
