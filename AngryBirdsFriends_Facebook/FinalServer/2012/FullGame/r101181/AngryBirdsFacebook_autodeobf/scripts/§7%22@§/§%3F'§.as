package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§08§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!A§.;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §?'§ extends §1-§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const §-!9§:Number = 0.5;
       
      
      private var §1!R§:Sprite;
      
      private var §]!d§:§08§;
      
      private var §1!O§:Array;
      
      private var §#o§:Array;
      
      private var §-a§:int = 0;
      
      private var §>y§:Number = 0;
      
      private var §^"7§:Number = 0;
      
      private var §&!8§:Dictionary;
      
      private var §<!&§:Dictionary;
      
      private var §@"0§:§"m§ = null;
      
      private var §3R§:Boolean = false;
      
      private var §^"%§:Number = 0;
      
      public function §?'§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_ChapterSelection[0]);
         this.§?4§();
      }
      
      override public function activate() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§>x§ = null;
         super.activate();
         §#6§.§6!z§.§3H§(false);
         var _loc1_:int = 0;
         for each(_loc2_ in this.§1!O§)
         {
            _loc3_ = LevelManager.§;X§(_loc1_);
            if(_loc2_.Textfield_ME_Score != null)
            {
               _loc2_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§7L§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc3_);
            }
            if(_loc2_.Textfield_CollectedStars != null)
            {
               _loc2_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9o§(_loc3_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc3_);
            }
            if(_loc2_.Textfield_Score != null)
            {
               _loc2_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§1!%§(_loc3_);
            }
            _loc1_++;
         }
      }
      
      private function §?4§() : void
      {
         var _loc3_:§>x§ = null;
         var _loc4_:String = null;
         this.§]!d§ = §6w§.getItemByName("Container_ChapterSelection") as §08§;
         this.§1!O§ = [];
         this.§#o§ = [];
         var _loc1_:Number = 0;
         this.§1!R§ = new Sprite();
         this.§1!R§.y = AngryBirdsFP11.§^!7§ / 2;
         this.§>y§ = AngryBirdsFP11.§=!u§ / 2;
         this.§1!R§.x = this.§>y§;
         this.§]!d§.mClip.addChild(this.§1!R§);
         this.§<!&§ = new Dictionary();
         var _loc2_:int = 0;
         while(_loc2_ < LevelManager.§@!N§())
         {
            _loc3_ = LevelManager.§;X§(_loc2_);
            _loc4_ = "MovieClip_" + _loc3_.menuImage;
            _loc1_ = this.§&!A§(_loc4_,_loc1_,_loc2_);
            _loc2_++;
         }
         _loc1_ = this.§&!A§("MovieClip_Chapter_Selection_More_Coming",_loc1_,_loc2_);
         _loc2_++;
         _loc1_ = this.§&!A§("MovieClip_Chapter_Selection_Shop",_loc1_,_loc2_);
         this.§^h§();
      }
      
      private function §^h§() : void
      {
         var _loc1_:Class = null;
         var _loc2_:MovieClip = null;
         var _loc3_:Number = 0;
         this.§&!8§ = new Dictionary();
         var _loc4_:int = 0;
         while(_loc4_ < this.§1!O§.length)
         {
            _loc1_ = §8B§.§6"C§("Button_Dot");
            _loc2_ = new _loc1_();
            if(_loc4_ == this.§-a§)
            {
               _loc2_.gotoAndStop("Selected");
            }
            else
            {
               _loc2_.gotoAndStop("UnSelected");
            }
            _loc2_.x = AngryBirdsFP11.§=!u§ / 2 + _loc3_ - this.§1!O§.length * _loc2_.width / 2;
            _loc2_.y = (§6w§.getItemByName("Button_Next") as §^!D§).y - _loc2_.height / 2;
            this.§]!d§.mClip.addChild(_loc2_);
            _loc2_.buttonMode = true;
            this.§&!8§[_loc2_] = _loc4_;
            this.§#o§.push(_loc2_);
            _loc3_ += _loc2_.width;
            _loc2_.addEventListener(MouseEvent.MOUSE_DOWN,this.§null §);
            _loc4_++;
         }
         _loc3_ = this.§1!O§.length * _loc2_.width / 2 + _loc2_.width * 1.5;
         (§6w§.getItemByName("Button_Next") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
         (§6w§.getItemByName("Button_Prev") as §^!D§).x = AngryBirdsFP11.§=!u§ / 2;
         (§6w§.getItemByName("Button_Next") as §^!D§).x = (§6w§.getItemByName("Button_Next") as §^!D§).x + (_loc3_ + 10);
         (§6w§.getItemByName("Button_Prev") as §^!D§).x = (§6w§.getItemByName("Button_Prev") as §^!D§).x - (_loc3_ + 10);
      }
      
      private function §&!A§(param1:String, param2:Number, param3:int) : Number
      {
         var _loc4_:§>x§ = null;
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         if(§8B§.§"5§(param1))
         {
            _loc4_ = LevelManager.§;X§(param3);
            (_loc6_ = new (_loc5_ = §8B§.§6"C§(param1))()).x = param2;
            this.§1!R§.addChild(_loc6_);
            this.§1!O§.push(_loc6_);
            param2 += _loc6_.width * 1.55;
            this.§<!&§[_loc6_] = param3;
            _loc6_.addEventListener(MouseEvent.CLICK,this.§"6§);
            _loc6_.buttonMode = true;
            if(_loc6_.Textfield_CollectedStars != null)
            {
               _loc6_.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§9o§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§`!g§(_loc4_);
            }
            if(_loc6_.Textfield_Score != null)
            {
               _loc6_.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§1!%§(_loc4_);
            }
            if(_loc6_.Textfield_ME_Score != null)
            {
               _loc6_.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§7L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§,!b§(_loc4_);
            }
         }
         return param2;
      }
      
      private function §null §(param1:MouseEvent) : void
      {
         if(!this.§3R§)
         {
            this.§@!b§(this.§&!8§[param1.target]);
         }
      }
      
      private function §"6§(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(!this.§3R§)
         {
            if(!(param1.currentTarget is MovieClip))
            {
               return;
            }
            _loc2_ = MovieClip(param1.currentTarget);
            if(this.§-a§ != this.§<!&§[_loc2_])
            {
               this.§@!b§(this.§<!&§[_loc2_]);
            }
            else if(this.§<!&§[_loc2_] < LevelManager.§@!N§())
            {
               LevelManager.§2?§ = this.§<!&§[_loc2_];
               mNextState = §8"D§.STATE_NAME;
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-"7§();
         this.§0c§();
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      private function §0c§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1!O§.length)
         {
            _loc2_ = this.§1!R§.x + this.§1!O§[_loc1_].x - AngryBirdsFP11.§=!u§ / 2;
            _loc2_ = Math.abs(_loc2_);
            _loc2_ *= 0.55;
            if(_loc2_ > 1000)
            {
               _loc2_ = 1000;
            }
            this.§1!O§[_loc1_].scaleX = 1.1 - _loc2_ / 1000;
            this.§1!O§[_loc1_].scaleY = 1.1 - _loc2_ / 1000;
            this.§1!O§[_loc1_].alpha = 1 - _loc2_ / 1000 * 1.5;
            this.§1!O§[_loc1_].y = _loc2_ / 1000 * -200;
            _loc1_++;
         }
      }
      
      private function §-"7§() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.§#o§.length)
         {
            if(-this.§1!R§.x + 800 >= this.§1!O§[_loc1_].x && -this.§^"%§ < this.§1!O§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#o§.length)
               {
                  this.§#o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#o§[_loc1_].gotoAndStop("Selected");
            }
            if(-this.§1!R§.x + 800 <= this.§1!O§[_loc1_].x && -this.§^"%§ > this.§1!O§[_loc1_].x)
            {
               _loc2_ = 0;
               while(_loc2_ < this.§#o§.length)
               {
                  this.§#o§[_loc2_].gotoAndStop("UnSelected");
                  _loc2_++;
               }
               this.§#o§[_loc1_].gotoAndStop("Selected");
            }
            _loc1_++;
         }
         this.§^"%§ = this.§1!R§.x;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §#6§.§6!z§.clearLevel();
         (§6w§.getItemByName("Button_Back") as §^!D§).setComponentVisualState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "BACK":
               §>!E§.§7N§("Menu_Back");
               mNextState = §#;§.STATE_NAME;
               break;
            case "PREV":
               §>!E§.§7N§("Menu_Confirm");
               if(!this.§3R§)
               {
                  --this.§-a§;
                  this.§@!b§(this.§-a§);
                  break;
               }
               break;
            case "NEXT":
               §>!E§.§7N§("Menu_Confirm");
               if(!this.§3R§)
               {
                  ++this.§-a§;
                  this.§@!b§(this.§-a§);
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               §>!E§.§7N§("Menu_Confirm");
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      private function §@!b§(param1:int) : void
      {
         this.§3R§ = true;
         if(param1 > this.§1!O§.length - 1)
         {
            param1 = this.§1!O§.length - 1;
         }
         else if(param1 < 0)
         {
            param1 = 0;
         }
         this.§-a§ = param1;
         var _loc2_:Number = -this.§1!O§[param1].x + this.§>y§;
         var _loc3_:Number = this.§1!R§.x - _loc2_;
         var _loc4_:Number;
         if((_loc4_ = (_loc4_ = (_loc4_ = Math.abs(_loc3_)) / 400) * §-!9§) > 1)
         {
            _loc4_ = 1;
         }
         if(this.§@"0§ != null)
         {
            this.§@"0§.stop();
         }
         this.§@"0§ = §>!+§.§;"§.§^!K§(this.§1!R§,{"x":_loc2_},null,_loc4_,§>!+§.§;U§);
         this.§@"0§.onComplete = this.§8"+§;
         this.§@"0§.play();
      }
      
      private function §8"+§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§#o§.length)
         {
            if(_loc1_ == this.§-a§)
            {
               this.§#o§[_loc1_].gotoAndStop("Selected");
            }
            else
            {
               this.§#o§[_loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
         this.§3R§ = false;
      }
   }
}
