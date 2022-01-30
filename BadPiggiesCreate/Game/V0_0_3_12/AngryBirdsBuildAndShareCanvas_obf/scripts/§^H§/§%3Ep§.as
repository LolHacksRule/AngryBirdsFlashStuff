package §^H§
{
   import §,!x§.§]S§;
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §@">§.§%!u§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §>p§
   {
       
      
      private var §3"-§:§+!?§;
      
      private var slider1:§;!Z§;
      
      private var slider2:§;!Z§;
      
      private var mTextFieldSliderScore1:§6m§;
      
      private var mTextFieldSliderScore2:§6m§;
      
      private var star1:§;!P§;
      
      private var star2:§;!P§;
      
      private var star3:§;!P§;
      
      private var §@!e§:§;!P§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §[Y§:Vector.<§;!P§>;
      
      private var §+!Y§:§<s§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §9-§:Number = 0;
      
      public function §>p§(param1:§%!u§)
      {
         this.§[Y§ = new Vector.<§;!P§>(3);
         this.§+!Y§ = new §<s§();
         super();
         this.§3"-§ = param1.getItemByName("Container_StarSlider") as §+!?§;
         this.§@!e§ = param1.getItemByName("MovieClip_Slider_Background") as §;!P§;
         this.§+!Y§.§8>§(AngryBirdsFP11.§`!j§.§import§(§-!F§.§"!L§));
         this.slider1 = param1.getItemByName("Slider_1") as §;!Z§;
         this.slider2 = param1.getItemByName("Slider_2") as §;!Z§;
         this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as §6m§;
         this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as §6m§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
         this.slider1Limit = this.slider1.x;
         this.slider2Limit = this.slider2.x;
         this.§9-§ = this.§3"-§.width - 3;
         this.§[Y§[0] = param1.getItemByName("MovieClip_Star_1") as §;!P§;
         this.§[Y§[1] = param1.getItemByName("MovieClip_Star_2") as §;!P§;
         this.§[Y§[2] = param1.getItemByName("MovieClip_Star_3") as §;!P§;
      }
      
      public function update() : void
      {
         this.§'!Y§();
         this.§2T§();
      }
      
      private function §'!Y§() : void
      {
         this.§"1§();
      }
      
      private function §"1§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§9-§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§+!Y§.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§9-§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§+!Y§.getValue());
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      private function §2T§() : void
      {
         var _loc1_:Array = null;
         if(this.slider1.x + this.slider1.width / 2 >= this.slider2.x)
         {
            this.slider1.mClip.stopDrag();
            this.slider2.mClip.stopDrag();
            this.slider1.x -= 2;
         }
         _loc1_ = [this.slider1.x - 10,this.slider2.x - this.slider1.x - 12,this.§9-§ - this.slider2.x - 24];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§<!l§ != this.§0l§ && _loc1_[_loc2_] > 0)
            {
               this.§[Y§[_loc2_].mClip.visible = true;
               this.§[Y§[_loc2_].mClip.scaleX = 1;
               this.§[Y§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§[Y§[_loc2_].width));
               this.§[Y§[_loc2_].mClip.scaleY = this.§[Y§[_loc2_].mClip.scaleX;
            }
            else
            {
               this.§[Y§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§[Y§[0].x = this.slider1.x / 2 - this.§[Y§[0].width / 2 + 4;
         this.§[Y§[1].x = (this.slider1.x + this.slider2.x + this.§[Y§[1].width) / 2 - this.§[Y§[1].width / 2 + 2;
         this.§[Y§[2].x = (this.§@!e§.x + this.slider2.x + this.§[Y§[2].width) / 2 - this.§[Y§[2].width / 2;
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§9-§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      public function §,!!§() : void
      {
         this.§3"-§.setVisibility(false);
      }
      
      public function §!!y§() : void
      {
         this.§3"-§.setVisibility(true);
      }
      
      public function §^c§(param1:int) : int
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
      
      public function §3a§() : void
      {
         this.§<!l§ = this.§^c§(1);
         this.§0l§ = this.§^c§(2);
      }
      
      public function get §0l§() : int
      {
         return §]S§.§ "!§.§<" §.§9!8§.§<j§();
      }
      
      public function get §<!l§() : int
      {
         return §]S§.§ "!§.§<" §.§9!8§.§3!T§();
      }
      
      public function set §0l§(param1:int) : void
      {
         §]S§.§ "!§.§<" §.§9!8§.§]"6§(param1);
      }
      
      public function set §<!l§(param1:int) : void
      {
         §]S§.§ "!§.§<" §.§9!8§.§&!e§(param1);
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
