package §6!5§
{
   import § !T§.§ q§;
   import § !T§.§=!x§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §9Y§.§=@§;
   import §@!6§.§3!5§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §3!3§
   {
      
      public static const §7w§:String = "ChapterSelectionState";
      
      protected static const §]z§:Number = 0.5;
       
      
      protected var §"&§:Sprite;
      
      protected var §!!$§:§3j§;
      
      protected var §[!#§:Array;
      
      protected var §[C§:Array;
      
      protected var §#a§:int = 0;
      
      protected var § !D§:Number = 0;
      
      protected var §`!f§:Number = 0;
      
      protected var §+2§:§<!'§ = null;
      
      protected var §9!S§:Boolean = false;
      
      protected var § G§:Number = 0;
      
      public function StateEpisodeSelection(param1:§ q§, param2:§>u§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_ChapterSelection[0]);
         this.§6!0§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!E§.§7I§.§'F§(false);
         this.§=^§();
      }
      
      protected function §=^§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=!x§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§[!#§)
         {
            _loc3_ = §="4§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §-!I§.§[f§.§?4§.userProgress.§2!%§(_loc3_) + "/" + §-!I§.§[f§.§?4§.userProgress.§9l§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §-!I§.§[f§.§?4§.userProgress.§!a§(_loc3_) + "/" + §-!I§.§[f§.§?4§.userProgress.§4V§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §-!I§.§[f§.§?4§.userProgress.§]N§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §6!0§() : void
      {
         var _loc3_:§=!x§ = null;
         this.§!!$§ = § !z§.getItemByName("Container_ChapterSelection") as §3j§;
         this.§[!#§ = [];
         this.§[C§ = [];
         var _loc1_:Number = 0;
         this.§"&§ = new Sprite();
         this.§"&§.y = §-!I§.§&!P§ / 2;
         this.§ !D§ = §-!I§.§[M§ / 2;
         this.§"&§.x = this.§ !D§;
         this.§!!$§.mClip.addChild(this.§"&§);
         var _loc2_:int = 0;
         while(_loc2_ < §="4§.getEpisodeCount())
         {
            _loc3_ = §="4§.getEpisode(_loc2_);
            if(!_loc3_.§[!@§)
            {
               _loc1_ = this.§5!g§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§8!y§(_loc1_);
         this.§>!g§();
      }
      
      protected function §8!y§(param1:Number) : void
      {
         param1 = this.§5!g§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§5!g§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §>!g§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!#§.length)
         {
            _loc3_ = new §<U§.§5"0§("Button_Dot")();
            if(_loc2_ == this.§#a§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §-!I§.§[M§ / 2 + _loc1_ - this.§[!#§.length * _loc3_.width / 2;
            _loc3_.y = (§ !z§.getItemByName("Button_Next") as §^!g§).y - _loc3_.height / 2;
            this.§!!$§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§[C§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§?B§);
            _loc2_++;
         }
         _loc1_ = this.§[!#§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§ !z§.getItemByName("Button_Next") as §^!g§).x = §-!I§.§[M§ / 2;
         (§ !z§.getItemByName("Button_Prev") as §^!g§).x = §-!I§.§[M§ / 2;
         (§ !z§.getItemByName("Button_Next") as §^!g§).x = (§ !z§.getItemByName("Button_Next") as §^!g§).x + (_loc1_ + 10);
         (§ !z§.getItemByName("Button_Prev") as §^!g§).x = (§ !z§.getItemByName("Button_Prev") as §^!g§).x - (_loc1_ + 10);
      }
      
      protected function §5!g§(param1:String, param2:Number, param3:§=!x§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §<U§.§5"0§(param1)()).x = param2;
         this.§"&§.addChild(_loc4_);
         this.§[!#§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§]c§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §-!I§.§[f§.§?4§.userProgress.§!a§(param3) + "/" + §-!I§.§[f§.§?4§.userProgress.§4V§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §-!I§.§[f§.§?4§.userProgress.§]N§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §-!I§.§[f§.§?4§.userProgress.§2!%§(param3) + "/" + §-!I§.§[f§.§?4§.userProgress.§9l§(param3);
            }
         }
         return param2;
      }
      
      private function §?B§(param1:MouseEvent) : void
      {
         if(!this.§9!S§)
         {
            this.§&!C§(this.§[C§.indexOf(param1.target));
         }
      }
      
      protected function §]c§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§9!S§)
         {
            _loc2_ = this.§[!#§.indexOf(param1.currentTarget);
            if(this.§#a§ != _loc2_)
            {
               this.§&!C§(_loc2_);
            }
            else if(_loc2_ < §="4§.getEpisodeCount())
            {
               §="4§.selectEpisode(_loc2_);
               §?n§(§^!+§.§7w§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§+#§();
         this.§,"&§();
      }
      
      protected function §,"&§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[!#§.length)
         {
            _loc2_ = this.§"&§.x + this.§[!#§[_loc1_].x - §-!I§.§[M§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§[!#§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§[!#§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§[!#§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§[!#§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §+#§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§[C§.length)
         {
            if(-this.§"&§.x + 800 >= this.§[!#§[_loc1_].x && -this.§ G§ < this.§[!#§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[C§.length)
               {
                  this.§[C§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[C§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§"&§.x + 800 <= this.§[!#§[_loc1_].x && -this.§ G§ > this.§[!#§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§[C§.length)
               {
                  this.§[C§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§[C§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§ G§ = this.§"&§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §6!E§.§7I§.clearLevel();
         this.§6!4§();
      }
      
      protected function §6!4§() : void
      {
         (§ !z§.getItemByName("Button_Back") as §^!g§).setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "BACK":
               §3!5§.§<!9§("Menu_Back");
               §?n§(§4q§.§7w§);
               break;
            case "PREV":
               §3!5§.§<!9§("Menu_Confirm");
               if(!this.§9!S§)
               {
                  --this.§#a§;
                  this.§&!C§(this.§#a§);
                  break;
               }
               break;
            case "NEXT":
               §3!5§.§<!9§("Menu_Confirm");
               if(!this.§9!S§)
               {
                  ++this.§#a§;
                  this.§&!C§(this.§#a§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §3!5§.§<!9§("Menu_Confirm");
               §-!I§.§[f§.§?U§();
         }
      }
      
      protected function §&!C§(param1:int) : void
      {
         this.§9!S§ = true;
         if(param1 > this.§[!#§.length - 1)
         {
            param1 = this.§[!#§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§#a§ = param1;
         var _loc2_:Number = -this.§[!#§[param1].x + this.§ !D§;
         var _loc3_:Number = this.§"&§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §]z§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§+2§ != null)
         {
            this.§+2§.stop();
         }
         this.§+2§ = §3`§.§<"5§.§^g§(this.§"&§,{"x":_loc2_},null,_loc4_,§=@§.easeOut);
         this.§+2§.onComplete = this.§-r§;
         this.§+2§.play();
      }
      
      protected function §-r§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[C§.length)
         {
            if(_loc1_ == this.§#a§)
            {
               this.§[C§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§[C§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§9!S§ = false;
      }
   }
}
