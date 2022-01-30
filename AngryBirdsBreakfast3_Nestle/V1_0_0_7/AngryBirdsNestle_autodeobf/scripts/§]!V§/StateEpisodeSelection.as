package §]!V§
{
   import §!P§.§4K§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §9c§.§!!2§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §>!9§
   {
      
      public static const §+a§:String = "ChapterSelectionState";
      
      protected static const §#O§:Number = 0.5;
       
      
      protected var §@"1§:Sprite;
      
      protected var §5]§:§]"4§;
      
      protected var §^!C§:Array;
      
      protected var §,0§:Array;
      
      protected var §%"4§:int = 0;
      
      protected var § !f§:Number = 0;
      
      protected var §?"'§:Number = 0;
      
      protected var §;@§:§4`§ = null;
      
      protected var §#!i§:Boolean = false;
      
      protected var §=!1§:Number = 0;
      
      public function StateEpisodeSelection(param1:§5!1§, param2:§&S§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_ChapterSelection[0]);
         this.§-!y§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#Z§.§'0§.§#o§(false);
         this.§@k§();
      }
      
      protected function §@k§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§4K§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§^!C§)
         {
            _loc3_ = §97§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §,!X§.§>!G§.§>!I§.userProgress.§[!k§(_loc3_) + "/" + §,!X§.§>!G§.§>!I§.userProgress.§>!q§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §,!X§.§>!G§.§>!I§.userProgress.§ H§(_loc3_) + "/" + §,!X§.§>!G§.§>!I§.userProgress.§&!3§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §,!X§.§>!G§.§>!I§.userProgress.§7A§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §-!y§() : void
      {
         var _loc3_:§4K§ = null;
         this.§5]§ = §5+§.getItemByName("Container_ChapterSelection") as §]"4§;
         this.§^!C§ = [];
         this.§,0§ = [];
         var _loc1_:Number = 0;
         this.§@"1§ = new Sprite();
         this.§@"1§.y = §,!X§.§^!Q§ / 2;
         this.§ !f§ = §,!X§.§-t§ / 2;
         this.§@"1§.x = this.§ !f§;
         this.§5]§.mClip.addChild(this.§@"1§);
         var _loc2_:int = 0;
         while(_loc2_ < §97§.getEpisodeCount())
         {
            _loc3_ = §97§.getEpisode(_loc2_);
            if(!_loc3_.§19§)
            {
               _loc1_ = this.§;&§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§+!M§(_loc1_);
         this.§;!I§();
      }
      
      protected function §+!M§(param1:Number) : void
      {
         param1 = this.§;&§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§;&§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §;!I§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!C§.length)
         {
            _loc3_ = new §[O§.§1s§("Button_Dot")();
            if(_loc2_ == this.§%"4§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §,!X§.§-t§ / 2 + _loc1_ - this.§^!C§.length * _loc3_.width / 2;
            _loc3_.y = (§5+§.getItemByName("Button_Next") as §73§).y - _loc3_.height / 2;
            this.§5]§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§,0§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§@3§);
            _loc2_++;
         }
         _loc1_ = this.§^!C§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§5+§.getItemByName("Button_Next") as §73§).x = §,!X§.§-t§ / 2;
         (§5+§.getItemByName("Button_Prev") as §73§).x = §,!X§.§-t§ / 2;
         (§5+§.getItemByName("Button_Next") as §73§).x = (§5+§.getItemByName("Button_Next") as §73§).x + (_loc1_ + 10);
         (§5+§.getItemByName("Button_Prev") as §73§).x = (§5+§.getItemByName("Button_Prev") as §73§).x - (_loc1_ + 10);
      }
      
      protected function §;&§(param1:String, param2:Number, param3:§4K§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §[O§.§1s§(param1)()).x = param2;
         this.§@"1§.addChild(_loc4_);
         this.§^!C§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§"1§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §,!X§.§>!G§.§>!I§.userProgress.§ H§(param3) + "/" + §,!X§.§>!G§.§>!I§.userProgress.§&!3§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §,!X§.§>!G§.§>!I§.userProgress.§7A§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §,!X§.§>!G§.§>!I§.userProgress.§[!k§(param3) + "/" + §,!X§.§>!G§.§>!I§.userProgress.§>!q§(param3);
            }
         }
         return param2;
      }
      
      private function §@3§(param1:MouseEvent) : void
      {
         if(!this.§#!i§)
         {
            this.§!!]§(this.§,0§.indexOf(param1.target));
         }
      }
      
      protected function §"1§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§#!i§)
         {
            _loc2_ = this.§^!C§.indexOf(param1.currentTarget);
            if(this.§%"4§ != _loc2_)
            {
               this.§!!]§(_loc2_);
            }
            else if(_loc2_ < §97§.getEpisodeCount())
            {
               §97§.selectEpisode(_loc2_);
               §8!`§(§&g§.§+a§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§>>§();
         this.§3!#§();
      }
      
      protected function §3!#§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§^!C§.length)
         {
            _loc2_ = this.§@"1§.x + this.§^!C§[_loc1_].x - §,!X§.§-t§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§^!C§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§^!C§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§^!C§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§^!C§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §>>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§,0§.length)
         {
            if(-this.§@"1§.x + 800 >= this.§^!C§[_loc1_].x && -this.§=!1§ < this.§^!C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,0§.length)
               {
                  this.§,0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,0§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§@"1§.x + 800 <= this.§^!C§[_loc1_].x && -this.§=!1§ > this.§^!C§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§,0§.length)
               {
                  this.§,0§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§,0§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§=!1§ = this.§@"1§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#Z§.§'0§.clearLevel();
         this.§9S§();
      }
      
      protected function §9S§() : void
      {
         (§5+§.getItemByName("Button_Back") as §73§).setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "BACK":
               §%!c§.§8" §("Menu_Back");
               §8!`§(§`w§.§+a§);
               break;
            case "PREV":
               §%!c§.§8" §("Menu_Confirm");
               if(!this.§#!i§)
               {
                  --this.§%"4§;
                  this.§!!]§(this.§%"4§);
                  break;
               }
               break;
            case "NEXT":
               §%!c§.§8" §("Menu_Confirm");
               if(!this.§#!i§)
               {
                  ++this.§%"4§;
                  this.§!!]§(this.§%"4§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §%!c§.§8" §("Menu_Confirm");
               §,!X§.§>!G§.§4I§();
         }
      }
      
      protected function §!!]§(param1:int) : void
      {
         this.§#!i§ = true;
         if(param1 > this.§^!C§.length - 1)
         {
            param1 = this.§^!C§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§%"4§ = param1;
         var _loc2_:Number = -this.§^!C§[param1].x + this.§ !f§;
         var _loc3_:Number = this.§@"1§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §#O§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§;@§ != null)
         {
            this.§;@§.stop();
         }
         this.§;@§ = §"!d§.§>!P§.§7R§(this.§@"1§,{"x":_loc2_},null,_loc4_,§!!2§.easeOut);
         this.§;@§.onComplete = this.§1@§;
         this.§;@§.play();
      }
      
      protected function §1@§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§,0§.length)
         {
            if(_loc1_ == this.§%"4§)
            {
               this.§,0§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§,0§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§#!i§ = false;
      }
   }
}
