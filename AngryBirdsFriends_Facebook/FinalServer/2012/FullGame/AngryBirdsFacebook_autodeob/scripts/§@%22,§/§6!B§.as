package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §6!B§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const §^W§:Number = 0.5;
       
      
      private var §>"1§:Sprite;
      
      private var §]y§:§?!j§;
      
      private var §7"E§:Array;
      
      private var §3!7§:Array;
      
      private var § !o§:int = 0;
      
      private var §#!A§:Number = 0;
      
      private var §>!7§:Number = 0;
      
      private var §#e§:Dictionary;
      
      private var §3!I§:Dictionary;
      
      private var §'!i§:§!"&§ = null;
      
      private var §?!=§:Boolean = false;
      
      private var §["$§:Number = 0;
      
      public function §6!B§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_ChapterSelection[0]);
         this.§0!O§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§=!-§ = null;
         super.activate();
         §&2§.§],§.§`!I§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§7"E§)
         {
            _loc3_ = LevelManager.§9"&§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§8!;§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§+"1§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9!C§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§!5§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§6;§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §0!O§() : void
      {
         var _loc3_:§=!-§ = null;
         var _loc4_:String = null;
         this.§]y§ = §2!K§.getItemByName("Container_ChapterSelection") as §?!j§;
         this.§7"E§ = [];
         this.§3!7§ = [];
         var _loc1_:Number = 0;
         this.§>"1§ = new Sprite();
         this.§>"1§.y = AngryBirdsFP11.§[!f§ / 2;
         this.§#!A§ = AngryBirdsFP11.§`",§ / 2;
         this.§>"1§.x = this.§#!A§;
         this.§]y§.mClip.addChild(this.§>"1§);
         this.§3!I§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§>!3§())
         {
            _loc3_ = LevelManager.§9"&§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§7v§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§7v§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§7v§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§5l§();
      }
      
      private function §5l§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§#e§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§7"E§.length)
         {
            _loc1_ = §>"5§.§6s§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§ !o§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§`",§ / 2 + _loc3_ - this.§7"E§.length * _loc2_.width / 2;
            _loc2_.y = (§2!K§.getItemByName("Button_Next") as §]!<§).y - _loc2_.height / 2;
            this.§]y§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§#e§[_loc2_] = _loc4_;
            this.§3!7§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§7"K§);
            _loc4_++;
         }
         _loc3_ = this.§7"E§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§2!K§.getItemByName("Button_Next") as §]!<§).x = AngryBirdsFP11.§`",§ / 2;
         (§2!K§.getItemByName("Button_Prev") as §]!<§).x = AngryBirdsFP11.§`",§ / 2;
         (§2!K§.getItemByName("Button_Next") as §]!<§).x = (§2!K§.getItemByName("Button_Next") as §]!<§).x + (_loc3_ + 10);
         (§2!K§.getItemByName("Button_Prev") as §]!<§).x = (§2!K§.getItemByName("Button_Prev") as §]!<§).x - (_loc3_ + 10);
      }
      
      private function §7v§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§=!-§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§>"5§.§0W§(param1))
         {
            _loc4_ = LevelManager.§9"&§(param3);
            (_loc6_ = new (_loc5_ = §>"5§.§6s§(param1))()).x = param2;
            this.§>"1§.addChild(_loc6_);
            this.§7"E§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§3!I§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§#g§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9!C§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§!5§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§6;§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§8!;§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§+"1§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §7"K§(param1:MouseEvent) : void
      {
         if(!this.§?!=§)
         {
            this.§'+§(this.§#e§[param1.target]);
         }
      }
      
      private function §#g§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§?!=§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§ !o§ != this.§3!I§[_loc2_])
            {
               this.§'+§(this.§3!I§[_loc2_]);
            }
            else if(this.§3!I§[_loc2_] < LevelManager.§>!3§())
            {
               LevelManager.§5"G§ = this.§3!I§[_loc2_];
               mNextState = §[2§.STATE_NAME;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§]7§();
         this.§<R§();
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      private function §<R§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§7"E§.length)
         {
            _loc2_ = this.§>"1§.x + this.§7"E§[_loc1_].x - AngryBirdsFP11.§`",§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§7"E§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§7"E§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§7"E§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§7"E§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §]7§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!7§.length)
         {
            if(-this.§>"1§.x + 800 >= this.§7"E§[_loc1_].x && -this.§["$§ < this.§7"E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3!7§.length)
               {
                  this.§3!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§3!7§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§>"1§.x + 800 <= this.§7"E§[_loc1_].x && -this.§["$§ > this.§7"E§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§3!7§.length)
               {
                  this.§3!7§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§3!7§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§["$§ = this.§>"1§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §&2§.§],§.clearLevel();
         (§2!K§.getItemByName("Button_Back") as §]!<§).setComponentVisualState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "BACK":
               §+m§.§]!N§("Menu_Back");
               mNextState = §5"7§.STATE_NAME;
               break;
            case "PREV":
               §+m§.§]!N§("Menu_Confirm");
               if(!this.§?!=§)
               {
                  --this.§ !o§;
                  this.§'+§(this.§ !o§);
                  break;
               }
               break;
            case "NEXT":
               §+m§.§]!N§("Menu_Confirm");
               if(!this.§?!=§)
               {
                  ++this.§ !o§;
                  this.§'+§(this.§ !o§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §+m§.§]!N§("Menu_Confirm");
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      private function §'+§(param1:int) : void
      {
         this.§?!=§ = true;
         if(param1 > this.§7"E§.length - 1)
         {
            param1 = this.§7"E§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§ !o§ = param1;
         var _loc2_:Number = -this.§7"E§[param1].x + this.§#!A§;
         var _loc3_:Number = this.§>"1§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §^W§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§'!i§ != null)
         {
            this.§'!i§.stop();
         }
         this.§'!i§ = §&p§.§1[§.§7!3§(this.§>"1§,{"x":_loc2_},null,_loc4_,§&p§.§get §);
         this.§'!i§.onComplete = this.§=!^§;
         this.§'!i§.play();
      }
      
      private function §=!^§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3!7§.length)
         {
            if(_loc1_ == this.§ !o§)
            {
               this.§3!7§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§3!7§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§?!=§ = false;
      }
   }
}
