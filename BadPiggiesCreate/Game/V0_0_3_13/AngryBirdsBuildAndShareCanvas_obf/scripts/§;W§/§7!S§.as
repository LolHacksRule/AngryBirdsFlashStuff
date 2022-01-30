package §;W§
{
   import § ^§.§0c§;
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §,!!§.§0"!§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §7!S§
   {
       
      
      private var §1!n§:§1H§;
      
      private var slider1:§8K§;
      
      private var slider2:§8K§;
      
      private var mTextFieldSliderScore1:§<"-§;
      
      private var mTextFieldSliderScore2:§<"-§;
      
      private var star1:§%!7§;
      
      private var star2:§%!7§;
      
      private var star3:§%!7§;
      
      private var §<!g§:§%!7§;
      
      private var slider1Limit:Number;
      
      private var slider2Limit:Number;
      
      private var §'3§:Vector.<§%!7§>;
      
      private var §,B§:§0"!§;
      
      private var mSlider1Score:int = 0;
      
      private var mSlider2Score:int = 0;
      
      private var §9&§:Number = 0;
      
      public function §7!S§(param1:§=!]§)
      {
         this.§'3§ = new Vector.<§%!7§>(3);
         this.§,B§ = new §0"!§();
         super();
         this.§1!n§ = param1.getItemByName("Container_StarSlider") as §1H§;
         this.§<!g§ = param1.getItemByName("MovieClip_Slider_Background") as §%!7§;
         this.§,B§.§`S§(AngryBirdsFP11.§"!c§.§7!9§(§8!z§.§>!&§));
         this.slider1 = param1.getItemByName("Slider_1") as §8K§;
         this.slider2 = param1.getItemByName("Slider_2") as §8K§;
         this.mTextFieldSliderScore1 = param1.getItemByName("Textfield_SliderScore_1") as §<"-§;
         this.mTextFieldSliderScore2 = param1.getItemByName("Textfield_SliderScore_2") as §<"-§;
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider1);
         this.slider1.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider1);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDownSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUpSlider2);
         this.slider2.mClip.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseUpSlider2);
         this.slider1Limit = this.slider1.x;
         this.slider2Limit = this.slider2.x;
         this.§9&§ = this.§1!n§.width - 3;
         this.§'3§[0] = param1.getItemByName("MovieClip_Star_1") as §%!7§;
         this.§'3§[1] = param1.getItemByName("MovieClip_Star_2") as §%!7§;
         this.§'3§[2] = param1.getItemByName("MovieClip_Star_3") as §%!7§;
      }
      
      public function update() : void
      {
         this.§%!9§();
         this.§^U§();
      }
      
      private function §%!9§() : void
      {
         this.§6!V§();
      }
      
      private function §6!V§() : void
      {
         var _loc1_:Number = Math.abs(this.slider1.x / this.§9&§);
         this.mSlider1Score = Math.floor(_loc1_ * this.§,B§.getValue());
         var _loc2_:Number = Math.abs(this.slider2.x / this.§9&§);
         if(_loc2_ >= 0.99)
         {
            _loc2_ = 1;
         }
         this.mSlider2Score = Math.floor(_loc2_ * this.§,B§.getValue());
         this.mTextFieldSliderScore1.setText(this.mSlider1Score.toString());
         this.mTextFieldSliderScore2.setText(this.mSlider2Score.toString());
      }
      
      private function §^U§() : void
      {
         if(this.slider1.x + this.slider1.width / 2 >= this.slider2.x)
         {
            this.slider1.mClip.stopDrag();
            this.slider2.mClip.stopDrag();
            this.slider1.x -= 2;
         }
         var _loc1_:Array = [this.slider1.x - 10,this.slider2.x - this.slider1.x - 12,this.§9&§ - this.slider2.x - 24];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§=P§ != this.§[![§ && _loc1_[_loc2_] > 0)
            {
               this.§'3§[_loc2_].mClip.visible = true;
               this.§'3§[_loc2_].mClip.scaleX = 1;
               this.§'3§[_loc2_].mClip.scaleX = Math.sqrt(Math.min(1,_loc1_[_loc2_] / this.§'3§[_loc2_].width));
               this.§'3§[_loc2_].mClip.scaleY = this.§'3§[_loc2_].mClip.scaleX;
            }
            else
            {
               this.§'3§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§'3§[0].x = this.slider1.x / 2 - this.§'3§[0].width / 2 + 4;
         this.§'3§[1].x = (this.slider1.x + this.slider2.x + this.§'3§[1].width) / 2 - this.§'3§[1].width / 2 + 2;
         this.§'3§[2].x = (this.§<!g§.x + this.slider2.x + this.§'3§[2].width) / 2 - this.§'3§[2].width / 2;
      }
      
      protected function onMouseDownSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.startDrag(false,new Rectangle(0,6.1,this.slider2.x,0));
      }
      
      protected function onMouseDownSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.startDrag(false,new Rectangle(this.slider1.x,6.1,this.§9&§ - this.slider1.x,0));
      }
      
      protected function onMouseUpSlider1(param1:MouseEvent) : void
      {
         this.slider1.mClip.stopDrag();
      }
      
      protected function onMouseUpSlider2(param1:MouseEvent) : void
      {
         this.slider2.mClip.stopDrag();
      }
      
      public function §2r§() : void
      {
         this.§1!n§.setVisibility(false);
      }
      
      public function §9G§() : void
      {
         this.§1!n§.setVisibility(true);
      }
      
      public function §^$§(param1:int) : int
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
      
      public function §9!C§() : void
      {
         this.§=P§ = this.§^$§(1);
         this.§[![§ = this.§^$§(2);
      }
      
      public function get §[![§() : int
      {
         return §0c§.§7!?§.§6%§.§9"&§.§,!L§();
      }
      
      public function get §=P§() : int
      {
         return §0c§.§7!?§.§6%§.§9"&§.§49§();
      }
      
      public function set §[![§(param1:int) : void
      {
         §0c§.§7!?§.§6%§.§9"&§.§5-§(param1);
      }
      
      public function set §=P§(param1:int) : void
      {
         §0c§.§7!?§.§6%§.§9"&§.§[+§(param1);
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
