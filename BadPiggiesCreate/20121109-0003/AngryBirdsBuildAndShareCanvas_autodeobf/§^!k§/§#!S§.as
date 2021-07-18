package §^!k§
{
   import §&!<§.§>!V§;
   import §1" §.§#!j§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §#!S§
   {
       
      
      private var §-!q§:§6W§;
      
      private var slider1:§9"8§;
      
      private var slider2:§9"8§;
      
      private var mTextFieldSliderScore1:§!!]§;
      
      private var mTextFieldSliderScore2:§!!]§;
      
      private var star1:§@u§;
      
      private var star2:§@u§;
      
      private var star3:§@u§;
      
      private var §7">§:§@u§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §<"'§:Vector.<§@u§>;
      
      private var §4!?§:§9!=§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §5"?§:Number = 0;
      
      public function §#!S§(param1:§>!V§)
      {
         this.§<"'§ = new Vector.<§@u§>(3);
         this.§4!?§ = new §9!=§();
         super();
         this.§-!q§ = param1.getItemByName("Container_StarSlider") as §6W§;
         this.§7">§ = param1.getItemByName("MovieClip_Slider_Background") as §@u§;
         this.§4!?§.§2">§(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§));
         this.slider1 = param1.getItemByName("Slider_1") as §9"8§;
         this.slider2 = param1.getItemByName("Slider_2") as §9"8§;
         this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as §!!]§;
         this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as §!!]§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
         this.slider1Limit = this.slider1.x;
         this.slider2Limit = this.slider2.x;
         this.§5"?§ = this.§-!q§.width - 3;
         this.§<"'§[0] = param1.getItemByName("MovieClip_Star_1") as §@u§;
         this.§<"'§[1] = param1.getItemByName("MovieClip_Star_2") as §@u§;
         this.§<"'§[2] = param1.getItemByName("MovieClip_Star_3") as §@u§;
      }
      
      public function update() : void
      {
         this.§^"§();
         this.§6!,§();
      }
      
      private function §^"§() : void
      {
         this.§@!k§();
      }
      
      private function §@!k§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§5"?§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§4!?§.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§5"?§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§4!?§.getValue());
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      private function §6!,§() : void
      {
         if(this.slider1.x + this.slider1.width / 2 >= this.slider2.x)
         {
            this.slider1.mClip.stopDrag();
            this.slider2.mClip.stopDrag();
            this.slider1.x -= 2;
         }
         var _loc1_:Array = [this.slider1.x - 10,this.slider2.x - this.slider1.x - 12,this.§5"?§ - this.slider2.x - 24];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§-b§ != this.§3!N§ && _loc1_[_loc2_] > 0)
            {
               this.§<"'§[_loc2_].mClip.visible = true;
               this.§<"'§[_loc2_].mClip.scaleX = 1;
               this.§<"'§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§<"'§[_loc2_].width));
               this.§<"'§[_loc2_].mClip.scaleY = this.§<"'§[_loc2_].mClip.scaleX;
            }
            else
            {
               this.§<"'§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§<"'§[0].x = this.slider1.x / 2 - this.§<"'§[0].width / 2 + 4;
         this.§<"'§[1].x = (this.slider1.x + this.slider2.x + this.§<"'§[1].width) / 2 - this.§<"'§[1].width / 2 + 2;
         this.§<"'§[2].x = (this.§7">§.x + this.slider2.x + this.§<"'§[2].width) / 2 - this.§<"'§[2].width / 2;
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§5"?§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      public function §5!Q§() : void
      {
         this.§-!q§.setVisibility(false);
      }
      
      public function §<!k§() : void
      {
         this.§-!q§.setVisibility(true);
      }
      
      public function §1"2§(param1:int) : int
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
      
      public function §0!n§() : void
      {
         this.§-b§ = this.§1"2§(1);
         this.§3!N§ = this.§1"2§(2);
      }
      
      public function get §3!N§() : int
      {
         return §#!j§.§[E§.§0"!§.§0z§.§8!r§();
      }
      
      public function get §-b§() : int
      {
         return §#!j§.§[E§.§0"!§.§0z§.§'!W§();
      }
      
      public function set §3!N§(param1:int) : void
      {
         §#!j§.§[E§.§0"!§.§0z§.§<r§(param1);
      }
      
      public function set §-b§(param1:int) : void
      {
         §#!j§.§[E§.§0"!§.§0z§.§ !t§(param1);
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
