package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§7"0§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §9!V§ extends §+d§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const § !p§:Number = 0.5;
       
      
      private var §0"X§:Sprite;
      
      private var §4W§:§0!Y§;
      
      private var §#"H§:Array;
      
      private var § "9§:Array;
      
      private var § u§:int = 0;
      
      private var § §:Number = 0;
      
      private var §%"0§:Number = 0;
      
      private var §[C§:Dictionary;
      
      private var §;"&§:Dictionary;
      
      private var §&!i§:§6!K§ = null;
      
      private var §<"0§:Boolean = false;
      
      private var §-^§:Number = 0;
      
      public function §9!V§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_ChapterSelection[0]);
         this.§>"9§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§3-§ = null;
         super.activate();
         §?l§.§'h§.§#"[§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§#"H§)
         {
            _loc3_ = LevelManager.§1!m§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]L§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§[!a§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§0!P§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §>"9§() : void
      {
         var _loc3_:§3-§ = null;
         var _loc4_:String = null;
         this.§4W§ = §2"@§.getItemByName("Container_ChapterSelection") as §0!Y§;
         this.§#"H§ = [];
         this.§ "9§ = [];
         var _loc1_:Number = 0;
         this.§0"X§ = new Sprite();
         this.§0"X§.y = AngryBirdsFP11.§?s§ / 2;
         this.§ § = AngryBirdsFP11.§'!m§ / 2;
         this.§0"X§.x = this.§ §;
         this.§4W§.mClip.addChild(this.§0"X§);
         this.§;"&§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§0"5§())
         {
            _loc3_ = LevelManager.§1!m§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§^!z§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§^!z§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§^!z§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§^!D§();
      }
      
      private function §^!D§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§[C§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§#"H§.length)
         {
            _loc1_ = §?q§.§ q§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§ u§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§'!m§ / 2 + _loc3_ - this.§#"H§.length * _loc2_.width / 2;
            _loc2_.y = (§2"@§.getItemByName("Button_Next") as §7"0§).y - _loc2_.height / 2;
            this.§4W§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§[C§[_loc2_] = _loc4_;
            this.§ "9§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§<!e§);
            _loc4_++;
         }
         _loc3_ = this.§#"H§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§2"@§.getItemByName("Button_Next") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
         (§2"@§.getItemByName("Button_Prev") as §7"0§).x = AngryBirdsFP11.§'!m§ / 2;
         (§2"@§.getItemByName("Button_Next") as §7"0§).x = (§2"@§.getItemByName("Button_Next") as §7"0§).x + (_loc3_ + 10);
         (§2"@§.getItemByName("Button_Prev") as §7"0§).x = (§2"@§.getItemByName("Button_Prev") as §7"0§).x - (_loc3_ + 10);
      }
      
      private function §^!z§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§3-§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§?q§.§?!`§(param1))
         {
            _loc4_ = LevelManager.§1!m§(param3);
            (_loc6_ = new (_loc5_ = §?q§.§ q§(param1))()).x = param2;
            this.§0"X§.addChild(_loc6_);
            this.§#"H§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§;"&§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§"!H§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§[!a§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§0!P§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §<!e§(param1:MouseEvent) : void
      {
         if(!this.§<"0§)
         {
            this.§2" §(this.§[C§[param1.target]);
         }
      }
      
      private function §"!H§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§<"0§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§ u§ != this.§;"&§[_loc2_])
            {
               this.§2" §(this.§;"&§[_loc2_]);
            }
            else if(this.§;"&§[_loc2_] < LevelManager.§0"5§())
            {
               LevelManager.§,m§ = this.§;"&§[_loc2_];
               mNextState = §9"@§.STATE_NAME;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5!>§();
         this.§&b§();
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      private function §&b§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#"H§.length)
         {
            _loc2_ = this.§0"X§.x + this.§#"H§[_loc1_].x - AngryBirdsFP11.§'!m§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§#"H§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§#"H§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§#"H§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§#"H§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §5!>§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§ "9§.length)
         {
            if(-this.§0"X§.x + 800 >= this.§#"H§[_loc1_].x && -this.§-^§ < this.§#"H§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§ "9§.length)
               {
                  this.§ "9§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§ "9§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§0"X§.x + 800 <= this.§#"H§[_loc1_].x && -this.§-^§ > this.§#"H§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§ "9§.length)
               {
                  this.§ "9§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§ "9§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§-^§ = this.§0"X§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §?l§.§'h§.clearLevel();
         (§2"@§.getItemByName("Button_Back") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "BACK":
               §@"M§.§3"C§("Menu_Back");
               mNextState = §5!+§.STATE_NAME;
               break;
            case "PREV":
               §@"M§.§3"C§("Menu_Confirm");
               if(!this.§<"0§)
               {
                  --this.§ u§;
                  this.§2" §(this.§ u§);
               }
               break;
            case "NEXT":
               §@"M§.§3"C§("Menu_Confirm");
               if(!this.§<"0§)
               {
                  ++this.§ u§;
                  this.§2" §(this.§ u§);
               }
               break;
            case "FULLSCREEN_BUTTON":
               §@"M§.§3"C§("Menu_Confirm");
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      private function §2" §(param1:int) : void
      {
         this.§<"0§ = true;
         if(param1 > this.§#"H§.length - 1)
         {
            param1 = this.§#"H§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§ u§ = param1;
         var _loc2_:Number = -this.§#"H§[param1].x + this.§ §;
         var _loc3_:Number = this.§0"X§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * § !p§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§&!i§ != null)
         {
            this.§&!i§.stop();
         }
         this.§&!i§ = §0W§.§&"5§.§]!r§(this.§0"X§,{"x":_loc2_},null,_loc4_,§0W§.§'I§);
         this.§&!i§.onComplete = this.§5!=§;
         this.§&!i§.play();
      }
      
      private function §5!=§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§ "9§.length)
         {
            if(_loc1_ == this.§ u§)
            {
               this.§ "9§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§ "9§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§<"0§ = false;
      }
   }
}
