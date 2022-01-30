package §+]§
{
   import §!y§.§2U§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §#!4§.§<f§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §#!v§
   {
       
      
      private const TOP:int = 133;
      
      private const BOTTOM:int = 66;
      
      private var §+!$§:§2U§;
      
      private var §;<§:Vector.<§%O§>;
      
      private var §-]§:§#!'§;
      
      private var §"R§:§#!'§;
      
      private var mDragging:§#!'§;
      
      private var §7f§:§%O§;
      
      private var §<!;§:int;
      
      private var § !]§:int = 0;
      
      private var §4H§:int = 0;
      
      private var §%!3§:§"U§;
      
      public function §#!v§(param1:§2U§, param2:§"U§)
      {
         this.§;<§ = new Vector.<§%O§>(3);
         super();
         this.§%!3§ = param2;
         this.§+!$§ = param1;
         this.§7f§ = param1.getItemByName("Background_Stars") as §%O§;
         this.§-]§ = param1.getItemByName("StarSlider_Upper") as §#!'§;
         this.§"R§ = param1.getItemByName("StarSlider_Lower") as §#!'§;
         this.§;<§[0] = param1.getItemByName("OneStar") as §%O§;
         this.§;<§[1] = param1.getItemByName("TwoStars") as §%O§;
         this.§;<§[2] = param1.getItemByName("ThreeStars") as §%O§;
      }
      
      public function activate() : void
      {
         this.§-]§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.§"R§.mClip.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.§+!$§.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.§+!$§.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.§+!$§.addEventListener(MouseEvent.ROLL_OUT,this.§^!H§);
         this.§<!1§();
      }
      
      public function deActivate() : void
      {
         this.§-]§.mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.§"R§.mClip.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.§+!$§.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.§+!$§.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this.§+!$§.removeEventListener(MouseEvent.ROLL_OUT,this.§^!H§);
      }
      
      protected function §^!H§(param1:MouseEvent) : void
      {
         this.onMouseUp(param1);
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         if(this.mDragging)
         {
            this.mDragging.mClip.stopDrag();
            this.mDragging.setComponentVisualState(§<f§.§1-§);
            this.mDragging = null;
            this.§%!3§.mEditorUI.§[!t§(false);
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         if(_loc2_ == this.§-]§.mClip)
         {
            this.mDragging = this.§-]§;
            this.mDragging.mClip.startDrag(false,new Rectangle(this.mDragging.x,this.TOP,0,this.§"R§.y - this.§-]§.height + 7 - this.TOP));
         }
         else if(_loc2_ == this.§"R§.mClip)
         {
            this.mDragging = this.§"R§;
            this.mDragging.mClip.startDrag(false,new Rectangle(this.mDragging.x,this.§-]§.y + this.§-]§.height - 7,0,this.§?I§() - (this.§-]§.y + this.§-]§.height - 7)));
         }
         this.§<!;§ = param1.localY;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.mDragging)
         {
            this.§1!N§ = this.§ !]§ + (this.§"R§.y - this.§?I§()) / (this.TOP - this.§?I§()) * (this.§4H§ - this.§ !]§);
            this.§0!+§ = this.§ !]§ + (this.§-]§.y - this.§?I§()) / (this.TOP - this.§?I§()) * (this.§4H§ - this.§ !]§);
            this.§<!1§();
         }
      }
      
      public function §<!1§() : void
      {
         if(!this.§7f§.visible)
         {
            return;
         }
         this.§"R§.y = this.§?I§() - (this.§1!N§ - this.§ !]§) / (this.§4H§ - this.§ !]§) * (this.§?I§() - this.TOP);
         this.§-]§.y = this.§?I§() - (this.§0!+§ - this.§ !]§) / (this.§4H§ - this.§ !]§) * (this.§?I§() - this.TOP);
         if(this.mDragging)
         {
            this.mDragging.setComponentVisualState(§<f§.§5!?§);
         }
         var _loc1_:Array = [this.§?I§() - this.§"R§.y - 20,this.§"R§.y - this.§-]§.y - 40,this.§-]§.y - this.TOP - 20];
         var _loc2_:int = 0;
         while(_loc2_ < 3)
         {
            if(this.§1!N§ != this.§0!+§ && _loc1_[_loc2_] > 0)
            {
               this.§;<§[_loc2_].mClip.visible = true;
               this.§;<§[_loc2_].mClip.scaleY = Math.sqrt(Math.min(1,_loc1_[_loc2_] / (this.§;<§[_loc2_].height / this.§;<§[_loc2_].mClip.scaleY)));
               this.§;<§[_loc2_].mClip.scaleX = this.§;<§[_loc2_].mClip.scaleY;
               this.§;<§[_loc2_].mClip.x = (this.§7f§.width - this.§;<§[_loc2_].mClip.width) / 2 + 2;
            }
            else
            {
               this.§;<§[_loc2_].mClip.visible = false;
            }
            _loc2_++;
         }
         this.§;<§[2].y = this.TOP + (this.§-]§.y - this.TOP) / 2 - this.§;<§[2].height / 2 + 5;
         this.§;<§[1].y = this.§-]§.y + this.§-]§.height + (this.§"R§.y - (this.§-]§.y + this.§-]§.height)) / 2 - this.§;<§[1].height / 2;
         this.§;<§[0].y = this.§"R§.y + this.§-]§.height + (this.§?I§() - (this.§"R§.y + this.§"R§.height)) / 2 - this.§;<§[0].height / 2 + 6;
         (this.§+!$§.getItemByName("MinScore") as §;!j§).setText(int(this.§ !]§).toString());
         (this.§+!$§.getItemByName("MaxScore") as §;!j§).setText(int(this.§4H§).toString());
         (this.§"R§.mClip.getChildByName("text") as TextField).text = int(this.§1!N§).toString();
         (this.§-]§.mClip.getChildByName("text") as TextField).text = int(this.§0!+§).toString();
      }
      
      public function §6!+§(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2 == param1 || param1 == 0)
         {
            this.§1!N§ = param1;
            this.§0!+§ = param1;
            this.§"R§.y = this.§?I§();
            this.§-]§.y = this.§?I§();
            this.§"R§.setVisibility(false);
            this.§-]§.setVisibility(false);
            this.§;<§[0].setVisibility(false);
            this.§;<§[1].setVisibility(false);
            this.§;<§[2].setVisibility(false);
         }
         else
         {
            this.§"R§.setVisibility(true);
            this.§-]§.setVisibility(true);
            this.§;<§[0].setVisibility(true);
            this.§;<§[1].setVisibility(true);
            this.§;<§[2].setVisibility(true);
            if(this.§1!N§ == this.§0!+§)
            {
               this.§1!N§ = param1 + (param2 - param1) / 4;
               this.§0!+§ = param1 + (param2 - param1) / 1.3;
            }
            else if(this.§4H§ != 0 && this.§ !]§ != 0)
            {
               _loc3_ = (this.§1!N§ - this.§ !]§) / (this.§4H§ - this.§ !]§);
               _loc4_ = (this.§0!+§ - this.§ !]§) / (this.§4H§ - this.§ !]§);
               this.§1!N§ = param1 + (param2 - param1) * _loc3_;
               this.§0!+§ = param1 + (param2 - param1) * _loc4_;
            }
            this.§1!N§ = Math.min(param2,Math.max(param1,this.§1!N§));
            this.§0!+§ = Math.min(param2,Math.max(param1,this.§0!+§));
         }
         this.§ !]§ = param1;
         this.§4H§ = param2;
      }
      
      private function §?I§() : int
      {
         return this.§7f§.height - this.BOTTOM;
      }
      
      public function get §0!+§() : int
      {
         return this.§%!3§.getLevelMain().§#u§();
      }
      
      public function get §1!N§() : int
      {
         return this.§%!3§.getLevelMain().§ h§();
      }
      
      public function set §0!+§(param1:int) : void
      {
         this.§%!3§.getLevelMain().§^!5§(param1);
      }
      
      public function set §1!N§(param1:int) : void
      {
         this.§%!3§.getLevelMain().§%J§(param1);
      }
   }
}
