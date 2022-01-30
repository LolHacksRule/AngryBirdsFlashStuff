package §`!6§
{
   import §%2§.§'i§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §9![§.§1!i§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!a§.§5l§;
   import §>!a§.§>"2§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class StateEpisodeSelection extends §-!c§
   {
      
      public static const §]O§:String = "ChapterSelectionState";
      
      protected static const §#[§:Number = 0.5;
       
      
      protected var §]"#§:Sprite;
      
      protected var §>N§:§5" §;
      
      protected var §;!Y§:Array;
      
      protected var §2`§:Array;
      
      protected var §4U§:int = 0;
      
      protected var §0!W§:Number = 0;
      
      protected var §2s§:Number = 0;
      
      protected var §1!4§:§]!X§ = null;
      
      protected var §+!e§:Boolean = false;
      
      protected var §2t§:Number = 0;
      
      public function StateEpisodeSelection(param1:§5l§, param2:§-!<§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_ChapterSelection[0]);
         this.§;!C§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4!l§.§,!8§.§&!L§(false);
         this.§@"#§();
      }
      
      protected function §@"#§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§>"2§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§;!Y§)
         {
            _loc3_ = §^!§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §&N§.§#Y§.§`"$§.userProgress.§>!1§(_loc3_) + "/" + §&N§.§#Y§.§`"$§.userProgress.§9!g§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §&N§.§#Y§.§`"$§.userProgress.§6!<§(_loc3_) + "/" + §&N§.§#Y§.§`"$§.userProgress.§[N§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §&N§.§#Y§.§`"$§.userProgress.§'"#§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §;!C§() : void
      {
         var _loc3_:§>"2§ = null;
         this.§>N§ = §!^§.getItemByName("Container_ChapterSelection") as §5" §;
         this.§;!Y§ = [];
         this.§2`§ = [];
         var _loc1_:Number = 0;
         this.§]"#§ = new Sprite();
         this.§]"#§.y = §&N§.§3!O§ / 2;
         this.§0!W§ = §&N§.§,!o§ / 2;
         this.§]"#§.x = this.§0!W§;
         this.§>N§.mClip.addChild(this.§]"#§);
         var _loc2_:int = 0;
         while(_loc2_ < §^!§.getEpisodeCount())
         {
            _loc3_ = §^!§.getEpisode(_loc2_);
            if(!_loc3_.§+!W§)
            {
               _loc1_ = this.§,^§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§;!E§(_loc1_);
         this.§@@§();
      }
      
      protected function §;!E§(param1:Number) : void
      {
         param1 = this.§,^§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§,^§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §@@§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§;!Y§.length)
         {
            _loc3_ = new §^1§.§+!I§("Button_Dot")();
            if(_loc2_ == this.§4U§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §&N§.§,!o§ / 2 + _loc1_ - this.§;!Y§.length * _loc3_.width / 2;
            _loc3_.y = (§!^§.getItemByName("Button_Next") as §?v§).y - _loc3_.height / 2;
            this.§>N§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§2`§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§9?§);
            _loc2_++;
         }
         _loc1_ = this.§;!Y§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§!^§.getItemByName("Button_Next") as §?v§).x = §&N§.§,!o§ / 2;
         (§!^§.getItemByName("Button_Prev") as §?v§).x = §&N§.§,!o§ / 2;
         (§!^§.getItemByName("Button_Next") as §?v§).x = (§!^§.getItemByName("Button_Next") as §?v§).x + (_loc1_ + 10);
         (§!^§.getItemByName("Button_Prev") as §?v§).x = (§!^§.getItemByName("Button_Prev") as §?v§).x - (_loc1_ + 10);
      }
      
      protected function §,^§(param1:String, param2:Number, param3:§>"2§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §^1§.§+!I§(param1)()).x = param2;
         this.§]"#§.addChild(_loc4_);
         this.§;!Y§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§>!w§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §&N§.§#Y§.§`"$§.userProgress.§6!<§(param3) + "/" + §&N§.§#Y§.§`"$§.userProgress.§[N§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §&N§.§#Y§.§`"$§.userProgress.§'"#§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §&N§.§#Y§.§`"$§.userProgress.§>!1§(param3) + "/" + §&N§.§#Y§.§`"$§.userProgress.§9!g§(param3);
            }
         }
         return param2;
      }
      
      private function §9?§(param1:MouseEvent) : void
      {
         if(!this.§+!e§)
         {
            this.§ !3§(this.§2`§.indexOf(param1.target));
         }
      }
      
      protected function §>!w§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§+!e§)
         {
            _loc2_ = this.§;!Y§.indexOf(param1.currentTarget);
            if(this.§4U§ != _loc2_)
            {
               this.§ !3§(_loc2_);
            }
            else if(_loc2_ < §^!§.getEpisodeCount())
            {
               §^!§.selectEpisode(_loc2_);
               §8=§(§?E§.§]O§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§ "-§();
         this.§='§();
      }
      
      protected function §='§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§;!Y§.length)
         {
            _loc2_ = this.§]"#§.x + this.§;!Y§[_loc1_].x - §&N§.§,!o§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§;!Y§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§;!Y§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§;!Y§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§;!Y§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function § "-§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§2`§.length)
         {
            if(-this.§]"#§.x + 800 >= this.§;!Y§[_loc1_].x && -this.§2t§ < this.§;!Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2`§.length)
               {
                  this.§2`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2`§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§]"#§.x + 800 <= this.§;!Y§[_loc1_].x && -this.§2t§ > this.§;!Y§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§2`§.length)
               {
                  this.§2`§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§2`§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§2t§ = this.§]"#§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §4!l§.§,!8§.clearLevel();
         this.§#"-§();
      }
      
      protected function §#"-§() : void
      {
         (§!^§.getItemByName("Button_Back") as §?v§).setComponentVisualState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "BACK":
               §1!i§.§+!Y§("Menu_Back");
               §8=§(§+8§.§]O§);
               break;
            case "PREV":
               §1!i§.§+!Y§("Menu_Confirm");
               if(!this.§+!e§)
               {
                  --this.§4U§;
                  this.§ !3§(this.§4U§);
                  break;
               }
               break;
            case "NEXT":
               §1!i§.§+!Y§("Menu_Confirm");
               if(!this.§+!e§)
               {
                  ++this.§4U§;
                  this.§ !3§(this.§4U§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §1!i§.§+!Y§("Menu_Confirm");
               §&N§.§#Y§.§&<§();
         }
      }
      
      protected function § !3§(param1:int) : void
      {
         this.§+!e§ = true;
         if(param1 > this.§;!Y§.length - 1)
         {
            param1 = this.§;!Y§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§4U§ = param1;
         var _loc2_:Number = -this.§;!Y§[param1].x + this.§0!W§;
         var _loc3_:Number = this.§]"#§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §#[§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§1!4§ != null)
         {
            this.§1!4§.stop();
         }
         this.§1!4§ = §`!F§.§=J§.§-r§(this.§]"#§,{"x":_loc2_},null,_loc4_,§'i§.easeOut);
         this.§1!4§.onComplete = this.§5!G§;
         this.§1!4§.play();
      }
      
      protected function §5!G§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2`§.length)
         {
            if(_loc1_ == this.§4U§)
            {
               this.§2`§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§2`§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§+!e§ = false;
      }
   }
}
