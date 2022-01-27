package §!X§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §#"_§.§,D§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§ "0§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §5+§ extends §@!?§
   {
      
      public static const §'#2§:String = "ChapterSelectionState";
      
      protected static const §'"d§:Number = 0.5;
       
      
      protected var §>"[§:Sprite;
      
      protected var §>"p§:§,m§;
      
      protected var §]"V§:Array;
      
      protected var §5"o§:Array;
      
      protected var §^"4§:int = 0;
      
      protected var §'#,§:Number = 0;
      
      protected var §%"u§:Number = 0;
      
      protected var §`!'§:§4!Q§ = null;
      
      protected var §8!q§:Boolean = false;
      
      protected var §<"-§:Number = 0;
      
      public function §5+§(param1:§7!m§, param2:§="B§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_ChapterSelection[0]);
         this.§2!U§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;!e§.§<x§.§5!y§(false);
         this.§"T§();
      }
      
      protected function §"T§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§ "0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]"V§)
         {
            _loc3_ = § !p§.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = §;"@§.singleton.dataModel.userProgress.§=!T§(_loc3_) + "/" + §;"@§.singleton.dataModel.userProgress.§@!0§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = §;"@§.singleton.dataModel.userProgress.§-""§(_loc3_) + "/" + §;"@§.singleton.dataModel.userProgress.§?"W§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = §;"@§.singleton.dataModel.userProgress.§["§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §2!U§() : void
      {
         var _loc3_:§ "0§ = null;
         this.§>"p§ = §>I§.getItemByName("Container_ChapterSelection") as §,m§;
         this.§]"V§ = [];
         this.§5"o§ = [];
         var _loc1_:Number = 0;
         this.§>"[§ = new Sprite();
         this.§>"[§.y = §;"@§.screenHeight / 2;
         this.§'#,§ = §;"@§.screenWidth / 2;
         this.§>"[§.x = this.§'#,§;
         this.§>"p§.mClip.addChild(this.§>"[§);
         var _loc2_:int = 0;
         while(_loc2_ < § !p§.getEpisodeCount())
         {
            _loc3_ = § !p§.getEpisode(_loc2_);
            if(!_loc3_.§8!Y§)
            {
               _loc1_ = this.§-"N§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§8!`§(_loc1_);
         this.§="@§();
      }
      
      protected function §8!`§(param1:Number) : void
      {
         param1 = this.§-"N§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§-"N§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §="@§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§]"V§.length)
         {
            _loc3_ = new §5"]§.§4!K§("Button_Dot")();
            if(_loc2_ == this.§^"4§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = §;"@§.screenWidth / 2 + _loc1_ - this.§]"V§.length * _loc3_.width / 2;
            _loc3_.y = (§>I§.getItemByName("Button_Next") as §2"8§).y - _loc3_.height / 2;
            this.§>"p§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§5"o§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§!0§);
            _loc2_++;
         }
         _loc1_ = this.§]"V§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§>I§.getItemByName("Button_Next") as §2"8§).x = §;"@§.screenWidth / 2;
         (§>I§.getItemByName("Button_Prev") as §2"8§).x = §;"@§.screenWidth / 2;
         (§>I§.getItemByName("Button_Next") as §2"8§).x = (§>I§.getItemByName("Button_Next") as §2"8§).x + (_loc1_ + 10);
         (§>I§.getItemByName("Button_Prev") as §2"8§).x = (§>I§.getItemByName("Button_Prev") as §2"8§).x - (_loc1_ + 10);
      }
      
      protected function §-"N§(param1:String, param2:Number, param3:§ "0§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §5"]§.§4!K§(param1)()).x = param2;
         this.§>"[§.addChild(_loc4_);
         this.§]"V§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§@!Q§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = §;"@§.singleton.dataModel.userProgress.§-""§(param3) + "/" + §;"@§.singleton.dataModel.userProgress.§?"W§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = §;"@§.singleton.dataModel.userProgress.§["§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = §;"@§.singleton.dataModel.userProgress.§=!T§(param3) + "/" + §;"@§.singleton.dataModel.userProgress.§@!0§(param3);
            }
         }
         return param2;
      }
      
      private function §!0§(param1:MouseEvent) : void
      {
         if(!this.§8!q§)
         {
            this.§^";§(this.§5"o§.indexOf(param1.target));
         }
      }
      
      protected function §@!Q§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§8!q§)
         {
            _loc2_ = this.§]"V§.indexOf(param1.currentTarget);
            if(this.§^"4§ != _loc2_)
            {
               this.§^";§(_loc2_);
            }
            else if(_loc2_ < § !p§.getEpisodeCount())
            {
               § !p§.selectEpisode(_loc2_);
               §0"B§(§,"p§.§'#2§);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.each();
         this.§,!1§();
      }
      
      protected function §,!1§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]"V§.length)
         {
            _loc2_ = this.§>"[§.x + this.§]"V§[_loc1_].x - §;"@§.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§]"V§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§]"V§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§]"V§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§]"V§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function each() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§5"o§.length)
         {
            if(-this.§>"[§.x + 800 >= this.§]"V§[_loc1_].x && -this.§<"-§ < this.§]"V§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5"o§.length)
               {
                  this.§5"o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5"o§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§>"[§.x + 800 <= this.§]"V§[_loc1_].x && -this.§<"-§ > this.§]"V§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§5"o§.length)
               {
                  this.§5"o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§5"o§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§<"-§ = this.§>"[§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §;!e§.§<x§.clearLevel();
         this.§2g§();
      }
      
      protected function §2g§() : void
      {
         (§>I§.getItemByName("Button_Back") as §2"8§).setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "BACK":
               §@§.§=Y§("Menu_Back");
               §0"B§(§'!X§.§'#2§);
               break;
            case "PREV":
               §@§.§=Y§("Menu_Confirm");
               if(!this.§8!q§)
               {
                  --this.§^"4§;
                  this.§^";§(this.§^"4§);
                  break;
               }
               break;
            case "NEXT":
               §@§.§=Y§("Menu_Confirm");
               if(!this.§8!q§)
               {
                  ++this.§^"4§;
                  this.§^";§(this.§^"4§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §@§.§=Y§("Menu_Confirm");
               §;"@§.singleton.§35§();
         }
      }
      
      protected function §^";§(param1:int) : void
      {
         this.§8!q§ = true;
         if(param1 > this.§]"V§.length - 1)
         {
            param1 = this.§]"V§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§^"4§ = param1;
         var _loc2_:Number = -this.§]"V§[param1].x + this.§'#,§;
         var _loc3_:Number = this.§>"[§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §'"d§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§`!'§ != null)
         {
            this.§`!'§.stop();
         }
         this.§`!'§ = §41§.§-G§.§&#'§(this.§>"[§,{"x":_loc2_},null,_loc4_,§,D§.easeOut);
         this.§`!'§.onComplete = this.§@"k§;
         this.§`!'§.play();
      }
      
      protected function §@"k§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§5"o§.length)
         {
            if(_loc1_ == this.§^"4§)
            {
               this.§5"o§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§5"o§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§8!q§ = false;
      }
   }
}
