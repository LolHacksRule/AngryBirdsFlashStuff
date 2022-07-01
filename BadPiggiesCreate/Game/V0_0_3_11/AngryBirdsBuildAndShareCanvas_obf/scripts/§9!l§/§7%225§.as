package §9!l§
{
   import §+%§.§+"%§;
   import §2!5§.§0!X§;
   import §2i§.§%!+§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §7"5§
   {
       
      
      private var §"!7§:§;!u§;
      
      private var slider1:§2v§;
      
      private var slider2:§2v§;
      
      private var mTextFieldSliderScore1:§ !F§;
      
      private var mTextFieldSliderScore2:§ !F§;
      
      private var star1:§%!`§;
      
      private var star2:§%!`§;
      
      private var star3:§%!`§;
      
      private var §%!U§:§%!`§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §?!a§:Vector.<§%!`§>;
      
      private var §4!i§:§%!+§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §@5§:Number = 0;
      
      public function §7"5§(param1:§`5§)
      {
         this.§?!a§ = new Vector.<§%!`§>(3);
         this.§4!i§ = new §%!+§();
         super();
         this.§"!7§ = param1.getItemByName("Container_StarSlider") as §;!u§;
         this.§%!U§ = param1.getItemByName("MovieClip_Slider_Background") as §%!`§;
         this.§4!i§.§`H§(AngryBirdsFP11.§8!I§.§`!K§(§+"%§.§9!'§));
         this.slider1 = param1.getItemByName("Slider_1") as §2v§;
         this.slider2 = param1.getItemByName("Slider_2") as §2v§;
         this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as § !F§;
         this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as § !F§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
         this.slider1Limit = this.slider1.x;
         this.slider2Limit = this.slider2.x;
         this.§@5§ = this.§"!7§.width - 3;
         this.§?!a§[0] = param1.getItemByName("MovieClip_Star_1") as §%!`§;
         this.§?!a§[1] = param1.getItemByName("MovieClip_Star_2") as §%!`§;
         this.§?!a§[2] = param1.getItemByName("MovieClip_Star_3") as §%!`§;
      }
      
      public function update() : void
      {
         this.§6J§();
         this.§'n§();
      }
      
      private function §6J§() : void
      {
         this.§ k§();
      }
      
      private function § k§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§@5§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§4!i§.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§@5§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§4!i§.getValue());
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      private function §'n§() : void
      {
         if(this.slider1.x + this.slider1.width / 2 >= this.slider2.x)
         {
            this.slider1.mClip.stopDrag();
            this.slider2.mClip.stopDrag();
            this.slider1.x -= 2;
         }
         var _loc1_:Array = [this.slider1.x - 10,this.slider2.x - this.slider1.x - 12,this.§@5§ - this.slider2.x - 24];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§%!5§ != this.§&S§ && _loc1_[_loc2_] > 0)
            {
               this.§?!a§[_loc2_].mClip.visible = true;
               this.§?!a§[_loc2_].mClip.scaleX = 1;
               this.§?!a§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§?!a§[_loc2_].width));
               this.§?!a§[_loc2_].mClip.scaleY = this.§?!a§[_loc2_].mClip.scaleX;
            }
            else
            {
               this.§?!a§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§?!a§[0].x = this.slider1.x / 2 - this.§?!a§[0].width / 2 + 4;
         this.§?!a§[1].x = (this.slider1.x + this.slider2.x + this.§?!a§[1].width) / 2 - this.§?!a§[1].width / 2 + 2;
         this.§?!a§[2].x = (this.§%!U§.x + this.slider2.x + this.§?!a§[2].width) / 2 - this.§?!a§[2].width / 2;
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§@5§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      public function §+0§() : void
      {
         this.§"!7§.setVisibility(false);
      }
      
      public function §-<§() : void
      {
         this.§"!7§.setVisibility(true);
      }
      
      public function §@!<§(param1:int) : int
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
      
      public function §!k§() : void
      {
         this.§%!5§ = this.§@!<§(1);
         this.§&S§ = this.§@!<§(2);
      }
      
      public function get §&S§() : int
      {
         return §0!X§.§if §.§@s§.§'4§.§<!Q§();
      }
      
      public function get §%!5§() : int
      {
         return §0!X§.§if §.§@s§.§'4§.§@!M§();
      }
      
      public function set §&S§(param1:int) : void
      {
         §0!X§.§if §.§@s§.§'4§.§9!w§(param1);
      }
      
      public function set §%!5§(param1:int) : void
      {
         §0!X§.§if §.§@s§.§'4§.§1!]§(param1);
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
