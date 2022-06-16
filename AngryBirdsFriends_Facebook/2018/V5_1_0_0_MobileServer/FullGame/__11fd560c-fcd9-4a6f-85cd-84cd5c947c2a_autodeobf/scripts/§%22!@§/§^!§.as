package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §##C§.§'!'§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §<h§.§[#K§;
   import §@!M§.§!"p§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §^!§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      protected static const §`!P§:Number = 0.5;
       
      
      protected var § !&§:Sprite;
      
      protected var § #h§:§[#K§;
      
      protected var §?T§:Array;
      
      protected var §=#@§:Array;
      
      protected var §8"D§:int = 0;
      
      protected var §"!I§:Number = 0;
      
      protected var §+! §:Number = 0;
      
      protected var §>s§:§4[§ = null;
      
      protected var §<#R§:Boolean = false;
      
      protected var §%#§:Number = 0;
      
      public function §^!§(param1:§8=§, param2:§""C§, param3:Boolean, param4:String = "ChapterSelectionState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_ChapterSelection[0]);
         this.§`#U§();
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3#U§.§#$4§.§;"?§(false);
         this.§2s§();
      }
      
      protected function §2s§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§"m§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§?T§)
         {
            _loc3_ = mLevelManager.getEpisode(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§1n§(_loc3_) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§2"9§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      protected function §`#U§() : void
      {
         var _loc3_:§"m§ = null;
         this.§ #h§ = §`!H§.getItemByName("Container_ChapterSelection") as §[#K§;
         this.§?T§ = [];
         this.§=#@§ = [];
         var _loc1_:Number = 0;
         this.§ !&§ = new Sprite();
         this.§ !&§.y = AngryBirdsBase.screenHeight / 2;
         this.§"!I§ = AngryBirdsBase.screenWidth / 2;
         this.§ !&§.x = this.§"!I§;
         this.§ #h§.mClip.addChild(this.§ !&§);
         var _loc2_:int = 0;
         while(_loc2_ < mLevelManager.getEpisodeCount())
         {
            _loc3_ = mLevelManager.getEpisode(_loc2_);
            if(!_loc3_.§"!=§)
            {
               _loc1_ = this.§`q§(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_++;
         }
         this.§6"u§(_loc1_);
         this.§9!#§();
      }
      
      protected function §6"u§(param1:Number) : void
      {
         param1 = this.§`q§("MovieClip_Chapter_Selection_More_Coming",param1);
         param1 = this.§`q§("MovieClip_Chapter_Selection_Shop",param1);
      }
      
      protected function §9!#§() : void
      {
         var _loc3_:MovieClip = null;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.§?T§.length)
         {
            _loc3_ = new §!"f§.§##?§("Button_Dot")();
            if(_loc2_ == this.§8"D§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = AngryBirdsBase.screenWidth / 2 + _loc1_ - this.§?T§.length * _loc3_.width / 2;
            _loc3_.y = (§`!H§.getItemByName("Button_Next") as §>"0§).y - _loc3_.height / 2;
            this.§ #h§.mClip.addChild(_loc3_);
            _loc3_.buttonMode = true;
            this.§=#@§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.§`#8§);
            _loc2_++;
         }
         _loc1_ = this.§?T§.length * _loc3_.width / 2 + _loc3_.width * 1.5;
         (§`!H§.getItemByName("Button_Next") as §>"0§).x = AngryBirdsBase.screenWidth / 2;
         (§`!H§.getItemByName("Button_Prev") as §>"0§).x = AngryBirdsBase.screenWidth / 2;
         (§`!H§.getItemByName("Button_Next") as §>"0§).x = (§`!H§.getItemByName("Button_Next") as §>"0§).x + (_loc1_ + 10);
         (§`!H§.getItemByName("Button_Prev") as §>"0§).x = (§`!H§.getItemByName("Button_Prev") as §>"0§).x - (_loc1_ + 10);
      }
      
      protected function §`q§(param1:String, param2:Number, param3:§"m§ = null) : Number
      {
         var _loc4_:MovieClip;
         (_loc4_ = new §!"f§.§##?§(param1)()).x = param2;
         this.§ !&§.addChild(_loc4_);
         this.§?T§.push(_loc4_);
         param2 += _loc4_.width * 1.55;
         _loc4_.addEventListener(MouseEvent.CLICK,this.§`_§);
         _loc4_.buttonMode = true;
         if(param3)
         {
            if(_loc4_.Textfield_CollectedStars != null)
            {
               _loc4_.Textfield_CollectedStars.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§1n§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(param3);
            }
            if(_loc4_.Textfield_Score != null)
            {
               _loc4_.Textfield_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§2"9§(param3);
            }
            if(_loc4_.Textfield_ME_Score != null)
            {
               _loc4_.Textfield_ME_Score.text.text = AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(param3) + "/" + AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(param3);
            }
         }
         return param2;
      }
      
      private function §`#8§(param1:MouseEvent) : void
      {
         if(!this.§<#R§)
         {
            this.§]d§(this.§=#@§.indexOf(param1.target));
         }
      }
      
      protected function §`_§(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!this.§<#R§)
         {
            _loc2_ = this.§?T§.indexOf(param1.currentTarget);
            if(this.§8"D§ != _loc2_)
            {
               this.§]d§(_loc2_);
            }
            else if(_loc2_ < mLevelManager.getEpisodeCount())
            {
               mLevelManager.selectEpisode(_loc2_);
               §1"h§(§1S§.STATE_NAME);
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         this.§5"j§();
         this.§3$+§();
      }
      
      protected function §3$+§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§?T§.length)
         {
            _loc2_ = this.§ !&§.x + this.§?T§[_loc1_].x - AngryBirdsBase.screenWidth / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§?T§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§?T§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§?T§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§?T§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      protected function §5"j§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#@§.length)
         {
            if(-this.§ !&§.x + 800 >= this.§?T§[_loc1_].x && -this.§%#§ < this.§?T§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=#@§.length)
               {
                  this.§=#@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=#@§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§ !&§.x + 800 <= this.§?T§[_loc1_].x && -this.§%#§ > this.§?T§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§=#@§.length)
               {
                  this.§=#@§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§=#@§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§%#§ = this.§ !&§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §3#U§.§#$4§.clearLevel();
         this.§>#'§();
      }
      
      protected function §>#'§() : void
      {
         (§`!H§.getItemByName("Button_Back") as §>"0§).setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "BACK":
               §!"p§.playSound("Menu_Back",§!"p§.§+!;§);
               §1"h§(§!w§.STATE_NAME);
               break;
            case "PREV":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               if(!this.§<#R§)
               {
                  --this.§8"D§;
                  this.§]d§(this.§8"D§);
               }
               break;
            case "NEXT":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               if(!this.§<#R§)
               {
                  ++this.§8"D§;
                  this.§]d§(this.§8"D§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      protected function §]d§(param1:int) : void
      {
         this.§<#R§ = true;
         if(param1 > this.§?T§.length - 1)
         {
            param1 = this.§?T§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§8"D§ = param1;
         var _loc2_:Number = -this.§?T§[param1].x + this.§"!I§;
         var _loc3_:Number = this.§ !&§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §`!P§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§>s§ != null)
         {
            this.§>s§.stop();
         }
         this.§>s§ = §&"H§.§6!§.§6C§(this.§ !&§,{"x":_loc2_},null,_loc4_,§'!'§.easeOut);
         this.§>s§.onComplete = this.§6!S§;
         this.§>s§.play();
      }
      
      protected function §6!S§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=#@§.length)
         {
            if(_loc1_ == this.§8"D§)
            {
               this.§=#@§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§=#@§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§<#R§ = false;
      }
   }
}
